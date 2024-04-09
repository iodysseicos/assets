// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
public typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum Images {
  public static let flowIntenseNotSelected = ImageAsset(name: "flow_intenseNotSelected")
  public static let flowIntenseSelected = ImageAsset(name: "flow_intenseSelected")
  public static let flowLightNotSelected = ImageAsset(name: "flow_lightNotSelected")
  public static let flowLightSelected = ImageAsset(name: "flow_lightSelected")
  public static let flowModerateNotSelected = ImageAsset(name: "flow_moderateNotSelected")
  public static let flowModerateSelected = ImageAsset(name: "flow_moderateSelected")
  public static let flowVeryLightNotSelected = ImageAsset(name: "flow_veryLightNotSelected")
  public static let flowVeryLightSelected = ImageAsset(name: "flow_veryLightSelected")
  public static let libidoHighNotSelected = ImageAsset(name: "libido_highNotSelected")
  public static let libidoHighSelected = ImageAsset(name: "libido_highSelected")
  public static let libidoLowNotSelected = ImageAsset(name: "libido_lowNotSelected")
  public static let libidoLowSelected = ImageAsset(name: "libido_lowSelected")
  public static let libidoModerateNotSelected = ImageAsset(name: "libido_moderateNotSelected")
  public static let libidoModerateSelected = ImageAsset(name: "libido_moderateSelected")
  public static let moodAnxious = ImageAsset(name: "mood_anxious")
  public static let moodApathetic = ImageAsset(name: "mood_apathetic")
  public static let moodCalm = ImageAsset(name: "mood_calm")
  public static let moodConfused = ImageAsset(name: "mood_confused")
  public static let moodEmotional = ImageAsset(name: "mood_emotional")
  public static let moodEnergetic = ImageAsset(name: "mood_energetic")
  public static let moodHappy = ImageAsset(name: "mood_happy")
  public static let moodIrritated = ImageAsset(name: "mood_irritated")
  public static let moodSad = ImageAsset(name: "mood_sad")
  public static let moodSelfcritical = ImageAsset(name: "mood_selfcritical")
  public static let moodTired = ImageAsset(name: "mood_tired")
  public static let protectionEnabled = ImageAsset(name: "protection_Enabled")
  public static let protectionSelected = ImageAsset(name: "protection_Selected")
  public static let sexualActivityEnabled = ImageAsset(name: "sexualActivity_Enabled")
  public static let sexualActivityNotSelected = ImageAsset(name: "sexualActivity_NotSelected")
  public static let sexualActivitySelected = ImageAsset(name: "sexualActivity_Selected")
  public static let symptomAcne = ImageAsset(name: "symptom_acne")
  public static let symptomBackpain = ImageAsset(name: "symptom_backpain")
  public static let symptomBloating = ImageAsset(name: "symptom_bloating")
  public static let symptomConstipation = ImageAsset(name: "symptom_constipation")
  public static let symptomCramps = ImageAsset(name: "symptom_cramps")
  public static let symptomDiarrhea = ImageAsset(name: "symptom_diarrhea")
  public static let symptomHeadache = ImageAsset(name: "symptom_headache")
  public static let symptomInsomnia = ImageAsset(name: "symptom_insomnia")
  public static let symptomLackofappetite = ImageAsset(name: "symptom_lackofappetite")
  public static let symptomLargeappetite = ImageAsset(name: "symptom_largeappetite")
  public static let symptomNausea = ImageAsset(name: "symptom_nausea")
  public static let symptomTenderbreasts = ImageAsset(name: "symptom_tenderbreasts")
  public static let symptomTiredness = ImageAsset(name: "symptom_tiredness")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public struct ImageAsset {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  public var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  public func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  public var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

public extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
public extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
