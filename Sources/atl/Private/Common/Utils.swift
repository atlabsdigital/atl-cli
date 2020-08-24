import Foundation

internal struct Utils {
	struct Git: GitActions {
		var currentBranch: String {
			return launch(
				command: "git",
				arguments: "rev-parse", "--abbrev-ref", "HEAD")
				.trimmingCharacters(
					in: .whitespacesAndNewlines
			)
		}

		@discardableResult
		func add() -> String{
			return launch(command: "git", arguments: "add", ".")
		}

		@discardableResult
		func commit(branch: String, message: String) -> String {
			return launch(command: "git", arguments: "commit", "-m", message)
		}

		@discardableResult
		func push(branch: String) -> String {
			return launch(command: "git", arguments: "push", "origin", branch)
		}
	}
}
