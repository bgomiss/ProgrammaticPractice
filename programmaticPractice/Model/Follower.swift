//
//  Follower.swift
//  programmaticPractice
//
//  Created by aycan duskun on 10.02.2023.
//

import Foundation

// It is dangerous create model with vars mandatories, sometimes the services can return nil a value, or not return anythig
// Instead use Optional Value to prevent crashes
//*
    struct Follower: Codable, Hashable {
        var login: String?
        var avatarUrl: String?
    }

    or

    struct Follower: Codable, Hashable {
        var login: String
        var avatarUrl: URL //or String

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            login = try container.decodeIfPresent(String.self, forKey: .login) ?? "Default String"
            avatarUrl = try container.decodeIfPresent(URL.self, forKey: .login) ?? URL(string: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-of-cat-wearing-sunglasses-while-sitting-royalty-free-image-1571755145.jpg")
        }
    }

*/

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
