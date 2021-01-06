//
//  FormRowLinkView.swift
//  Todo App
//
//  Created by Guillaume Delmarre on 1/6/21.
//

import SwiftUI

struct FormRowLinkView: View {
    
    // MARK: - PROPERTIES
    
    var icon: String
    var color: Color
    var text: String
    var link: String
    
    // MARK: - BODY
    
    
    var body: some View {
        HStack(spacing: 12) {
            ZStack {
                RoundedRectangle(cornerRadius: 13, style: .continuous)
                    .fill(color)
                Image(systemName: icon)
                    .imageScale(.large)
                    .foregroundColor(.white)
            } //END : ZSTACK
            .frame(width: 36, height: 36, alignment: .center)
            Text(text).foregroundColor(.gray)
            Spacer()
            Button(action: {
                // OPEN A LINK
                guard let url = URL(string: self.link),
                      UIApplication.shared.canOpenURL(url) else {
                    return
                }
                UIApplication.shared.open(url as URL)
                
            }) {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                }
            .accentColor(Color(.systemGray2))
        }
    }
}

    // MARK: - PREVIEW

struct FormRowLinkView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowLinkView(icon: "globe", color: .pink, text: "Website", link: "www.guillaumed.com")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
