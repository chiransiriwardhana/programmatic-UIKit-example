//
//  ViewController.swift
//  programmatic UI medium
//
//  Created by Chiran Siriwardena on 5/8/24.
//
import UIKit

class MainView: UIViewController {

    let button = UIButton() // create new UIButton object
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21)) // create new UILabel object
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        setupButton()
        setUpLabel()
        view.backgroundColor = .systemBackground
    }

    func setupButton() {
        view.addSubview(button) // add our button to main view which is "MainView

        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = .systemGreen
        button.configuration?.title = "increment"

        button.translatesAutoresizingMaskIntoConstraints = false // setting false to using auto layout
        
        NSLayoutConstraint.activate([ // center the button in both x direction and y direction and set width and height to 200 and 50 respectively.
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])

        button.addTarget(self, action: #selector(increment), for: .touchUpInside)
    }

    func setUpLabel() {
        view.addSubview(label)
        label.text = "0"
        label.textColor = UIColor.green
        label.translatesAutoresizingMaskIntoConstraints = false

        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 200).isActive = true
        label.widthAnchor.constraint(equalToConstant: 128).isActive = true
        label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }

    @objc func increment() {
        count = count + 1
        label.text = String(count)
    }

}

