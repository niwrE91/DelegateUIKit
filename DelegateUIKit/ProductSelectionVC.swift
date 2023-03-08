//
//  ProductSelectionVC.swift
//  DelegateUIKit
//
//  Created by Erwin Warkentin on 08.03.23.
//

import UIKit

class ProductSelectionVC: UIViewController {
    
    let iPhoneButton = UIButton()
    let iPadButton = UIButton()
    let appleWatchButton = UIButton()
    let macBookButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUi()
    }
    
    @objc func iPhoneButtonTapped() {
            dismiss(animated: true)
    }
    
    @objc func iPadButtonTapped() {
            dismiss(animated: true)
    }
    
    @objc func appleWatchButtonTapped() {
            dismiss(animated: true)
    }
    
    @objc func macBookButtonTapped() {
            dismiss(animated: true)
    }
    
    func setupUi() {
        view.addSubview(iPhoneButton)
        view.addSubview(iPadButton)
        view.addSubview(appleWatchButton)
        view.addSubview(macBookButton)
        view.backgroundColor = .systemBackground
        
        iPhoneButton.translatesAutoresizingMaskIntoConstraints = false
        iPadButton.translatesAutoresizingMaskIntoConstraints = false
        appleWatchButton.translatesAutoresizingMaskIntoConstraints = false
        macBookButton.translatesAutoresizingMaskIntoConstraints = false
        
        iPhoneButton.configuration = .tinted()
        iPhoneButton.configuration?.title = "iPhone"
        iPhoneButton.configuration?.image = UIImage(systemName: "iPhone")
        iPhoneButton.configuration?.imagePadding = 8
        iPhoneButton.configuration?.baseForegroundColor = .systemBlue
        iPhoneButton.configuration?.baseBackgroundColor = .systemBlue
        iPhoneButton.addTarget(self, action: #selector(iPhoneButtonTapped), for: .touchUpInside)
        
        iPadButton.configuration = .tinted()
        iPadButton.configuration?.title = "iPad"
        iPadButton.configuration?.image = UIImage(systemName: "iPad")
        iPadButton.configuration?.imagePadding = 8
        iPadButton.configuration?.baseForegroundColor = .systemCyan
        iPadButton.configuration?.baseBackgroundColor = .systemCyan
        iPadButton.addTarget(self, action: #selector(iPhoneButtonTapped), for: .touchUpInside)
        
        appleWatchButton.configuration = .tinted()
        appleWatchButton.configuration?.title = "Apple Watch"
        appleWatchButton.configuration?.image = UIImage(systemName: "AppleWatch")
        appleWatchButton.configuration?.imagePadding = 8
        appleWatchButton.configuration?.baseForegroundColor = .systemTeal
        appleWatchButton.configuration?.baseBackgroundColor = .systemTeal
        appleWatchButton.addTarget(self, action: #selector(iPhoneButtonTapped), for: .touchUpInside)
        
        macBookButton.configuration = .tinted()
        macBookButton.configuration?.title = "MacBook Pro"
        macBookButton.configuration?.image = UIImage(systemName: "MacBook")
        macBookButton.configuration?.imagePadding = 8
        macBookButton.configuration?.baseForegroundColor = .systemIndigo
        macBookButton.configuration?.baseBackgroundColor = .systemIndigo
        macBookButton.addTarget(self, action: #selector(iPhoneButtonTapped), for: .touchUpInside)
        
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            iPhoneButton.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 3*padding),
            iPhoneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iPhoneButton.heightAnchor.constraint(equalToConstant: 50),
            iPhoneButton.widthAnchor.constraint(equalToConstant: 200),
            
            iPadButton.topAnchor.constraint(equalTo: iPhoneButton.bottomAnchor, constant: padding),
            iPadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iPadButton.heightAnchor.constraint(equalToConstant: 50),
            iPadButton.widthAnchor.constraint(equalToConstant: 200),
            
            appleWatchButton.topAnchor.constraint(equalTo: iPadButton.bottomAnchor, constant: padding),
            appleWatchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            appleWatchButton.heightAnchor.constraint(equalToConstant: 50),
            appleWatchButton.widthAnchor.constraint(equalToConstant: 200),
            
            macBookButton.topAnchor.constraint(equalTo: appleWatchButton.bottomAnchor, constant: padding),
            macBookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            macBookButton.heightAnchor.constraint(equalToConstant: 50),
            macBookButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
}
