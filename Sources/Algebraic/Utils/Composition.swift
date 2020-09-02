//
//  Composition.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 7/6/16.
//
//

import Foundation


// MARK: Functions
public func compose<a,b,c>(_ f: @escaping (b) -> (c), _ g: @escaping (a) -> (b) ) -> (a) -> (c) {
	return { f(g($0)) }
}

// MARK: n -> 1 -> 1
public func compose<a,b,c,d>(_ f: @escaping (c) -> (d), _ g: @escaping (a, b) -> (c) ) -> (a, b) -> (d) {
	return { f(g($0, $1)) }
}

public func compose<a,b,c,d, e>(_ f: @escaping (d) -> (e), _ g: @escaping (a, b, c) -> (d) ) -> (a, b, c) -> (e) {
	return { f(g($0, $1, $2)) }
}

public func compose<a,b,c,d,e,f>(_ f: @escaping (e) -> (f), _ g: @escaping (a, b, c, d) -> (e) ) -> (a, b, c, d) -> (f) {
	return { f(g($0, $1, $2, $3)) }
}

// MARK: Operator

precedencegroup CompositionPrecedence {
    associativity: right
    higherThan: MultiplicationPrecedence
}

infix operator <<<: CompositionPrecedence

public func <<< <a,b,c>(f: @escaping (b) -> (c), _ g: @escaping (a) -> (b) ) -> (a) -> (c) {
    return compose(f, g)
}

public func <<< <a,b,c,d>(_ f: @escaping (c) -> (d), _ g: @escaping (a, b) -> (c) ) -> (a, b) -> (d) {
	return compose(f, g)
}

public func <<< <a,b,c,d, e>(_ f: @escaping (d) -> (e), _ g: @escaping (a, b, c) -> (d) ) -> (a, b, c) -> (e) {
	return compose(f, g)
}

public func <<< <a,b,c,d,e,f>(_ f: @escaping (e) -> (f), _ g: @escaping (a, b, c, d) -> (e) ) -> (a, b, c, d) -> (f) {
	return compose(f, g)
}



infix operator >>>: CompositionPrecedence

public func >>> <a,b,c>(f: @escaping (a) -> (b), _ g: @escaping (b) -> (c) ) -> (a) -> (c) {
    return compose(g, f)
}

public func >>> <a,b,c,d>(_ g: @escaping (a, b) -> (c), _ f: @escaping (c) -> (d) ) -> (a, b) -> (d) {
	return compose(f, g)
}

public func >>> <a,b,c,d, e>(_ g: @escaping (a, b, c) -> (d), _ f: @escaping (d) -> (e) ) -> (a, b, c) -> (e) {
	return compose(f, g)
}

public func >>> <a,b,c,d,e,f>(_ g: @escaping (a, b, c, d) -> (e), _ f: @escaping (e) -> (f) ) -> (a, b, c, d) -> (f) {
	return compose(f, g)
}

