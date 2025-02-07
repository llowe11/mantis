import UIKit

class StacksViewController: UIViewController {

    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()
    override func viewDidLoad() {
        
        view.backgroundColor = .white
        
        super.viewDidLoad()
        let rect1 = createRectangle()
        rect1.backgroundColor = .purple
        
        let rect2 = createRectangle()
        rect2.backgroundColor = .systemRed
        

        let rect3 = createRectangle()
        rect3.backgroundColor = .systemIndigo
        
        stackView.addArrangedSubview(rect1)
        stackView.addArrangedSubview(rect2)
        stackView.addArrangedSubview(rect3)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

    }
    
    private func createRectangle() -> UIView {
        let view = UIView()
        
        NSLayoutConstraint.activate([
            view.heightAnchor.constraint(equalToConstant:200),
            view.widthAnchor.constraint(equalToConstant:400)
        ])
        view.layer.cornerRadius = 15
        return view
    }

}
