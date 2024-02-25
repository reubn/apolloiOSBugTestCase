import Foundation

import Apollo
//import ApolloSQLite

class GraphQL {
  let remoteURL = URL(string: "https://countries.trevorblades.com/")!
  let sqliteDBFolder = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: .documentsDirectory, create: true)

  lazy var sqliteDBFile = sqliteDBFolder?.appendingPathComponent("apolloBugApp.sqlite")

  lazy var apollo: ApolloClient = {
    guard let sqliteDBFile = self.sqliteDBFile,
          let sqliteCache = try? SQLiteNormalizedCache(fileURL: sqliteDBFile)
    else {
      print("FAILED TO CREATE CACHING APOLLO")
      return ApolloClient(url: remoteURL)
    }

    let store = ApolloStore(cache: sqliteCache)
    let normalTransport = RequestChainNetworkTransport(interceptorProvider: DefaultInterceptorProvider(store: store), endpointURL: remoteURL)

    return ApolloClient(networkTransport: normalTransport, store: store)
  }()

  static let shared = GraphQL()
}
