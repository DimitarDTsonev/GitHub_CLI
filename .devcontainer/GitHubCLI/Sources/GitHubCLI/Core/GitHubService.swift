import Foundation

protocol GitHubService {
    func fetchUser(username: String) async throws -> GitHubUser
    func fetchRepositories(username: String) async throws -> [GitHubRepository]
    func fetchRepositoryFiles(username: String, repo: String) async throws -> [GitHubFile]
    func fetchStarredRepositories(username: String) async throws -> [GitHubRepository]
    func fetchFileContext(username: String, repo: String, file: String) async throws -> GitHubFile
}
