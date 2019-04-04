import UIKit

extension UIButton {
    func blackBtn(title: String = "",
                  font: UIFont = .boldSystemFont(ofSize: 16),
                  tintColor: UIColor = .white,
                  backgroundColor: UIColor = .gray) {
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = font
        self.setTitleColor(tintColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func greenkBtn(title: String = "",
                   font: UIFont = .boldSystemFont(ofSize: 16),
                   tintColor: UIColor = .yellow,
                   backgroundColor: UIColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)) {
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = font
        self.setTitleColor(tintColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 10.0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func yellowBtn(title: String = "",
                   font: UIFont = .boldSystemFont(ofSize: 16),
                   tintColor: UIColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1),
                   backgroundColor: UIColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)) {
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = font
        self.setTitleColor(tintColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 10.0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

