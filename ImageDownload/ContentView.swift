//
//  ContentView.swift
//  ImageDownload
//
//  Created by Nazar Babyak on 24.03.2022.
//

import SwiftUI

struct ContentView: View {
    
     let image = ["https://images.unsplash.com/photo-1472552944129-b035e9ea3744?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80","https://images.unsplash.com/photo-1472552944129-b035e9ea3744?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80","https://images.unsplash.com/photo-1472552944129-b035e9ea3744?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"]
    
    var body: some View {
        List(image, id: \.self) { index in
            UrlImage(url: index)
                
                .scaledToFit()
                .frame(height: UIScreen.main.bounds.height)
                .cornerRadius(25)
        }.listStyle(.grouped)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
