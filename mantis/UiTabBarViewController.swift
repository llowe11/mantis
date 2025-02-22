import UIKit

class UiTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: PlayViewController())
        let vc3 = UINavigationController(rootViewController: LibraryViewController())
        let vc4 = UINavigationController(rootViewController: ProfileViewController())
        
        vc1.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        vc2.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(systemName: "play"),
            selectedImage: UIImage(systemName: "play.fill")
        )
        vc3.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(systemName: "book"),
            selectedImage: UIImage(systemName: "book.fill")
        )
        vc4.tabBarItem = UITabBarItem(
            title: "",
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )
        tabBar.tintColor = .label
        
        
        
        
        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.clear]
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.label]
        tabBar.standardAppearance = appearance
        
        
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }
}
