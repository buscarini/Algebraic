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

extension Ordering: Monoidal {
	public static var monoid: Monoid<Ordering> {
		Monoid(
			empty: .eq,
			combine: { left, right in
				switch (left, right) {
					case (.lt, _): return .lt
					case (.gt, _): return .gt
					case (.eq, _): return right
				}
			}
		)
	}
}

extension Ordering {
	public var inverse: Ordering {
		switch self {
			case .lt:
				return .gt
			case .gt:
				return .lt
			case .eq:
				return .eq
		}
	}
}

public typealias Comparator<A> = FuncM<(A, A), Ordering>

extension Comparable {
	public static func comparator() -> Comparator<Self> {
		Comparator.init { lhs, rhs in
			lhs < rhs ? .lt : lhs > rhs ? .gt : .eq
		}
	}
}

extension FuncM where M == Ordering {
	public func reversed() -> FuncM {
		FuncM { input in
			self.value(input).inverse
		}
	}
}

extension Ordering {
	public static func from<T: Comparable>(
		_ left: T,
		_ right: T
	) -> Ordering {
		if left < right {
			return .lt
		}
		else if right < left {
			return .gt
		}
		else {
			return .eq
		}
	}
	
	public var isAscending: Bool {
		switch self {
		case .lt:
			return true
		case .eq:
			return true
		case .gt:
			return false
		}
	}
}
