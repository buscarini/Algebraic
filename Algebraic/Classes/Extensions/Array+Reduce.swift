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
		var results = Array<Element?>(repeating: nil, count: 2)
		
		DispatchQueue.concurrentPerform(iterations: 2) { i in
            let range = i == 0 ? startIndex..<halfWay : halfWay..<endIndex
            results[i] = self[range].reduced(m)
        }
        return results.lazy.map { $0! }.reduced(m)
	}
}

extension Array {
	public func parallelFoldMap<M>(
		_ f: (Element) -> M,
		_ m: Monoid<M>
	) -> M {
		guard count > 2 else { return self.foldMap(f, m) }
		
		let halfWay = count / 2
		var results = [ m.empty, m.empty ]
		
		DispatchQueue.concurrentPerform(iterations: 2) { i in
            let range = i == 0 ? startIndex..<halfWay : halfWay..<endIndex
			
            results[i] = self[range].foldMap(f, m)
        }
		
        return results.lazy.map { $0 }.reduced(m)
    }
}
