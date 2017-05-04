//
//  TipoMasaController.swift
//  AppPizza
//
//  Created by Oscar Pineda on 4/5/17.
//  Copyright © 2017 HOME. All rights reserved.
//

import UIKit

class TipoMasaController: UIViewController {

    @IBOutlet weak var checkDelgada: UIImageView!
    @IBOutlet weak var checkCrujiente: UIImageView!
    @IBOutlet weak var checkGruesa: UIImageView!
    @IBOutlet weak var btnContinuar: UIButton!
    
    var tamaño:String?
    var tipoMasa:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func asignarDelgada(_ sender: Any) {
        self.checkDelgada.isHidden = false
        self.tipoMasa = "Delgada"
        self.btnContinuar.isHidden = false
        
        self.checkGruesa.isHidden = true
        self.checkCrujiente.isHidden = true
  
    }


    @IBAction func asignarCrujiente(_ sender: Any) {
        self.checkCrujiente.isHidden = false
        self.tipoMasa = "Crujiente"
        self.btnContinuar.isHidden = false
        
        self.checkDelgada.isHidden = true
        self.checkGruesa.isHidden = true
        
    }

    
    @IBAction func asignarGruesa(_ sender: Any) {
        self.checkGruesa.isHidden = false
        self.tipoMasa = "Gruesa"
        self.btnContinuar.isHidden = false
        
        self.checkDelgada.isHidden = true
        self.checkCrujiente.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! TipoQuesoController
        sigVista.pizzaTamaño = tamaño
        sigVista.pizzaTipoMasa = tipoMasa
        
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
