// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CountryDetailQuery: GraphQLQuery {
  public static let operationName: String = "CountryDetailQuery"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query CountryDetailQuery($code: ID!) { country(code: $code) { __typename ...CountryInfo } }"#,
      fragments: [CountryInfo.self]
    ))

  public var code: ID

  public init(code: ID) {
    self.code = code
  }

  public var __variables: Variables? { ["code": code] }

  public struct Data: ApolloBugAppGraphQLSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ApolloBugAppGraphQLSchema.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("country", Country?.self, arguments: ["code": .variable("code")]),
    ] }

    public var country: Country? { __data["country"] }

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
