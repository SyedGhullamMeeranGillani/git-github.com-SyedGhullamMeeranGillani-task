//
//  ServiceLayer.swift
//  Manaknight
//
//  Created by Syed Meer Gillani on 09/03/2022.
//


import Foundation

struct LoginService {
    func login(email: String, password: String) {

    guard let url = URL(string: "https://vyod.manaknightdigital.com/member/api/login") else {
        return
    }
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
   
    
    let body :[String: Any] = [
        "email": email,
        "password": password
    ]
    let putdata = try! JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    print("%body: ",body)
    print(String(data: putdata, encoding: .utf8)!)
    request.httpBody = putdata
    let task = URLSession.shared.dataTask(with: request) { data, _, error in
        guard let data = data, error == nil else {
            return
        }
        do {
            
            let response = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
            print("\nSUCCESS: \n \(response)")

            
        }
        catch {
            print("%error",error)
            print("%error",error.localizedDescription)
        }
    }
    task.resume()
}
    
}
