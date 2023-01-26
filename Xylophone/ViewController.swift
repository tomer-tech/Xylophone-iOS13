import UIKit
import AVFoundation
import Dispatch

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func keyPressed(_ sender: UIButton) {

        playSound(buttonNote: sender.currentTitle!)
        print("THe note pressed is \(sender.currentTitle!)")
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
        
    }
   
    func playSound(buttonNote : String)  {
        
        let url = Bundle.main.url(forResource: buttonNote, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
}
