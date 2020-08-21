import ArgumentParser

struct Main: ParsableCommand {
	static let configuration = CommandConfiguration(
		commandName: "atl",
		abstract: "atl is a set of tools to automate the work and make the job more easy 😃!",
		subcommands: [NC.self]
	)
}

Main.main()
