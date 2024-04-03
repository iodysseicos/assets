//
//  File.swift
//  
//
//  Created by Caio Melloni dos Santos on 03/04/24.
//

import Foundation
import SwiftUI

let bundle = Bundle.module

@available(macOS 10.15, *)
public struct Colors {
    
    //Backgrunds
    public static let backgroundColor = Color("BackgroundColorLight", bundle: bundle)
    public static let componentsBackgroundColor = Color("white", bundle: bundle)
    
    //Fonts
    public static let textColor = Color("grey-800", bundle: bundle)
    public static let titleColor = Color("purple-800", bundle: bundle)
    
    
    public static let markedItemColor =  Color("purple-600", bundle: bundle)
    public static let unmarkedItemColor = Color("grey-300", bundle: bundle)
    
    //PeriodRelated
    public static let periodPrimaryColor = Color("red-200", bundle: bundle)
    public static let periodSecondaryColor = Color("red-100", bundle: bundle)
    public static let periodTerciaryColor = Color("red-50", bundle: bundle)
    public static let periodProgressColor = Color("red-400", bundle: bundle)

    //Ovulatory/Fertile Phase related
    public static let ovulatoryPhasePrimaryColor = Color("green-200", bundle: bundle)
    public static let ovulatoryPhaseSecondaryColor = Color("green-100", bundle: bundle)
    public static let ovulatoryPhaseTerciaryColor = Color("green-50", bundle: bundle)
    public static let povulatoryPhaseProgressColor = Color("green-400", bundle: bundle)
    
    //luteal Phase related
    public static let lutealPhasePrimaryColor = Color("pink-200", bundle: bundle)
    public static let lutealPhaseSecondaryColor = Color("pink-100", bundle: bundle)
    public static let lutealPhaseTerciaryColor = Color("pink-50", bundle: bundle)
    public static let lutealPhaseProgressColor = Color("pink-400", bundle: bundle)
    
    //folicular Phase related
    public static let folicularPhasePrimaryColor = Color("blue-200", bundle: bundle)
    public static let folicularPhaseSecondaryColor = Color("blue-100", bundle: bundle)
    public static let folicularPhaseTerciaryColor = Color("blue-50", bundle: bundle)
    public static let folicularPhaseProgressColor = Color("blue-400", bundle: bundle)
    
    
    
    
}
