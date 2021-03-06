import ArgumentParser
import Foundation

public struct NC: ParsableCommand {
	public enum CommitType: String, ExpressibleByArgument {
		case build, chore, ci, docs, feat, fix, improvement, perf, refactor, revert, test

		public init?(argument: String) {
			self.init(rawValue: argument)
		}
	}

	// MARK: - Configuration
	public static let configuration = CommandConfiguration(
		abstract: "Automate the commits with the right format"
	)

	// MARK: - Arguments
	@Argument(help: "Type of commit")
	private var type: CommitType

	@Argument(help: "Message of the commit")
	private var message: String

	@Flag(name: .long, help: "Show extra logging for debugging purposes")
	private var verbose: Bool

	// MARK: - Properties
	private static var branchValidator = BranchValidator()
	private static var gitActions: GitActions = Utils.Git()

	// MARK: - Init
	public init() { }

	// MARK: - Public api
	public func run() throws {
		// TODO: Add verbose options
		if verbose { }
		let branch = NC.gitActions.currentBranch
		try NC.branchValidator.isValidBranch(branch)
		let ticketId = try NC.branchValidator.extractTicketId(branch)
		NC.gitActions.add()
		NC.gitActions.commit(branch: branch, message: "\"\(type.rawValue): \(ticketId) - \(message)\"")
		NC.gitActions.push(branch: branch)
	}
}
