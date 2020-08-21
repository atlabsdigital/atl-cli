import ArgumentParser

public struct NC: ParsableCommand {

	// MARK: - Configuration
	public static let configuration = CommandConfiguration(
		abstract: "Automate the commits base on user inputs"
	)

	// MARK: - Arguments
	@Argument(help: "Message of the commit")
	private var message: String

	@Flag(name: .long, help: "Show extra logging for debugging purposes")
	private var verbose: Bool

	public func run() throws {
		// TODO: Add verbose options
		if verbose { }
		
	}

	public init() { }
}


