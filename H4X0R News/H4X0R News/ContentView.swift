//
//  ContentView.swift
//  H4X0R News
//
//  Created by Gabriela Valentina on 02.01.2023.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        VStack {
            NavigationView{
                List(networkManager.posts){
                    post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text("\(post.points)")
                            Text(post.title)
                            
                        }
                    }
                }
                .navigationTitle("H4X0R NEWS")
            }
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


