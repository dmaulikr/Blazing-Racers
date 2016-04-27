
import UIKit

class SinglePlayerView: UIViewController {
    
    var dataToPass = StoredVariables()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(dataToPass.singlePlayer.boolValue)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
