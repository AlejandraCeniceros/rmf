//
//  PacienteDatosGenerales.swift
//  RFM
//
//  Created by Alumno on 10/14/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class PacienteDatosGenerales{
    
    var nombrecompleto = ""
    var edad = ""
    var sexo = ""
    var estatura = ""
    var peso = ""
    var enfermedadalergias = ""
    var medidacintura = ""
    var medidacadera = ""
    var medidamuslo = ""
    var medidabiceprelax = ""
    var medidabicepflex = ""
    
    init(nombrecompleto: String, edad: String, sexo: String, estatura: String, peso: String, enfermedadalergias: String, medidacintura: String,medidacadera: String, medidamuslo: String, medidabiceprelax: String, medidabicepflex: String) {
        self.nombrecompleto	= nombrecompleto
        self.edad = edad
        self.sexo = sexo
        self.estatura = estatura
        self.peso = peso
        self.enfermedadalergias = enfermedadalergias
        self.medidacintura = medidacintura
        self.medidacadera = medidacadera
        self.medidamuslo = medidamuslo
        self.medidabiceprelax = medidabiceprelax
        self.medidabicepflex = medidabicepflex
    }
}
