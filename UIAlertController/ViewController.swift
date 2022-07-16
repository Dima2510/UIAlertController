//
//  ViewController.swift
//  UIAlertController
//
//  Created by Дмитрий Процак on 17.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Error", message: "Ahtung!", preferredStyle: .alert)
        ///замыкание происходит после нажатия на кнопку "ok"
        let action = UIAlertAction(title: "ok", style: .default) { (action) in}
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
}

