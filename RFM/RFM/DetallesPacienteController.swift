//
//  DetallesPacienteController.swift
//  RFM
//
//  Created by Alumno on 10/15/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesPacienteController : UIViewController {
    
    var paciente : PacienteDatosGenerales = PacienteDatosGenerales(nombrecompleto: "", edad: "", sexo: "", estatura: "", peso: "", enfermedadalergias: "", medidacintura: "", medidacadera: "", medidamuslo: "", medidabiceprelax: "", medidabicepflex: "")

    override func viewDidLoad() {
        
        self.title = paciente.nombrecompleto
    }
}
