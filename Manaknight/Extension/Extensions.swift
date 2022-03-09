//
//  Extentions.swift
//  project01
//
//  Created by Syed Meer Gillani on 09/03/2022.
//

import Foundation
import UIKit

extension String {
    var isNotEmpty : Bool {
        return !isEmpty
    }
}

extension UIViewController{
    

    func simplealert(title: String, msg: String)  {
        
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
}
