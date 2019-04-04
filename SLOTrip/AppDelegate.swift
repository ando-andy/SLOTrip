import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    //初期画面を格納する変数を宣言
    var window: UIWindow?
    //自動生成
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = UINavigationController(rootViewController: MainViewController())

//        //初回ログインのフラグを生成
//        let userDefaults = UserDefaults.standard
//        userDefaults.register(defaults: [Const.IS_FIRST_LAUNCH_KEY : true])
//        //ストーリーボード無しで、画面を起動
//        window = UIWindow(frame: UIScreen.main.bounds)
//        //初回ログインの判断
//        if userDefaults.bool(forKey: Const.IS_FIRST_LAUNCH_KEY) {
//            window?.rootViewController = UINavigationController(rootViewController: AccountAddViewController())
//            //初回ログインのフラグをfalseにセット
//            userDefaults.set(false, forKey: Const.IS_FIRST_LAUNCH_KEY)
//            print("初回起動")
//        } else {
//            window?.rootViewController = UINavigationController(rootViewController: LoginViewController())
//            print("何回も起動")
//        }
        window?.makeKeyAndVisible()
        return true
    }
    func applicationWillResignActive(_ application: UIApplication) {
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
    }
}
