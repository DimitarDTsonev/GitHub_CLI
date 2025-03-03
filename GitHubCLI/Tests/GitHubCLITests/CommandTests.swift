import XCTest
@testable import GitHubCLI

final class CommandTests: XCTestCase {

    func testSearchUserCommand() async throws {
        let user = try await GitHubAPI.shared.fetchUser(username: "DimitarDTsonev")

        XCTAssertNotNil(user, "❌ User should not be nil")
        XCTAssertEqual(user.login, "DimitarDTsonev", "❌ Unexpected username")
    }

    func testListRepositoriesCommand() async throws {
        let repos = try await GitHubAPI.shared.fetchRepositories(username: "DimitarDTsonev")

        XCTAssertFalse(repos.isEmpty, "❌ User should have repositories")
        XCTAssertGreaterThan(repos.first!.stargazersCount, 0, "❌ First repo should have at least 1 star")
    }

    func testListFilesCommand() async throws {
        let files = try await GitHubAPI.shared.fetchRepositoryFiles(username: "DimitarDTsonev", repo: "2048")

        XCTAssertFalse(files.isEmpty, "❌ Repo should contain files")
        XCTAssertNotNil(files.first?.name, "❌ First file should have a name")
    }

    func testSortReposCommand() async throws {
        let repos = try await GitHubAPI.shared.fetchRepositories(username: "DimitarDTsonev")
        let sortedRepos = repos.sorted { $0.stargazersCount > $1.stargazersCount }

        guard let firstRepo = sortedRepos.first else {
            XCTFail("❌ No repositories found for user")
            return
        }

        XCTAssertEqual(firstRepo.name, "LeetCode_Tasks", "❌ First repository should be 'LeetCode_Tasks'")
    }

    func testListStarredRepositoriesCommand() async throws {
        let starredRepos = try await GitHubAPI.shared.fetchStarredRepositories(username: "DimitarDTsonev")

        XCTAssertFalse(starredRepos.isEmpty, "❌ User should have starred repositories")
        XCTAssertGreaterThan(starredRepos.first!.stargazersCount, 0, "❌ First starred repo should have stars")
    }

    func testTotalStarsCommand() async throws {
        let totalStars = try await GitHubAPI.shared.fetchTotalStars(username: "DimitarDTsonev")

        XCTAssertGreaterThanOrEqual(totalStars, 0, "❌ Total stars should be at least 0")
    }
}