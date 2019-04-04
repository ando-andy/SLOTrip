import UIKit

class MainViewController: UIViewController {
    
    //UI部品の宣言
    private let mainImg = UIImage(named:"slo-trip")!
    private let bgImage = UIImage(named: "backgraund")

    private let slotLabel: UILabel = {
        let label = UILabel()
        label.apply()
        return label
    }()
    
    private let stopButton: UIButton = {
        let button = UIButton(type: .system)
        button.greenkBtn(title: "ストップ！")
        button.addTarget(self, action: #selector(pushedStop), for: .touchDown)
        return button
    }()
    
    private let rollButton: UIButton = {
        let button = UIButton(type: .system)
        button.yellowBtn(title: "まわす")
        button.addTarget(self, action: #selector(pushedOnemore), for: .touchDown)
        return button
    }()
    
    //あとでAPI繋げるけどそれまでベタがき
    let keywords: [String] = ["アニマルセラピー","アートなお出かけ","わびさび","インスタ映え","贅沢トリップ"]
    
    // MARK: LifeCycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        //ビューの描画
        setUpLoginView()
        //画像の描画
        initImageView()
        //スロットの処理
        Drum()
    }
    
    @objc func pushedStop(sender: UIButton){
        print("button pushed.")
        self.stopButton.isHidden = true
    }
    
    @objc func pushedOnemore(sender: UIButton){
        print("button pushed.")
        if self.stopButton.isHidden {
            self.stopButton.isHidden = false
            Drum()
        } else {
            self.stopButton.isHidden = false
        }
    }
}

extension MainViewController {
    private func setUpLoginView() {
        //ビューの設定
        view.addSubview(slotLabel)
        view.addSubview(stopButton)
        view.addSubview(rollButton)
        
        slotLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        slotLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 450.0).isActive = true
        slotLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        slotLabel.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
        
        stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 60).isActive = true
        stopButton.topAnchor.constraint(equalTo: slotLabel.bottomAnchor, constant: 30).isActive = true
        stopButton.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        stopButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -60).isActive = true
        rollButton.topAnchor.constraint(equalTo: slotLabel.bottomAnchor, constant: 30).isActive = true
        rollButton.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        rollButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    private func initImageView(){
        // UIImage インスタンスの生成
        // UIImageView 初期化
        let imageView = UIImageView(image:mainImg)
        // 画像を画面上部の中心に設定
        imageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: 380.0)
        // 背景画像を設定
        let bgImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        bgImageView.image = bgImage
        bgImageView.layer.zPosition = -1
        // UIImageViewのインスタンスをビューに追加
        self.view.addSubview(imageView)
        self.view.addSubview(bgImageView)
    }
}

extension MainViewController {
    // スロットの処理
    private func Drum() {
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { (timer) in
            if !self.stopButton.isHidden {
                self.slotLabel.text = self.keywords[Int(arc4random()) % self.keywords.count]
            } else {
                timer.invalidate()
                let key = self.keywords
            }
        }
    }
}
