// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name
internal enum Strings {
  /// afa
  internal static let afa = Strings.tr("Localizable", "afa")
  /// dsdsdhj
  internal static let cccc = Strings.tr("Localizable", "cccc")
  /// dffd
  internal static let dfdf = Strings.tr("Localizable", "dfdf")
  /// passant
  internal static let passant = Strings.tr("Localizable", "passant")
  /// passant1
  internal static let passant1 = Strings.tr("Localizable", "passant1")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name

// MARK: - Implementation Details

extension Strings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    // swiftlint:disable:next nslocalizedstring_key
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
