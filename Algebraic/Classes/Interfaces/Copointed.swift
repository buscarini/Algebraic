//
//  Copointed.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 31/5/17.
//
//

import Foundation

public protocol Copointed {
	associatedtype A
	
	var value: A { get } 
}
