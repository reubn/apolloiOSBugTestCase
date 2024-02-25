import SwiftUI
import Apollo
import ApolloBugAppGraphQLSchema

struct CountriesView: View {
  @State var countries: [AllCountriesQuery.Data.Country]?

  var body: some View {
    List(countries ?? [], id: \.code) {country in
      NavigationLink(value: country.code) {
        CountryRow(country: country)
      }
      .id(country.code)
    }
    .refreshable {fetchData()}
    .onAppear {fetchData()}
    .navigationTitle("Countries")
  }

  func fetchData() {
    GraphQL.shared.apollo.fetch(query: AllCountriesQuery(), cachePolicy: .returnCacheDataAndFetch) { result in
      switch result {
        case .failure(let error): print("failure", error)
        case .success(let document):
          guard let data = document.data else {return print("error", document)}

          self.countries = data.countries
      }
    }
  }
}
