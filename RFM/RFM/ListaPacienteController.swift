//
//  ViewController.swift
//  RFM
//
//  Created by Alumno on 10/14/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaPacienteController: UIViewController,  UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pacientes.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPacientes") as! CeldaPacientesController
        celda.lblNombres.text = pacientes[indexPath.row].nombrecompleto
        return celda
    }
    
    
    var pacientes: [PacienteDatosGenerales] = []
    

    @IBOutlet weak var tvPacientes: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Regina Fit Meals"
        
        pacientes.append(PacienteDatosGenerales(nombrecompleto: "Luz Maria Perez", edad: "25", sexo: "mujer", estatura: "1.65", peso: "70.4", enfermedadalergias: "diabetes", medidacintura: "83", medidacadera: "105", medidamuslo: "53", medidabiceprelax: "35", medidabicepflex: "37"))
        
        pacientes.append(PacienteDatosGenerales(nombrecompleto: "Juan Carlos Garcia", edad: "22", sexo: "hombre", estatura: "1.75", peso: "102", enfermedadalergias: "alergia a camarones", medidacintura: "140", medidacadera: "140", medidamuslo: "70", medidabiceprelax: "55", medidabicepflex: "58"))
        
        pacientes.append(PacienteDatosGenerales(nombrecompleto: "Pedro Acosta Soto", edad: "30", sexo: "Hombre", estatura: "1.78", peso: "79.4", enfermedadalergias: "asma", medidacintura: "80", medidacadera: "95", medidamuslo: "53", medidabiceprelax: "38", medidabicepflex: "40"))
        
        pacientes.append(PacienteDatosGenerales(nombrecompleto: "Juan Paco Pedro de la Mar", edad: "50", sexo: "hombre", estatura: "1.80" , peso: "85", enfermedadalergias: "hipertension", medidacintura: "96", medidacadera: "105", medidamuslo: "65", medidabiceprelax: "44", medidabicepflex: "46"))
        
        pacientes.append(PacienteDatosGenerales(nombrecompleto: "Ana Sofia Juarez", edad: "35", sexo: "mujer", estatura: "1.63", peso: "70.4", enfermedadalergias: "diabetes", medidacintura: "83", medidacadera: "95", medidamuslo: "63", medidabiceprelax: "30", medidabicepflex: "31"))
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPacienteController
        destino.paciente = pacientes[tvPacientes.indexPathForSelectedRow!.row]
    }
    

}

