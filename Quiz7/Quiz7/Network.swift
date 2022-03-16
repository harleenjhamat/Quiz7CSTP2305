//
//  Network.swift
//  Quiz7
//
//  Created by Harleen Jhamat on 2022-03-16.
//

import Foundation

class Network: ObservableObject {
    @Published var products: [Product] = []
    
    func fetchProduct() {
        guard let url = URL(string: "https://fakestoreapi.com/products")
        else {
            fatalError("could not URL!")
        
        }
        let request = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with:request) {
            data, response, error in
            if let error = error {
                print("[ERROR]\(error)")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                return
            }
            
            guard response.statusCode == 200,
                  let data = data else {
                      print("failed response")
                      return
                  }
            
            print(String(data: data, encoding: .utf8)!)
            
            DispatchQueue.main.async {
                do {
                    let decodedProduct = try JSONDecoder().decode([Product].self, from: data)
                    self.products = decodedProduct
                } catch let error {
                    print("[ERROR]\(error)")
                }
            }
        }
        
        dataTask.resume()
    }
}
