import UIKit

class HomeViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setupScrollView()
        setupStackView()
        addHeader()
        addStoriesSection()
        addContentToStackView()
    }
    
    private func setupScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
    private func setupStackView() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)
        
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.alignment = .fill
        stackView.distribution = .fill
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    
    private func addHeader() {
        let headerView = UIView()
        let titleLabel = UILabel()
        titleLabel.text = "Instagram"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 22)
        
        let messageButton = UIButton(type: .system)
        messageButton.setTitle("Messages", for: .normal)
        messageButton.addTarget(self, action: #selector(messageButtonTapped), for: .touchUpInside)
        
        headerView.addSubview(titleLabel)
        headerView.addSubview(messageButton)
        stackView.addArrangedSubview(headerView)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        messageButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 20),
            
            messageButton.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -20),
            messageButton.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
            
            headerView.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func addStoriesSection() {
        let storiesScrollView = UIScrollView()
        storiesScrollView.translatesAutoresizingMaskIntoConstraints = false
        storiesScrollView.showsHorizontalScrollIndicator = false
        storiesScrollView.showsVerticalScrollIndicator = false
        let storiesStack = UIStackView()
        storiesStack.translatesAutoresizingMaskIntoConstraints = false
        storiesStack.axis = .horizontal
        storiesStack.spacing = 10
        storiesStack.alignment = .center
        
        // Add some example story thumbnails
        for _ in 1...10 {
            let storyView = UIImageView(image: UIImage(named: "exampleImage"))
            storyView.contentMode = .scaleAspectFill
            storyView.clipsToBounds = true
            storyView.layer.cornerRadius = 35
            storyView.translatesAutoresizingMaskIntoConstraints = false
            storyView.widthAnchor.constraint(equalToConstant: 70).isActive = true
            storyView.heightAnchor.constraint(equalToConstant: 70).isActive = true
            storiesStack.addArrangedSubview(storyView)
        }
        
        storiesScrollView.addSubview(storiesStack)
        stackView.addArrangedSubview(storiesScrollView)
        
        NSLayoutConstraint.activate([
            storiesStack.topAnchor.constraint(equalTo: storiesScrollView.topAnchor),
            storiesStack.bottomAnchor.constraint(equalTo: storiesScrollView.bottomAnchor),
            storiesStack.leadingAnchor.constraint(equalTo: storiesScrollView.leadingAnchor, constant: 10),
            storiesStack.trailingAnchor.constraint(equalTo: storiesScrollView.trailingAnchor, constant: -10),
            storiesStack.heightAnchor.constraint(equalToConstant: 100),
            
            storiesScrollView.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            storiesScrollView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func addContentToStackView() {
        for _ in 1...10 {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "exampleImage")
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            
            stackView.addArrangedSubview(imageView)
            
            let label = UILabel()
            label.text = "Hello world"
            label.textColor = .black
            label.font = UIFont.systemFont(ofSize: 17)
            stackView.addArrangedSubview(label)
        }
    }
    
    @objc private func messageButtonTapped() {
        // Handle the message button tap, likely pushing a new view controller
        print("Messages button tapped")
    }
}
