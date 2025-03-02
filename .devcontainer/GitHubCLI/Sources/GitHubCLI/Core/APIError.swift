enum APIError: Error {
    case invalidURL
    case invalidResponse
    case badRequest
    case unauthorized
    case forbidden
    case notFound
    case tooManyRequests
    case serverError
    case unexpectedStatus(Int)
    case decodingError

    var description: String {
        switch self {
        case .invalidURL: return "Invalid URL"
        case .invalidResponse: return "Invalid response from server"
        case .badRequest: return "400 Bad Request"
        case .unauthorized: return "401 Unauthorized"
        case .forbidden: return "403 Forbidden"
        case .notFound: return "404 Not Found"
        case .tooManyRequests: return "429 Too Many Requests"
        case .serverError: return "500 Internal Server Error"
        case .unexpectedStatus(let code): return "Unexpected error: \(code)"
        case .decodingError: return "Decoding error"
        }
    }
}