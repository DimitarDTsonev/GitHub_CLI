struct ListStarredReposCommand {
    static func execute(username: String) async {
        do {
            let starredRepos = try await GitHubAPI.shared.fetchStarredRepositories(username: username)
            
            if starredRepos.isEmpty {
                print("ℹ️ This user hasn't starred any repositories.")
            } else {
                print("🌟 Starred repositories of \(username):")
                starredRepos.forEach { print("⭐ \($0.name)") }
            }
        } catch {
            print("❌ Error: \(error.localizedDescription)")
        }
    }
}