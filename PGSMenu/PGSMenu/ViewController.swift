//
//  ViewController.swift
//  PGSMenu
//
//  Created by Pablo on 21/09/2018.
//  Copyright © 2018 Pablo Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.setGradienteBackground(colors: (initColor: UIColor(rgb: 0x6A82FB), endColor: UIColor(rgb: 0xFC5C7D)), orientation: .bottomRightTopLeft)

         let buttonConfiguration = ButtonConfiguration<CircleButtonParameters, Any> { (type) -> Any in
            switch type {
            case .image:
                return "airquality"
            case .gradientcolors:
                return (initColor: UIColor(rgb: 0x11998e), endColor: UIColor(rgb: 0x38ef7d))
            case .orientation:
                return GradientOrientation.bottomRightTopLeft
            case .text:
                return "Tube stations"
            }
        }
        
        let menu = MenuView(frame: CGRect(x: 50, y: 50, width: 100, height: 100), parameters: buttonConfiguration)
        self.view.addSubview(menu)

        let stackMenu = StackMenu(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width , height: self.view.frame.size.height), configuration: [buttonConfiguration, buttonConfiguration, buttonConfiguration, buttonConfiguration])
        self.view.addSubview(stackMenu)
        stackMenu.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                        stackMenu.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                        stackMenu.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
                        stackMenu.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
                        stackMenu.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
                        ])
    }

}
