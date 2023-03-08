//
//  ProductSelectionVC.swift
//  DelegateUIKit
//
//  Created by Erwin Warkentin on 08.03.23.
//

import UIKit

//This Protocol tells, the Controller who subscribed to this protocal, what is to do
protocol ProductSelectionDelegate {
    func didSelectProduct(name: String, imageName: String)
}

class ProductSelectionVC: UIViewController {
    
    let iPhoneButton = UIButton()
    let iPadButton = UIButton()
    let appleWatchButton = UIButton()
    let macBookButton = UIButton()
    let clearButton = UIButton()
    
    //tells the viewController what the delegate is
    var delegate: ProductSelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUi()
    }
    
    @objc func iPhoneButtonTapped() {
        //this delegate fires up an event to the subscriber when he has to do this action and gives all informations the listener needs (when the button is Tapped)
        delegate?.didSelectProduct(name: "iPhone", imageName: "iPhone")
        dismiss(animated: true)
    }
    
    @objc func iPadButtonTapped() {
        delegate?.didSelectProduct(name: "iPad", imageName: "iPad")
        dismiss(animated: true)
    }
    
    @objc func appleWatchButtonTapped() {
        delegate?.didSelectProduct(name: "Apple Watch", imageName: "AppleWatch")
        dismiss(animated: true)
    }
    
    @objc func macBookButtonTapped() {
        delegate?.didSelectProduct(name: "MacBook Pro", imageName: "MacBook")
        dismiss(animated: true)
    }
    
    @objc func clearButtonTapped() {
        delegate?.didSelectProduct(name: "Apple Product Line", imageName: "allProducts")
        dismiss(animated: true)
    }
    
    func setupUi() {
        view.addSubview(iPhoneButton)
        view.addSubview(iPadButton)
        view.addSubview(appleWatchButton)
        view.addSubview(macBookButton)
        view.addSubview(clearButton)
        view.backgroundColor = .systemBackground
        
        iPhoneButton.translatesAutoresizingMaskIntoConstraints = false
        iPadButton.translatesAutoresizingMaskIntoConstraints = false
        appleWatchButton.translatesAutoresizingMaskIntoConstraints = false
        macBookButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        
        iPhoneButton.configuration = .tinted()
        iPhoneButton.configuration?.title = "iPhone"
        iPhoneButton.configuration?.image = UIImage(systemName: "iphone")
        iPhoneButton.configuration?.imagePadding = 8
        iPhoneButton.configuration?.baseForegroundColor = .systemBlue
        iPhoneButton.configuration?.baseBackgroundColor = .systemBlue
        iPhoneButton.addTarget(self, action: #selector(iPhoneButtonTapped), for: .touchUpInside)
        
        iPadButton.configuration = .tinted()
        iPadButton.configuration?.title = "iPad"
        iPadButton.configuration?.image = UIImage(systemName: "ipad")
        iPadButton.configuration?.imagePadding = 8
        iPadButton.configuration?.baseForegroundColor = .systemCyan
        iPadButton.configuration?.baseBackgroundColor = .systemCyan
        iPadButton.addTarget(self, action: #selector(iPadButtonTapped), for: .touchUpInside)
        
        appleWatchButton.configuration = .tinted()
        appleWatchButton.configuration?.title = "Apple Watch"
        appleWatchButton.configuration?.image = UIImage(systemName: "applewatch")
        appleWatchButton.configuration?.imagePadding = 8
        appleWatchButton.configuration?.baseForegroundColor = .systemTeal
        appleWatchButton.configuration?.baseBackgroundColor = .systemTeal
        appleWatchButton.addTarget(self, action: #selector(appleWatchButtonTapped), for: .touchUpInside)
        
        macBookButton.configuration = .tinted()
        macBookButton.configuration?.title = "MacBook Pro"
        macBookButton.configuration?.image = UIImage(systemName: "laptopcomputer")
        macBookButton.configuration?.imagePadding = 8
        macBookButton.configuration?.baseForegroundColor = .systemIndigo
        macBookButton.configuration?.baseBackgroundColor = .systemIndigo
        macBookButton.addTarget(self, action: #selector(macBookButtonTapped), for: .touchUpInside)
        
        clearButton.configuration = .tinted()
        clearButton.configuration?.title = "Clear Selection"
        clearButton.configuration?.image = UIImage(systemName: "clear")
        clearButton.configuration?.imagePadding = 8
        clearButton.configuration?.baseForegroundColor = .systemRed
        clearButton.configuration?.baseBackgroundColor = .systemRed
        clearButton.addTarget(self, action: #selector(clearButtonTapped), for: .touchUpInside)
        
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
            
            clearButton.topAnchor.constraint(equalTo: macBookButton.bottomAnchor, constant: padding),
            clearButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            clearButton.heightAnchor.constraint(equalToConstant: 50),
            clearButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
}
