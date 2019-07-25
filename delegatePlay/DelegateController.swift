//
//  Lesson: Delegate_Play
//

import UIKit

// Accept the Protocol
class DelegateController: UIViewController, dataPass {
    @IBOutlet weak var lblDelegate: UILabel!
    
    // Implement the protocol
    func passAdjective(word: String) {
        lblDelegate.text = word
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Assign this controller as the Delegate for the destination
        let delegatorView = segue.destination as! DelegatorController

        delegatorView.delegatePassText = self as! dataPass
    }

}

