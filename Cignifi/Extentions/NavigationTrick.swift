//
//  Extention.swift
//  Cignifi
//
//  Created by 1di4r on 11/10/20.
//  Copyright © 2020 1di4r. All rights reserved.
//

import Foundation
import SwiftUI

extension View {

    
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                    
                    ,
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
    }
}

