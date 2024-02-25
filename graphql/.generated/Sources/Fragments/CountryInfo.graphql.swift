// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct CountryInfo: ApolloBugAppGraphQLSchema.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment CountryInfo on Country { __typename code name emoji }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { ApolloBugAppGraphQLSchema.Objects.Country }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("code", ApolloBugAppGraphQLSchema.ID.self),
    .field("name", String.self),
    .field("emoji", String.self),
  ] }

  public var code: ApolloBugAppGraphQLSchema.ID { __data["code"] }
  public var name: String { __data["name"] }
  public var emoji: String { __data["emoji"] }
}
