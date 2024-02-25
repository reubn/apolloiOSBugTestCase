import Foundation
import SwiftUI

import Apollo
import ApolloBugAppGraphQLSchema

struct CountryDetail: View {
  @State var code: String

  @State var country: CountryDetailQuery.Data.Country?

  var body: some View {
    Group {
      Text(code)
      Text(country?.name ?? "???")
      Text(country?.emoji ?? "???")
    }
    .onAppear {
      fetchData()
    }
  }

  func fetchData() {
    GraphQL.shared.apollo.fetch(query: CountryDetailQuery(code: code), cachePolicy: .returnCacheDataDontFetch) { result in
      switch result {
        case .failure(let error): print("failure", error)
        case .success(let document):
          guard let data = document.data else {return print("error", document)}

          self.country = data.country
      }
    }
  }
}

