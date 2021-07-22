//
//  ViewController.swift
//  SharkberryKitSwiftExample
//
//  Created by Gabriela Bezerra on 22/07/21.
//

import UIKit
import SharkberryKit

class ViewController: UIViewController {

    //MARK: - Properties
    lazy var button: SharkButton = {
        let button = SharkButton(frame: .zero)
        button.setTitle("Hello Shark", for: .normal)
        button.addTarget(
            self,
            action: #selector(sharkAction(_:)),
            for: .touchUpInside
        )
        return button
    }()

    //MARK: - Actions
    @objc func sharkAction(_ sender: SharkButton) -> Void {
        print("Action for shark button with title \"\(sender.currentTitle!)\" 🦈🍒")
    }

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }

    private func setupLayout() {
        self.view.addSubview(button)

        self.view.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }

        let buttonConstraints = [
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 120),
            button.heightAnchor.constraint(equalToConstant: 50)
        ]

        NSLayoutConstraint.activate(buttonConstraints)
    }

}

