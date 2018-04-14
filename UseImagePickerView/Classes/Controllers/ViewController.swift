//
//  ViewController.swift
//  UseImagePickerView
//
//  Created by Miyoshi Masataka on 2018/04/14.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlet
    
    @IBOutlet private var imageView: UIImageView!
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction private func cameraButtonTapped(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.allowsEditing = true
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
}

// MARK: - UIImagePickerControllerDelegate
/*******************************************************************************************/
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        dismiss(animated: true, completion: nil)
        let editImage = info[UIImagePickerControllerEditedImage] as? UIImage
        let originImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        imageView.image = editImage != nil ? editImage : originImage
    }
    
}






















