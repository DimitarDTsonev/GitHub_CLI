import Foundation

struct SortRepositoriesCommand {
    static func execute(username: String) async {
        await ListRepositoriesCommand.execute(username: username, sorted: true)
    }
}