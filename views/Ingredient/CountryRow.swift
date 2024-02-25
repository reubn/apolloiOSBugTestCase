import SwiftUI
import ApolloBugAppGraphQLSchema


struct CountryRow: View {
  let country: AllCountriesQuery.Data.Country

  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      Text(country.name)
        .foregroundColor(.primary)
        .font(.headline)

      HStack(spacing: 4) {
        Text(country.emoji)
          .foregroundColor(.secondary)
          .font(.subheadline)

        Text(country.code)
          .foregroundColor(.secondary)
          .font(.subheadline)
      }
    }
  }
}
