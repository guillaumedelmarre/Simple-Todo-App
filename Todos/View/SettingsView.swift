//
//  SettingsView.swift
//  Todo App
//
//  Created by Guillaume Delmarre on 1/6/21.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
    // MARK: - FORM
                Form {
            
                    
           // MARK: - SECTION 3
                    
                    Section(header: Text("Follow us")) {
                        FormRowLinkView(icon: "globe", color: .pink, text: "Website", link: "http://www.google.fr")
                        FormRowLinkView(icon: "link", color: .blue, text: "Twitter", link: "http://www.twitter.com")
                        FormRowLinkView(icon: "play.rectangle", color: .red, text: "Youtube", link: "http://www.youtube.com")
                    } // END : SECTION 3
                    .padding(.vertical, 3)
                    
            // MARK: - SECTION 4
                    Section(header: Text("About the app")) {
                        FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Todo")
                        FormRowStaticView(icon: "checkmark.seal", firstText: "Compatibility", secondText: "iPhone")
                        FormRowStaticView(icon: "keyboard", firstText: "Developer", secondText: "Guillaume")
                        FormRowStaticView(icon: "paintbrush", firstText: "Designer", secondText: "Guillaume")
                        FormRowStaticView(icon: "flag", firstText: "Version", secondText: "2020.01")
                    }
                    // END : SECTION 4
                    .padding(.vertical, 3)
                    
                } // END: FORM
                .listStyle(GroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)
                
    // MARK: - FOOTER
                Text("Copyrights © All rights reserved.\n Better Apps 🦄 Less Code")
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .padding(.top, 6)
                    .padding(.bottom, 8)
                    .foregroundColor(.secondary)
                
            } // END: VSTACK
            .navigationBarItems(trailing:
                                    Button(action: {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }) {
                                        Image(systemName: "xmark")
                                    }
                                    )
            .navigationBarTitle("Settings", displayMode: .inline)
            .background(Color("ColorBackground").edgesIgnoringSafeArea(.all))
    } // END: NAVIGATION
}


    // MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
  }
}

