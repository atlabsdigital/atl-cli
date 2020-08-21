import ArgumentParser

struct Main: ParsableCommand {
	static let configuration = CommandConfiguration(
		commandName: "atl",
		abstract: "nc is a tool to automate the commits and set the proper format base on atlabs definition",
		subcommands: [NC.self]
	)
}

Main.main()
