import Foundation

public func transform<M1: Copointed, M2: Pointed>(_ a: M1) -> M2 where M1.A == M2.A {
	return M2(a.value)
}
