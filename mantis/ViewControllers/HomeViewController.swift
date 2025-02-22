import UIKit

class HomeViewController: UIViewController {
    private let VStack = UIStackView()
    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
        
        VStack.axis = .vertical
        VStack.spacing = 10
        
        view.addSubview(VStack)
    }
    
}
