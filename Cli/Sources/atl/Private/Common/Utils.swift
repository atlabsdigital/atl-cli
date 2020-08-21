import Foundation

internal struct Utils {
	struct Git {
		static var currentBranch: String {
			return launch(
				command: "git",
				arguments: "describe", "--contains", "--all", "HEAD")
				.trimmingCharacters(
					in: .whitespacesAndNewlines
			)
		}

		@discardableResult
		static func add() -> String{
			return launch(command: "git", arguments: "add", ".")

		}

		@discardableResult
		static func commit(branch: String = Git.currentBranch, message: String) -> String {
			return launch(command: "git", arguments: "commit", "-m", message)
		}

		@discardableResult
		static func push(branch: String = Git.currentBranch) -> String {
			return launch(command: "git", arguments: "push", "origin", branch)
		}
	}
}
