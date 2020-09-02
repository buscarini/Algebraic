//
//  Array+Reduce.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//
//

import Foundation

extension Array {
	public func parallelReduced(
		_ m: Monoid<Element>
	) -> Element {
		guard count > 2 else { return self.reduced(m) }
		
		let halfWay = count / 2
		
		var left = m.empty
		var right = m.empty
		
		DispatchQueue.concurrentPerform(iterations: 2) { i in
			let range = i == 0 ? startIndex..<halfWay : halfWay..<endIndex
			let value = self[range].reduced(m)
			
			if i == 0 {
				left = value
			}
			else {
				right = value
			}
		}
		
		return [left, right].lazy.map { $0! }.reduced(m)
	}
}

extension Array {
	public func parallelFoldMap<M>(
		_ f: (Element) -> M,
		_ m: Monoid<M>
	) -> M {
		guard count > 2 else { return self.foldMap(f, m) }
		
		let halfWay = count / 2
		
		var left = m.empty
		var right = m.empty
		
		DispatchQueue.concurrentPerform(iterations: 2) { i in
			let range = i == 0 ? startIndex ..< halfWay : halfWay ..< endIndex
			
			let value = self[range].foldMap(f, m)
			
			if i == 0 {
				left = value
			}
			else {
				right = value
			}
		}
		
		return [left, right].lazy.map { $0 }.reduced(m)
	}
}
