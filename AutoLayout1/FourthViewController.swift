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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
