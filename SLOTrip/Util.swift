import UIKit

//UI部品のユーティリティクラス
extension UILabel {
    func apply(text: String = "",
               font: UIFont = .boldSystemFont(ofSize: 20),
               textColor: UIColor = #colorLiteral(red: 0.004964430756, green: 0.07304695627, blue: 0.3772802982, alpha: 1),
               backgroundColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)) {
        self.text = text
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.textAlignment = NSTextAlignment.center
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10.0
        self.layer.borderColor = UIColor.orange.cgColor
        self.layer.borderWidth = 2
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension UITextField {
    func apply() {
        self.backgroundColor = .white
        self.borderStyle = .roundedRect
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension UIImageView {
    func apply(backgroundColor: UIColor = .red){
        self.backgroundColor = backgroundColor
        self.layer.borderWidth = 1
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension Date {
    //datepickerの値をテクストラベルに代入するために、String型にする。
    static func toString(sender: UIDatePicker) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = Const.dateFormat
        return dateFormatter.string(from: sender.date)
    }
    //テクストラベルの日付の値をdatepickerに代入するために、Date型にする。
    static func fromString(sender: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = Const.dateFormat
        return dateFormatter.date(from: sender)
    }
}
extension UIAlertController {
    //アラートの表示
    static func showAlert (title: String, error: String) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: error, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertAction)
        return alertController
    }
}
