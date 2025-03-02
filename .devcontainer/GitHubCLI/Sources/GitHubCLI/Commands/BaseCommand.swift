import Foundation

protocol BaseCommand {
    static func execute(arguments: [String])
}