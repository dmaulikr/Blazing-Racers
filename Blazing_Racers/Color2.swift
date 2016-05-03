

import UIKit

class Color2: UIViewController
{
    @IBOutlet weak var button_black: UIButton!
    @IBOutlet weak var button_purple: UIButton!
    @IBOutlet weak var button_blue: UIButton!
    @IBOutlet weak var button_pink: UIButton!
    @IBOutlet weak var button_grey: UIButton!
    @IBOutlet weak var button_orange: UIButton!
    @IBOutlet weak var button_special: UIButton!
    
    var variables = StoredVariables()
    
    override func viewDidLoad()
    {//meeme
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "main_background.png")?.drawInRect(self.view.bounds)
        var image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        button_black.layer.cornerRadius = 10;
        button_blue.layer.cornerRadius = 10;
        button_grey.layer.cornerRadius = 10;
        button_purple.layer.cornerRadius = 10;
        button_pink.layer.cornerRadius = 10;
        button_orange.layer.cornerRadius = 10;
        button_special.layer.cornerRadius = 10;
        button_black.alpha = 0
        button_blue.alpha = 0
        button_grey.alpha = 0
        button_orange.alpha = 0
        button_pink.alpha = 0
        button_purple.alpha = 0
        button_special.alpha = 0
    }
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        view.addSubview(button_black)
        view.addSubview(button_blue)
        view.addSubview(button_grey)
        view.addSubview(button_orange)
        view.addSubview(button_pink)
        view.addSubview(button_purple)
        view.addSubview(button_special)
        UIView.animateWithDuration(0.6, animations:
            {
                self.button_black.alpha = 1
                self.button_special.alpha = 1
        })
        UIView.animateWithDuration(0.8, animations:
            {
                self.button_blue.alpha = 1
                self.button_orange.alpha = 1
                self.button_purple.alpha = 1
        })
        UIView.animateWithDuration(1.1, animations:
            {
                self.button_grey.alpha = 1
                self.button_special.alpha = 1
                self.button_pink.alpha = 1

        })
    }
    
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func color1ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color2ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color3ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color4ButtonTapped(sender: AnyObject)
    {
        
    }

    @IBAction func color5ButtonTapped(sender: AnyObject)
    {
        
    }
    
    @IBAction func color6ButtonTapped(sender: AnyObject)
    {
        
    }
    @IBAction func nateisspecial(sender: UIButton) {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
       let tracksTwoVC = segue.destinationViewController as! Tracks2
        tracksTwoVC.variables = variables
    }
}
