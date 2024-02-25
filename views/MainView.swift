import SwiftUI

struct MainView: View {
  @State var path = NavigationPath()

  var body: some View {
    NavigationStack(path: $path) {
      CountriesView()
        .navigationDestination(for: String.self){code in
          CountryDetail(code: code)
        }
    }
  }
}
