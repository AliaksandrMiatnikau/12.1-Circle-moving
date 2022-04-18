
import UIKit

class ViewController: UIViewController {
    
    private let circle = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        circle.frame = CGRect(x: 100,y: 100, width: 100, height: 100)
        circle.backgroundColor = .red
        circle.layer.cornerRadius = circle.frame.size.width / 2
        view.addSubview(circle)
        
    }
    @IBAction func onStartButton(_ sender: Any) {
        moveDown()
    }
    
    
    private func moveDown() {
        UIView.animate(withDuration: 1) {
            self.circle.frame.origin.y += 100
        } completion: { _ in
            self.moveRight()
        }
    }
    private func moveRight() {
        UIView.animate(withDuration: 1){
            self.circle.frame.origin.x += 100
        } completion: { _ in
            self.moveUp()
        }
    }
    private func moveUp() {
        UIView.animate(withDuration: 1){
            self.circle.frame.origin.y -= 100
        } completion: { _ in
            self.moveLeft()
        }
    }
    private func moveLeft() {
        UIView.animate(withDuration: 1){
            self.circle.frame.origin.x -= 100
        } completion: { [self] _ in
            self.moveDown()
        }
    }
}


