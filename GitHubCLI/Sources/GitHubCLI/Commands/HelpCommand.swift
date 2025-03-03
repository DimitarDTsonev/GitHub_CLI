import Foundation

struct HelpCommand {
    static func execute() {
        print("""

        Available commands:
        - search-user <username>
        - list-repos <username>
        - sort-repos <username>
        - list-files <username> <repo>
        - list-starred <username>
        - view-file <username> <repo> <file_path>
        - help
        - exit
        
        """)
    }
}