import XCTest
@testable import GitHubCLITests

fileprivate extension CommandTests {
    @available(*, deprecated, message: "Not actually deprecated. Marked as deprecated to allow inclusion of deprecated tests (which test deprecated functionality) without warnings")
    static nonisolated(unsafe) let __allTests__CommandTests = [
        ("testListFilesCommand", asyncTest(testListFilesCommand)),
        ("testListRepositoriesCommand", asyncTest(testListRepositoriesCommand)),
        ("testSearchUserCommand", asyncTest(testSearchUserCommand))
    ]
}

fileprivate extension GitHubAPITests {
    @available(*, deprecated, message: "Not actually deprecated. Marked as deprecated to allow inclusion of deprecated tests (which test deprecated functionality) without warnings")
    static nonisolated(unsafe) let __allTests__GitHubAPITests = [
        ("testFetchRepositories", asyncTest(testFetchRepositories)),
        ("testFetchRepositoryFiles", asyncTest(testFetchRepositoryFiles)),
        ("testFetchStarredRepositories", asyncTest(testFetchStarredRepositories)),
        ("testFetchUser", asyncTest(testFetchUser))
    ]
}
@available(*, deprecated, message: "Not actually deprecated. Marked as deprecated to allow inclusion of deprecated tests (which test deprecated functionality) without warnings")
func __GitHubCLITests__allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CommandTests.__allTests__CommandTests),
        testCase(GitHubAPITests.__allTests__GitHubAPITests)
    ]
}