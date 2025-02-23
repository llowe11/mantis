import UIKit

class HomeViewController: UIViewController {
    let stackView = UIStackView()
    let scrollView = UIScrollView()
    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
