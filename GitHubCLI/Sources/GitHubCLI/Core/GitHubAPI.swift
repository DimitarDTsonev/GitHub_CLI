import Foundation

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

actor GitHubAPI: GitHubService {
    static let shared = GitHubAPI()
    private let baseURL = "https://api.github.com"

    private init() {}

    func fetchUser(username: String) async throws -> GitHubUser {
        return try await fetch(endpoint: "users/\(username)")
    }

    func fetchRepositories(username: String) async throws -> [GitHubRepository] {
        return try await fetch(endpoint: "users/\(username)/repos")
    }

    func fetchRepositoryFiles(username: String, repo: String) async throws -> [GitHubFile] {
        return try await fetch(endpoint: "repos/\(username)/\(repo)/contents")
    }

    func fetchStarredRepositories(username: String) async throws -> [GitHubRepository] {
        return try await fetch(endpoint: "users/\(username)/starred")
    }

    func fetchFileContext(username: String, repo: String, file: String) async throws -> GitHubFile {
        let endpoint = "repos/\(username)/\(repo)/contents/\(file)"
        let fileData: GitHubFile = try await fetch(endpoint: endpoint)

        return fileData
    }

    private func fetch<T: Decodable>(endpoint: String) async throws -> T {
        guard let url = URL(string: "\(baseURL)/\(endpoint)") else {
            throw APIError.invalidURL
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw APIError.invalidResponse
        }

        switch httpResponse.statusCode {
        case 200:
            return try JSONDecoder().decode(T.self, from: data)
        case 400: throw APIError.badRequest
        case 401: throw APIError.unauthorized
        case 403: throw APIError.forbidden
        case 404: throw APIError.notFound
        case 429: throw APIError.tooManyRequests
        case 500: throw APIError.serverError
        default:
            throw APIError.unexpectedStatus(httpResponse.statusCode)
        }
    }

    func fetchTotalStars(username: String) async throws -> Int {
        let repos = try await fetchRepositories(username: username)
        return repos.reduce(0) { $0 + $1.stargazersCount }
    }
}