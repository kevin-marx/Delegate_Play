//
//  Lesson: Delegate_Play
//

import Foundation
import UIKit

//Create the protocol (also know as an interface) that the delegate will use
protocol dataPass {
    func passAdjective(word: String)
}

class DelegatorController:UIViewController {

    @IBOutlet weak var txtData: UITextField!
    //Add Delegate variable
    
    var delegatePassText:dataPass?
    
    @IBAction func goButtonPressed() {
        //Call the Delegate's method
        let unpacked = txtData.text ?? "" // Unwrap the optional. If nil, be empty string
        if unpacked != "" {
            delegatePassText!.passAdjective(word: unpacked)
        }
        else {
            sendAlert(self: self)
        }
    }
}

func sendAlert(self: DelegatorController) {
    let alert = UIAlertController(title: "Please enter some text.", message: "What _are_ delegates?", preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "ok. i will do that", style: .default, handler: nil))
    
    self.present(alert, animated: true)
}
