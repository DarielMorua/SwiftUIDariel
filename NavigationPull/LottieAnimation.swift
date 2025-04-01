//
//  LottieAnimation.swift
//  mobileProjects
//
//  Created by ITIT2 on 20/03/25.
//

import SwiftUI
import Lottie


struct LottieAnimation: View{
    var body: some View{
        VStack {
            LottieView(animation: .named("animation"))
                .playing(loopMode: .loop)
        }
    }
}
