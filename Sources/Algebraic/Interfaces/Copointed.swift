import Foundation

public protocol Copointed {
	associatedtype A
	
	var value: A { get } 
}
