// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllCountriesQuery: GraphQLQuery {
  public static let operationName: String = "AllCountriesQuery"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query AllCountriesQuery { countries { __typename ...CountryInfo } }"#,
      fragments: [CountryInfo.self]
    ))

  public init() {}

  public struct Data: ApolloBugAppGraphQLSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ApolloBugAppGraphQLSchema.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("countries", [Country].self),
    ] }

    public var countries: [Country] { __data["countries"] }

    /// Country
    ///
    /// Parent Type: `Country`
    public struct Country: ApolloBugAppGraphQLSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ApolloBugAppGraphQLSchema.Objects.Country }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(CountryInfo.self),
      ] }

      public var code: ApolloBugAppGraphQLSchema.ID { __data["code"] }
      public var name: String { __data["name"] }
      public var emoji: String { __data["emoji"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var countryInfo: CountryInfo { _toFragment() }
      }
    }
  }
}
