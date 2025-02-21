import UIKit

class UiTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
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
        
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }
}
