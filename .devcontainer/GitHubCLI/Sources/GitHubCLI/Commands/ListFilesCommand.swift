struct ListFilesCommand {
    static func execute(username: String, repo: String) async {
        do {
            let files = try await GitHubAPI.shared.fetchRepositoryFiles(username: username, repo: repo)
            files.forEach { print("\($0.name) (\($0.type))") }
        } catch {
            print("❌ Error fetching files: \(error.localizedDescription)")
        }
    }
}