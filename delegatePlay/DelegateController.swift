//
//  DelegateController.swift (GREEN)
//  delegatePlay
//
//  Created by Brian Bansenauer
//

import UIKit

// Accept the Protocol
class DelegateController: UIViewController {

    @IBOutlet weak var lblDelegate: UILabel!
    
    // Implement the protocol
    func writeDatatoLabel(info: String) {
        //write the info into the label
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Assign this controller as the Delegate for the destination

    }

}

