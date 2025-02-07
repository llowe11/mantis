import UIKit

class ScrollViewController: UIViewController {

    private var scrollView = UIScrollView()
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 20
        return stack
    }()
    
    private let rectHeight: CGFloat = 200
    private let numOfBlocks = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        for _ in 1..<numOfBlocks{
            let rect = createRectangle()
            stackView.addArrangedSubview(rect)
        }
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        scrollView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
        scrollView.contentSize = CGSize(width: view.frame.width, height: (rectHeight * CGFloat(numOfBlocks)) + 64)

    }
    
    private func createRectangle() -> UIView {
        let view = UIView()
        
        NSLayoutConstraint.activate([
            view.heightAnchor.constraint(equalToConstant:200),
            view.widthAnchor.constraint(equalToConstant:400)
        ])
        view.layer.cornerRadius = 15
        view.backgroundColor = .systemPink
        return view
    }
    
}
