//
//  RegisterViewController.swift
//  IOSapp
//
//  Created by Ignacio Huichal on 18-01-18.
//  Copyright © 2018 Ignacio Huichal. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    //Código para el registro//
  
  
    @IBOutlet weak var UserEmailRegister: UITextField!
    @IBOutlet weak var UserPasswordRegister: UITextField!
    @IBOutlet weak var RepearPasswordRegister: UITextField!
    //-----------------------//
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//Código para el registro//
    @IBAction func ButtonRegister(_ sender: Any) {
        let userEmail = UserEmailRegister.text!
        let userPassword = UserPasswordRegister.text!
        let userRepeatPassword = RepearPasswordRegister.text!
        
        //verifico campos de entrada
        if(userEmail.isEmpty || userPassword.isEmpty || userRepeatPassword.isEmpty){
            //despegar alerta
            DisplayMyAlertMessage(userMessage: "Todos los campos son requeridos ");
            return;
        }
        
        //verfico si las password coinciden
        if(userPassword != userRepeatPassword){
            //alerta
            DisplayMyAlertMessage(userMessage: "Las contraseñas no coinciden")
            return
        }
        
        //Almacenamiento de datos
        
        
        
    }
//-----------------------//

    //creo la funcion de alertas de msj
    func DisplayMyAlertMessage(userMessage: String ){
        let myAlert = UIAlertController(title:"Alert",message:userMessage, preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "ok",style:UIAlertActionStyle.default,handler:nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert, animated:true,completion:nil )
    }

}
