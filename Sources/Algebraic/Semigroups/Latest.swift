import Foundation

extension Date {
	public static var latest: Semigroup<Date> {
		Semigroup.max
	}
}
