import Foundation

internal struct BranchValidator {
	public enum BranchError: LocalizedError {
		case wrongFormat

		var errorDescription: String? {
			switch self {
			case .wrongFormat:
				return "The branch name does not has the standard convention"
			}
		}

		 var recoverySuggestion: String? {
			switch self {
			case .wrongFormat:
				return "Use the standard convention"
			}
		}
	}

	func isValidBranch(_ name: String) throws {
		print(name)
		
		if ["master", "develop"].contains(name) { return }
		let splitted = name.split(separator: "-")
		guard splitted.count == 2 else { throw BranchError.wrongFormat }
	}

	func extractTicketId(_ name: String) throws -> String {
		if ["master", "develop"].contains(name) { return name }
		try isValidBranch(name)
		let splitted = name.split(separator: "/")
		return String(splitted[1])
	}
}
