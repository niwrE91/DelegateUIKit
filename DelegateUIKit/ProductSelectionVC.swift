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
        iPadButton.configuration?.baseForegroundColor = .systemTeal
        iPadButton.configuration?.baseBackgroundColor = .systemTeal
        iPadButton.addTarget(self, action: #selector(iPhoneButtonTapped), for: .touchUpInside)
        
        appleWatchButton.configuration = .tinted()
        appleWatchButton.configuration?.title = "Apple Watch"
        appleWatchButton.configuration?.image = UIImage(systemName: "AppleWatch")
        appleWatchButton.configuration?.imagePadding = 8
        appleWatchButton.configuration?.baseForegroundColor = .systemIndigo
        appleWatchButton.configuration?.baseBackgroundColor = .systemIndigo
        appleWatchButton.addTarget(self, action: #selector(iPhoneButtonTapped), for: .touchUpInside)
        
        macBookButton.configuration = .tinted()
        macBookButton.configuration?.title = "MacBook Pro"
        macBookButton.configuration?.image = UIImage(systemName: "MacBook")
        macBookButton.configuration?.imagePadding = 8
        macBookButton.configuration?.baseForegroundColor = .systemMint
        macBookButton.configuration?.baseBackgroundColor = .systemMint
        macBookButton.addTarget(self, action: #selector(iPhoneButtonTapped), for: .touchUpInside)
        
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            iPhoneButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            iPhoneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iPhoneButton.heightAnchor.constraint(equalToConstant: 50),
            iPhoneButton.widthAnchor.constraint(equalToConstant: 200),
            
            iPadButton.bottomAnchor.constraint(equalTo: iPhoneButton.topAnchor, constant: padding),
            iPadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iPadButton.heightAnchor.constraint(equalToConstant: 50),
            iPadButton.widthAnchor.constraint(equalToConstant: 200),
            
            appleWatchButton.bottomAnchor.constraint(equalTo: iPhoneButton.topAnchor, constant: padding),
            appleWatchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            appleWatchButton.heightAnchor.constraint(equalToConstant: 50),
            appleWatchButton.widthAnchor.constraint(equalToConstant: 200),
            
            macBookButton.bottomAnchor.constraint(equalTo: iPhoneButton.topAnchor, constant: padding),
            macBookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            macBookButton.heightAnchor.constraint(equalToConstant: 50),
            macBookButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
}
