import UIKit

class UiTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play")
        vc3.tabBarItem.image = UIImage(systemName: "book")
        vc4.tabBarItem.image = UIImage(systemName: "person")
        
        tabBar.tintColor = .label
        
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }
}
