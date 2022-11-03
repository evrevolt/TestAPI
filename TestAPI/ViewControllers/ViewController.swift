//
//  ViewController.swift
//  TestAPI
//
//  Created by Геннадий Ведерников on 03.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getApiButtonTapped() {
        
        guard let url = URL(string: "https://v2.jokeapi.dev/joke/Any?safe-mode") else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let programmer = try JSONDecoder().decode(Programmer.self, from: data)
                print(programmer)
            } catch let error {
                print(error)
            }
        }.resume()
        
        
    }
    
}

