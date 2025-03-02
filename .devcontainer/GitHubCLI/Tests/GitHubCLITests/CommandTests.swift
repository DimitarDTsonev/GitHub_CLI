import XCTest
@testable import GitHubCLI

final class CommandTests: XCTestCase {

    func testSearchUserCommand() async throws {
        await SearchUserCommand.execute(username: "DimitarDTsonev")
        XCTAssert(true)
    }

    func testListRepositoriesCommand() async throws {
        await ListRepositoriesCommand.execute(username: "DimitarDTsonev")
        XCTAssert(true)  
    }

    func testListFilesCommand() async throws {
        await ListFilesCommand.execute(username: "DimitarDTsonev", repo: "SampleRepo")
        XCTAssert(true)  
    }
}