//
//  ViewController.swift
//  UIAlertController
//
//  Created by Дмитрий Процак on 17.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   ///создание action
    @IBAction func showButton(_ sender: Any) {
        
        self.hiLabel.text = "Hi,"
        self.alert(title: "Attention", message: "Print Your Name", style: .alert)
        
        
    }
        
        //var1
        /*
       окошко вывова ошибки и его описание
        let alertController = UIAlertController(title: "Error", message: "Ahtung!", preferredStyle: .actionSheet) //.action экран по середине,.actionSheet снизу
        ///замыкание происходит после нажатия на кнопку "ok"
        let action = UIAlertAction(title: "ok", style: .default) { (action) in

            
            // let text = alertController.textFields?.first

            // print(text ?? "nil text")
        }
        
     // alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        */
   
    
    //2
    ///по факту делаем единый конструктор чтобы не DRY
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "ok", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.hiLabel.text! += (text?.text!)! + ("!")
        }
       ///делаем введение имя очень скрытно
        alertController.addTextField{(textField) in
            textField.isSecureTextEntry = true
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

