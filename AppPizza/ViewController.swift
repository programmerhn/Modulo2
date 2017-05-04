//
//  ViewController.swift
//  AppPizza
//
//  Created by Oscar Pineda on 3/5/17.
//  Copyright © 2017 HOME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var checkChica: UIImageView!
    @IBOutlet weak var checkMediana: UIImageView!
    @IBOutlet weak var checkGrande: UIImageView!
    @IBOutlet weak var labelSeleccion: UILabel!
    @IBOutlet weak var btnContinuar: UIButton!
    
    //var pizza = PizzaVar(tamaño: "", tipoMasa: "",tipoQueso: "",ingredientes: [])

    var tamañoPizza:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func asignarTamChica(_ sender: Any) {
        
        self.checkChica.isHidden = false
        self.tamañoPizza = "Chica"
        
        self.btnContinuar.isHidden = false
        
        self.checkGrande.isHidden = true
        self.checkMediana.isHidden = true
        
    }

    @IBAction func asignarTamMediana(_ sender: Any) {
        self.checkMediana.isHidden = false
        self.tamañoPizza = "Mediana"
        self.btnContinuar.isHidden = false
        
        self.checkChica.isHidden = true
        self.checkGrande.isHidden = true
        
    }

    @IBAction func asignarTamGrande(_ sender: Any) {
        self.checkGrande.isHidden = false
        self.tamañoPizza = "Grande"
        self.btnContinuar.isHidden = false
        
        self.checkChica.isHidden = true
        self.checkMediana.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! TipoMasaController
        sigVista.tamaño = tamañoPizza
    }

 
}

