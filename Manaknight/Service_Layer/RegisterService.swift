//
//  RegisterService.swift
//  Manaknight
//
//  Created by Syed Meer Gillani on 09/03/2022.
//


import Foundation

struct RegisterService {
    func login(email: String, password: String,first_name: String,last_name: String,code: String) {

    guard let url = URL(string: "https://vyod.manaknightdigital.com/member/api/register") else {
        return
    }
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
   
    
    let body :[String: Any] = [
        "email": email,
        "password": password,
        "first_name" : first_name,
        "last_name" : last_name,
        "code": code
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
            
//
//            let response = try JSONDecoder().decode(FiletProperties.self, from: data)
//            self.filterProperties = response.data.data
//
            
            
        }
        catch {
            print("%error",error)
            print("%error",error.localizedDescription)
        }
    }
    task.resume()
}
    
}
