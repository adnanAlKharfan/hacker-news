//
//  Api.swift
//  sixsteen course app
//
//  Created by adnan alkharfan on 14/07/2021.
//

import Foundation

class api:ObservableObject {
    
    @Published var posts = [post]()
    
    func fetch(){
        
        let url=URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page")
        
        let s=URLSession(configuration: .default)
        
        let task=s.dataTask(with: url!) {
            if $2 != nil {
                print($2)
            }else{
                let j = JSONDecoder()
                do{
                
                    let resu = try j.decode(pre.self, from: $0!)
                    DispatchQueue.main.async {
                        self.posts=resu.hits
                    }
                   
                }catch{
                    
                   
                }
            }
        }
        
        task.resume()
        
    }
    
}
