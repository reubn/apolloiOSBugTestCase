import Foundation

import Apollo

class GraphQL {
  let remoteURL = URL(string: "https://countries.trevorblades.com/")!

  lazy var apollo: ApolloClient = {
    return ApolloClient(url: remoteURL)
  }()

  static let shared = GraphQL()
}
