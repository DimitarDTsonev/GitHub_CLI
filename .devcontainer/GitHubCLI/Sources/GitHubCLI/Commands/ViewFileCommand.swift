import Foundation

struct ViewFileCommand {
    static func execute(username: String, repo: String, filePath: String) async {
       let encodedPath = filePath.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? filePath
        let fileURL = "https://raw.githubusercontent.com/\(username)/\(repo)/main/\(encodedPath)"

        if let fileContent = try? String(contentsOf: URL(string: fileURL)!, encoding: .utf8) {
            print("📄 File content of '\(filePath)':\n")
            print(fileContent)
        } else {
            print("❌ Could not fetch file content.")
        }
    }
}