struct Strings {
    static let userNotFound = "❌ Error: User not found or invalid request."
    static let noRepositories = "ℹ️ No repositories found."
    static let starredReposEmpty = "ℹ️ This user hasn't starred any repositories."

    static func repositoriesList(_ username: String, _ repos: [GitHubRepository]) -> String {
        let repoList = repos.map { "🔹 \($0.name)" }.joined(separator: "\n")
        return "📂 Repositories of \(username):\n\(repoList)"
    }
}
