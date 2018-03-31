import UIKit

class ViewController: UIViewController {
  
    let titleLabel = UILabel()
    let bodyLabel = UILabel()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        titleLabel.backgroundColor = .red
        bodyLabel.backgroundColor = .green
        
        titleLabel.text = "TITLE"
        bodyLabel.text = "BODY"
      
        let stackView = UIStackView (ArrangedSubviews: [titleLabel, bodyLabel])
      
        stackView.axis = .vertical
        //stackView.frame = CGRect(x: 0, y: 0, width: 200, height: 400)
        
      
        view.addSubview(stackView)
    }
  
}
