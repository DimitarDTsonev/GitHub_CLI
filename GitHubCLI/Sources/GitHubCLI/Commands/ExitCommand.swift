import Foundation

struct ExitCommand {
    static func execute() {
        print("""

            👋 Exiting GitHubCLI...
            
            """)
        exit(0)
    }
}