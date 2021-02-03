//
//  ThreeSideOfKubView.swift
//  TapBarView
//
//  Created by Brubrusha on 2/3/21.
//

import SwiftUI

struct ThreeSideOfKubView: View {
    let numberOfPages: Int
    let currentIndex: Int
    
    private let sideOfKubSize: CGFloat? = 0
    private let currentSideOfKubSize: CGFloat = 50
    private let squareSpacing: CGFloat = 5
    
    
    var body: some View {
        HStack(spacing: squareSpacing) {
            ForEach(0..<numberOfPages) { index in
                if shouldShowIndex(index) {
                    ZStack {
                        Rectangle()
                            .frame(width: currentIndex == index ? currentSideOfKubSize : sideOfKubSize,
                                height: 50)
                            .foregroundColor(Color.gray)
                            .border(Color.white)
                            .id(index)
                        Text(currentIndex == index ? "\(currentIndex)" : "")
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
    func shouldShowIndex(_ index: Int) -> Bool {
        ((currentIndex - 1)...(currentIndex + 1)).contains(index)
    }
}

struct ThreeSideOfKubView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeSideOfKubView(numberOfPages: 4, currentIndex: 3)
    }
}
