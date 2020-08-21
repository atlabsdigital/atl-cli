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
	}
}
