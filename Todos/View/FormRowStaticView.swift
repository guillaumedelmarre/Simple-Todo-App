//
//  FormRowStaticView.swift
//  Todo App
//
//  Created by Guillaume Delmarre on 1/6/21.
//

import SwiftUI

struct FormRowStaticView: View {
    
    // MARK: - PROPERTIES
    
    var icon: String
    var firstText: String
    var secondText: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack(spacing: 12) {
            ZStack {
                RoundedRectangle(cornerRadius: 13, style: .continuous)
                    .fill(Color.gray)
                Image(systemName: icon)
                    .foregroundColor(.white)
            } // END: ZSTACK
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(firstText).foregroundColor(.gray)
            Spacer()
            Text(secondText)
        }
    }
}

    // MARK: - PREVIEW

struct FormRowStaticView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Todo")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
