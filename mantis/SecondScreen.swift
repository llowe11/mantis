
import UIKit

class SecondScreen: UIViewController {
    let screenButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setupButton()
    }
    
    
    func setupButton(){
        view.addSubview(screenButton)
    }
}
