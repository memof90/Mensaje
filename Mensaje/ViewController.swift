//
//  ViewController.swift
//  Mensaje
//
//  Created by Memo Figueredo on 2/20/19.
//  Copyright © 2019 DeTodoUnPoquito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cambiarFrase: UILabel!
    
    @IBOutlet weak var Imagen: UIImageView!
    
    let mensajeCompleto: [String] = ["alegria","Gracias","jajajaja"]
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func BotonCambiar(_ sender: Any) {
        
        print("boton presionado")
        let siguienteFrase = self.mensajeCompleto[index]
        self.cambiarFrase.text = siguienteFrase
        index += 1
        index %= self.mensajeCompleto.count
        
        let imagen = UIImage(named: siguienteFrase)
        Imagen.image = imagen
        
    }
    
}

