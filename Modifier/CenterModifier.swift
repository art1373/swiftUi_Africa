//
//  CenterModifier.swift
//  Africa
//
//  Created by Alireza TK on 5/12/21.
//

import SwiftUI

struct CenterModifier:ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
