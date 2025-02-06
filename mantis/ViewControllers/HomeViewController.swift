import UIKit

class HomeViewController: UIViewController {
    private var secondaryLabel: UILabel = {
        let label = UILabel()
        label.text = "some random text"
        label.textColor = .black
        return label
    }()
    
    private var homeButton:UIButton = {
        let hButton = UIButton()
        hButton.setTitle("click", for: .normal)
        hButton.backgroundColor = .white
        return hButton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        view.addSubview(secondaryLabel)
        secondaryLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(homeButton)
        homeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            secondaryLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondaryLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            homeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            homeButton.topAnchor.constraint(equalTo: secondaryLabel.bottomAnchor, constant: 20),
        ])
    }
    
}
