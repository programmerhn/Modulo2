//
//  IngredientesController.swift
//  AppPizza
//
//  Created by Oscar Pineda on 4/5/17.
//  Copyright © 2017 HOME. All rights reserved.
//

import UIKit

class IngredientesController: UIViewController {

    @IBOutlet weak var btnContinuar: UIButton!
    @IBOutlet weak var switchJamon: UISwitch!
    @IBOutlet weak var switchPavo: UISwitch!
    @IBOutlet weak var switchAceituna: UISwitch!
    @IBOutlet weak var switchPimiento: UISwitch!
    @IBOutlet weak var switchAnchoa: UISwitch!
    @IBOutlet weak var switchPepperoni: UISwitch!
    @IBOutlet weak var switchSalchicha: UISwitch!
    @IBOutlet weak var switchCebolla: UISwitch!
    @IBOutlet weak var switchPiña: UISwitch!
    @IBOutlet weak var btnVolverSeleccionar: UIButton!
    
    
    var numIngrediente:Int = 0
    var pizzaTamaño:String?
    var pizzaTipoMasa:String?
    var pizzaTipoQueso:String?
    var ingredientes:[String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func asignarJamon(_ sender: UISwitch) {
        if(sender.isOn == true){
            ingredientes.append("Jamon")
            numIngrediente = numIngrediente + 1
            
            btnContinuar.isHidden = false
            
            if(numIngrediente == 5){
                deshabilitarSwitch()
                btnVolverSeleccionar.isHidden = false
            }
        }
    }
    
    @IBAction func asignarPavo(_ sender: UISwitch) {
        if(sender.isOn == true){
            ingredientes.append("Pavo")
            numIngrediente = numIngrediente + 1
            
            btnContinuar.isHidden = false
            
            if(numIngrediente == 5){
                deshabilitarSwitch()
                btnVolverSeleccionar.isHidden = false
            }
        }
    }
    
    @IBAction func asignarAceituna(_ sender: UISwitch) {
        if(sender.isOn == true){
            ingredientes.append("Aceituna")
            numIngrediente = numIngrediente + 1
            
            btnContinuar.isHidden = false
            
            if(numIngrediente == 5){
                deshabilitarSwitch()
                btnVolverSeleccionar.isHidden = false
            }
        }
    }
    
    @IBAction func asignarPimiento(_ sender: UISwitch) {
        if(sender.isOn == true){
            ingredientes.append("Pimiento")
            numIngrediente = numIngrediente + 1
            
            btnContinuar.isHidden = false
            
            if(numIngrediente == 5){
                deshabilitarSwitch()
                btnVolverSeleccionar.isHidden = false
            }
        }
    }
    
    @IBAction func asignarAnchoa(_ sender: UISwitch) {
        if(sender.isOn == true){
           ingredientes.append("Anchoa")
            numIngrediente = numIngrediente + 1
            
            btnContinuar.isHidden = false
            
            if(numIngrediente == 5){
                deshabilitarSwitch()
                btnVolverSeleccionar.isHidden = false
            }
        }
    }
    
    @IBAction func asignarPepperoni(_ sender: UISwitch) {
        if(sender.isOn == true){
            ingredientes.append("Pepperoni")
            numIngrediente = numIngrediente + 1
            
            btnContinuar.isHidden = false
            
            if(numIngrediente == 5){
                deshabilitarSwitch()
                btnVolverSeleccionar.isHidden = false
            }
        }
    }
    
    @IBAction func asignarSalchicha(_ sender: UISwitch) {
        if(sender.isOn == true){
            ingredientes.append("Salchicha")
            numIngrediente = numIngrediente + 1
            
            btnContinuar.isHidden = false
            
            if(numIngrediente == 5){
                deshabilitarSwitch()
                btnVolverSeleccionar.isHidden = false
            }
        }
    }
    
    @IBAction func asignarCebolla(_ sender: UISwitch) {
        if(sender.isOn == true){
           ingredientes.append("Cebolla")
            numIngrediente = numIngrediente + 1
            
            btnContinuar.isHidden = false
            
            if(numIngrediente == 5){
                deshabilitarSwitch()
                btnVolverSeleccionar.isHidden = false
            }
        }
    }

    @IBAction func asignarPiña(_ sender: UISwitch) {
        if(sender.isOn == true){
            ingredientes.append("Piña")
            numIngrediente += 1
            
            btnContinuar.isHidden = false
            
            if(numIngrediente == 5){
                deshabilitarSwitch()
                btnVolverSeleccionar.isHidden = false
            }
        }
    }
 
    @IBAction func volverSeleccionar(_ sender: Any) {
        habilitarSwitch()
        apagarSwitch()
        numIngrediente = 0
    }
    
    
    func deshabilitarSwitch(){
        switchJamon.isEnabled = false
        switchPavo.isEnabled = false
        switchAceituna.isEnabled = false
        switchPimiento.isEnabled = false
        switchAnchoa.isEnabled = false
        switchPepperoni.isEnabled = false
        switchSalchicha.isEnabled = false
        switchCebolla.isEnabled = false
        switchPiña.isEnabled = false
        
    }

    func habilitarSwitch(){
        switchJamon.isEnabled = true
        switchPavo.isEnabled = true
        switchAceituna.isEnabled = true
        switchPimiento.isEnabled = true
        switchAnchoa.isEnabled = true
        switchPepperoni.isEnabled = true
        switchSalchicha.isEnabled = true
        switchCebolla.isEnabled = true
        switchPiña.isEnabled = true
        
    }
    
    func apagarSwitch(){
        switchJamon.isOn = false
        switchPavo.isOn = false
        switchAceituna.isOn = false
        switchPimiento.isOn = false
        switchAnchoa.isOn = false
        switchPepperoni.isOn = false
        switchSalchicha.isOn = false
        switchCebolla.isOn = false
        switchPiña.isOn = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! ConfirmacionController
        sigVista.pizzaTamaño = self.pizzaTamaño
        sigVista.pizzaTipoMasa = self.pizzaTipoMasa
        sigVista.pizzaTipoQueso = self.pizzaTipoQueso
        sigVista.pizzaIngredientes = self.ingredientes
   
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
