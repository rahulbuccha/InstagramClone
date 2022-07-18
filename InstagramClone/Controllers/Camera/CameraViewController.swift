//
//  CameraViewController.swift
//  InstagramClone
//
//  Created by Admin on 11/07/22.
//

import UIKit
import PhotosUI

class CameraViewController: UIViewController, PHPickerViewControllerDelegate {
   


    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      

    }
    
    @IBAction func addPhotos(_ sender: Any) {
        var configuration = PHPickerConfiguration()
        configuration.selectionLimit = 2 // Selection limit. Set to 0 for unlimited.
        configuration.filter = .images  // he types of media that can be get.
        
        // configuration.filter = .any([.videos,livePhotos]) // Multiple types of media
        
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = self
        present(picker, animated: true)
        
    }
    
    @IBAction func openCamera(_ sender: Any) {
        
    }
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)
            // First Photo
            if let firstItemProvider = results.first?.itemProvider {
                if firstItemProvider.canLoadObject(ofClass: UIImage.self) {
                    firstItemProvider.loadObject(ofClass: UIImage.self) { [weak self] image, error  in
                        if let firstImage = image as? UIImage,  let safeSelf = self {
                            DispatchQueue.main.async {
                                safeSelf.image1.image = firstImage
                            }
                        }
                    }
                }
            }

            // Second Photo
            if results.count > 1 {
                let secondItemProvider = results[1].itemProvider
                if secondItemProvider.canLoadObject(ofClass: UIImage.self) {
                    secondItemProvider.loadObject(ofClass: UIImage.self) { [weak self]  image, error in
                        if let secondImage = image as? UIImage,  let safeSelf = self {
                            DispatchQueue.main.async {
                                safeSelf.image2.image = secondImage
                            }
                        }
                    }
                }
            }
        }
    }
    
    
}

