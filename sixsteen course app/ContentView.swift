//
//  ContentView.swift
//  sixsteen course app
//
//  Created by adnan alkharfan on 14/07/2021.
//

import SwiftUI



struct ContentView: View {
   @ObservedObject var a=api()
    
    var body: some View {
      
      
        
        NavigationView{
            List(a.posts){
                post in
              
                        HStack{
                            Text(String(post.points))
                            Text(post.title)
                            
                        }
                       
               
                
            }
                .navigationTitle("News")
        } .onAppear(perform: {
            print("hi")
           return self.a.fetch()
        })
          
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
