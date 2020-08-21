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

		static func add() -> String{
			return launch(command: "git", arguments: "add", ".")

		}

		static func commit(branch: String = Git.currentBranch, message: String) -> String {
			return launch(command: "git", arguments: "commit", "-m", message)
		}
	}
}
