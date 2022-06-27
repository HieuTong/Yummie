//
//  UIViewController+Extensions.swift
//  Yummie
//
//  Created by Le Tong Minh Hieu on 26/06/2022.
//

import UIKit

extension UIViewController {
    
    @objc func back() {
        pop()
    }

    func present(_ controller: UIViewController) {
        DispatchQueue.mainAsync {
            self.present(controller, animated: true)
        }
    }

    func push(_ controller: UIViewController) {
        DispatchQueue.mainAsync {
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    func pop() {
        DispatchQueue.mainAsync {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func popToRoot() {
        DispatchQueue.mainAsync {
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
    
    func pop(_ controller: UIViewController) {
        DispatchQueue.mainAsync {
            self.navigationController?.popToViewController(controller, animated: true)
        }
    }
}

extension DispatchQueue {
    static func mainAsync(block: @escaping () -> Void) {
        if Thread.isMainThread {
            block()
        } else {
            DispatchQueue.main.async {
                block()
            }
        }
    }
}
