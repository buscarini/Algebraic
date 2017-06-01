//
//  Array+Reduce.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//
//

import Foundation

extension Array where Iterator.Element: Monoid {
	public func parallelReduced() -> Iterator.Element {
		guard count > 2 else { return self.reduced() }
		
		let halfWay = count / 2
		var results = Array<Element?>(repeating: nil, count: 2)
		
		DispatchQueue.concurrentPerform(iterations: 2) { i in
            let range = i == 0 ? startIndex..<halfWay : halfWay..<endIndex
            results[i] = self[range].reduced()
        }
        return results.lazy.map { $0! }.reduced()
	}
}

extension Array {
	public func parallelFoldMap<M: Monoid>(_ f: (Iterator.Element) -> M) -> M {
	
		guard count > 2 else { return self.foldMap(f) }
		
		let halfWay = count / 2
		var results = [ M.empty, M.empty ]
		
		DispatchQueue.concurrentPerform(iterations: 2) { i in
            let range = i == 0 ? startIndex..<halfWay : halfWay..<endIndex
			
            results[i] = self[range].foldMap(f)
        }
		
        return results.lazy.map { $0 }.reduced()
    }
}
