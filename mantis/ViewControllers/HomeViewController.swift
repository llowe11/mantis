import UIKit

class HomeViewController: UIViewController {
    private var secondaryLabel: UILabel = {
        let label = UILabel()
        label.text = "some random text"
        label.textColor = .black
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        view.addSubview(secondaryLabel)
        secondaryLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            secondaryLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondaryLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}
