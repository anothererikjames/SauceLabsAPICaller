//
//  APICaller.swift
//  SauceLabsAPICaller
//
//  Created by Erik James on 1/12/23.
//

import Foundation

class APICaller: NSObject,ObservableObject {
    
    var callOnce = false
    var urlCounter = 0
    var cView:ContentView?
    
    func callAPI(theURL:String = "https://jsonplaceholder.typicode.com/posts/1"){
        guard let url = URL(string: theURL) else{
            return
        }


        let task = URLSession.shared.dataTask(with: url){
            data, response, error in
            let _self = self
            if let data = data, let string = String(data: data, encoding: .utf8){
                print(string)
                _self.urlCounter -= 1
                _self.cView?.buttonTitle = _self.urlCounter < 1 ? "Done" : "Calling \(_self.urlCounter)"
            }
        }

        task.resume()
    }
    
    func callAllAPIS(contentView:ContentView) {
        if callOnce{
            return
        }
        cView = contentView
        callOnce = true
        let apis = ["https://jsonplaceholder.typicode.com/posts/1",
                    "https://catfact.ninja/fact","https://www.boredapi.com/api/activity",
                    "https://api.agify.io?name=meelad",
        "https://randomuser.me/api/", "https://api.nationalize.io?name=nathaniel","https://datausa.io/api/data?drilldowns=Nation&measures=Population"]
        
        apis.forEach { api in
            urlCounter+=1
            callAPI(theURL: api)
        }
        cView?.buttonTitle = "Calling \(urlCounter)"
    }
}
