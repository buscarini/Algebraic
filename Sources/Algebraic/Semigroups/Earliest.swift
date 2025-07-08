import Foundation

extension Date {
	public static var earliest: Semigroup<Date> {
		Semigroup.min
	}
}
