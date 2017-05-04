//
//  TipoQuesoController.swift
//  AppPizza
//
//  Created by Oscar Pineda on 4/5/17.
//  Copyright © 2017 HOME. All rights reserved.
//

import UIKit

class TipoQuesoController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var btnContinuar: UIButton!
    
    let quesos = ["Mozarela",
                  "Cheddar",
                  "Parmesano",
                  "Sin queso"]
    
    var pizzaTamaño:String?
    var pizzaTipoMasa:String?
    var pizzaTipoQueso:String?
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesos[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.pizzaTipoQueso = quesos[row]
        self.btnContinuar.isHidden = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! IngredientesController
        sigVista.pizzaTamaño = self.pizzaTamaño
        sigVista.pizzaTipoMasa = self.pizzaTipoMasa
        sigVista.pizzaTipoQueso = self.pizzaTipoQueso
        
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
