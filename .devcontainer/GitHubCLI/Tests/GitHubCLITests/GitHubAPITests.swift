import XCTest
@testable import GitHubCLI

final class GitHubAPITests: XCTestCase {
    
    func testFetchUser() async throws {
        let user = try await GitHubAPI.shared.fetchUser(username: "DimitarDTsonev")
        XCTAssertEqual(user.login, "DimitarDTsonev")
        XCTAssertGreaterThan(user.followers, 0)
    }

    func testFetchRepositories() async throws {
        let repos = try await GitHubAPI.shared.fetchRepositories(username: "DimitarDTsonev")
        XCTAssertNotNil(repos)
        XCTAssertGreaterThan(repos.count, 0)
    }

    func testFetchRepositoryFiles() async throws {
        let files = try await GitHubAPI.shared.fetchRepositoryFiles(username: "DimitarDTsonev", repo: "2048")
        XCTAssertNotNil(files)
    }

    func testFetchStarredRepositories() async throws {
        let starred = try await GitHubAPI.shared.fetchStarredRepositories(username: "DimitarDTsonev")
        XCTAssertNotNil(starred)
    }
}