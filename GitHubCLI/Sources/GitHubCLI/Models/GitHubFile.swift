import Foundation

struct GitHubFile: Decodable {
    let name: String
    let path: String
    let type: String
    let content: String?

    func decodedContent() -> String? {
        guard let base64Content = content, let data = Data(base64Encoded: base64Content) else {
            return nil
        }
        return String(decoding: data, as: UTF8.self)
    }
}