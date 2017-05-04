//
//  ConfirmacionController.swift
//  AppPizza
//
//  Created by Oscar Pineda on 4/5/17.
//  Copyright © 2017 HOME. All rights reserved.
//

import UIKit

class ConfirmacionController: UIViewController {

    @IBOutlet weak var lblTamaño: UILabel!
    @IBOutlet weak var lblTipoMasa: UILabel!
    @IBOutlet weak var lblTipoQueso: UILabel!
    @IBOutlet weak var lblIngredientes: UILabel!
   
    var pizzaTamaño:String?
    var pizzaTipoMasa:String?
    var pizzaTipoQueso:String?
    var pizzaIngredientes:[String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        lblTamaño.text = self.pizzaTamaño
        lblTipoMasa.text = self.pizzaTipoMasa
        lblTipoQueso.text = self.pizzaTipoQueso
        
        var ingre: String = ""
        var i = 0
        while i < pizzaIngredientes.count{
            ingre += pizzaIngredientes[i] + "\n"
            i += 1
        }
        lblIngredientes.text = String(ingre)
      
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
