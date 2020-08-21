internal protocol BranchValidator {
	func isValidBranch(_ name: String) throws -> Bool
}
