internal protocol BranchValidator {
	func isValidBranch(_ name: String) throws
	func extractTicketId(_ name: String) throws -> String
}
