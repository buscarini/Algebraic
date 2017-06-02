//
//  Ordering.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/17.
//
//

import Foundation

public enum Ordering {
	case lt
	case eq
	case gt
}

extension Ordering: Monoid {
	public static let empty = Ordering.eq
	
	public static func <>(left: Ordering, right: Ordering) -> Ordering {
		switch (left, right) {
			case (.lt, _): return .lt
			case (.gt, _): return .gt
			case (.eq, _): return right
		}
	}
}

public typealias Comparator<A> = FuncM<(A, A), Ordering>

extension Comparable {
	public static func comparator() -> Comparator<Self> {
		return Comparator.init { lhs, rhs in
			lhs < rhs ? .lt : lhs > rhs ? .gt : .eq
		}
	}
}

