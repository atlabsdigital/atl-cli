protocol GitActions {
	var currentBranch: String { get }

	@discardableResult
	func add() -> String

	@discardableResult
	func commit(branch: String, message: String) -> String

	@discardableResult
	func push(branch: String) -> String
}
