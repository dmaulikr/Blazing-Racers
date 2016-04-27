
import UIKit

class SinglePlayerView: UIViewController {
    
    var variables = StoredVariables()

    override func viewDidLoad() {
        super.viewDidLoad()
        print(variables.singlePlayer.boolValue)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
