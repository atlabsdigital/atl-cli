internal struct DefaultBranchValidator: BranchValidator {

	public enum BranchError: Error {
		case wrongFormat
	}

	func isValidBranch(_ name: String) throws -> Bool {
		if ["master", "develop"].contains(name) { return true }
		let splitted = name.split(separator: "-")
		guard splitted.count == 2 else { throw BranchError.wrongFormat }
		return true

	}
}
