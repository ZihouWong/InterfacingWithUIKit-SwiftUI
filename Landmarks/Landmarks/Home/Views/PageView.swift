//
//  PageView.swift
//  Landmarks
//
//  Created by Zihou Wong on 7/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    @State var currentPage = 0
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map() {
            UIHostingController(rootView: $0)
        }
    }
    var body: some View {
        PageViewController(currentPage: $currentPage, controllers: viewControllers)
    }
    
   
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map() { FeatureCard(landmark: $0) })
            .aspectRatio(3/2, contentMode: .fit)
    }
}


