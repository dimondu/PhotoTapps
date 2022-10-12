//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Дмитрий Дуров on 30.08.2022.
//

import UIKit

class PhotoViewController: UIViewController {
    var image: UIImage!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        let shareController = UIActivityViewController(activityItems: [image as Any], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, Bool, _, _ in
            if Bool {
                print("успешно")
            }
        }
        
        present(shareController, animated: true, completion: nil)
    }
}
