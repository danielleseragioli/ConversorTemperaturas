//
//  ViewController.swift
//  Conversor de Temperaturas
//
//  Created by user212279 on 22/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfCelsius: UITextField!
    @IBOutlet weak var tfFahrenheit: UITextField!
    @IBOutlet weak var sliderTemperature: UISlider!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sliderTemperature.value = 0
        sliderTemperature.maximumValue = 100
        sliderTemperature.minimumValue = -273
        
    }
    
    
    @IBAction func sliderTemperatureAction(_ sender: UISlider) {
                
        let sliderTempValue = sliderTemperature.value

        
// Capturar o valor do slider e colocar no text field do Celsius
        
        let celsiusValue = round (sliderTempValue*100)/100
        // exemplo desse arredondamento: 15.3456 * 100 = 1534 / 100 = 15.34
        tfCelsius.text = String (celsiusValue) + "ºC"
        
// Calcular o respectivo valor em Fahrenheit
        var fahrenheitValue = ((sliderTempValue*9)/5)+32
        
// Capturar o valor do slider e colocar no text field do Fahrenheit
        fahrenheitValue=round(fahrenheitValue*100)/100
        tfFahrenheit.text = String(fahrenheitValue) + "ºF"

        
    }
    

}

