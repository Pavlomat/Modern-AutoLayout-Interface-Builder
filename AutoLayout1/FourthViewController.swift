//
//  FourthViewController.swift
//  AutoLayout1
//
//  Created by Pavlov Matvey on 25.10.2022.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet var stackView: UIStackView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
    if previousTraitCollection?.preferredContentSizeCategory !=
          traitCollection.preferredContentSizeCategory {
    configureView(for: traitCollection) }
    }
    
    private func configureView(for traitCollection: UITraitCollection) {
    let contentSize =
    traitCollection.preferredContentSizeCategory
        if contentSize.isAccessibilityCategory {
          stackView.axis = .vertical
        stackView.alignment = .leading } else {
             stackView.axis = .horizontal
             stackView.alignment = .center
           }
       }
}
