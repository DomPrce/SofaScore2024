//
//  Fonts.swift
//  SofaScoreAcademy
//
//  Created by Dominik Prce on 18.03.2024..
//

import UIKit

extension UIFont {

    class var headline1Desktop: UIFont {
        return UIFont(name: "Roboto-Bold", size: 32.0) ?? UIFont.systemFont(ofSize: 32.0, weight: .bold)
    }

    class var headline1: UIFont {
        return UIFont(name: "Roboto-Bold", size: 20.0) ?? UIFont.systemFont(ofSize: 20.0, weight: .bold)
    }

    class var headline2: UIFont {
        return UIFont(name: "Roboto-Bold", size: 16.0) ?? UIFont.systemFont(ofSize: 16.0, weight: .bold)
    }

    class var action: UIFont {
        return UIFont(name: "Roboto-Bold", size: 16.0) ?? UIFont.systemFont(ofSize: 16.0, weight: .bold)
    }

    class var headline3: UIFont {
        return UIFont(name: "Roboto-Bold", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0, weight: .bold)
    }

    class var tabular: UIFont {
        return UIFont(name: "Roboto-CondensedRegular", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
    }

    class var bodyParagraph: UIFont {
        return UIFont(name: "Roboto-Regular", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
    }

    class var body: UIFont {
        return UIFont(name: "Roboto-Regular", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
    }

    class var assistive: UIFont {
        return UIFont(name: "Roboto-Bold", size: 12.0) ?? UIFont.systemFont(ofSize: 12.0, weight: .bold)
    }

    class var micro: UIFont {
        return UIFont(name: "Roboto-CondensedRegular", size: 12.0) ?? UIFont.systemFont(ofSize: 12.0)
    }
}

