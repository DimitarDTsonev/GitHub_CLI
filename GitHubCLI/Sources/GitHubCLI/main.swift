import Foundation

print("\n👋 Welcome to GitHubCLI! Type 'help' for available commands.")

while true {
    print("\n> ", terminator: "")
    guard let input = readLine()?.split(separator: " ").map(String.init) else { continue }

    switch input.first {
    case "search-user":
        if input.count > 1 { await SearchUserCommand.execute(username: input[1]) }
        else { print("❌ Usage: search-user <username>") }
    case "list-repos":
        if input.count > 1 { await ListRepositoriesCommand.execute(username: input[1]) }
        else { print("❌ Usage: list-repos <username>") }
    case "list-files":
        if input.count > 2 { await ListFilesCommand.execute(username: input[1], repo: input[2]) }
        else { print("❌ Usage: list-files <username> <repo>") }
    case "sort-repos":
        if input.count > 1 { await SortRepositoriesCommand.execute(username: input[1]) }
        else { print("❌ Usage: sort-repos <username>") }
    case "list-starred":
        if input.count > 1 { await ListStarredReposCommand.execute(username: input[1]) }
        else { print("❌ Usage: list-starred <username>") }
    case "view-file":
        if input.count > 3 { await ViewFileCommand.execute(username: input[1], repo: input[2], filePath: input[3]) }
        else { print("❌ Usage: view-file <username> <repo> <file_path>") }
    case "help":
        HelpCommand.execute()
    case "exit":
        ExitCommand.execute()
    default:
        print("Unknown command. Type 'help' for available commands.")
    }
}