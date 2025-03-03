import Foundation

struct TotalStarsCommand {
    static func execute(username: String) async {
        do {
            let totalStars = try await GitHubAPI.shared.fetchTotalStars(username: username)
            
            print("🌟 Total Stars for \(username): \(totalStars)")
        } catch {
            print("❌ Error fetching total stars: \(error.localizedDescription)")
        }
    }
}