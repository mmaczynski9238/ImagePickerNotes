//
//  ViewController.swift
//  CameraAndPhotoLibraryDemo
//
//  Created by Mobile Makers on 7/11/15.
//  Copyright (c) 2015 YourSchool. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

   let imagepicker = UIImagePickerController()
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagepicker.delegate = self
    }

    @IBAction func cameraButtonTapped(sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)
        {
        imagepicker.sourceType = UIImagePickerControllerSourceType.Camera
        presentViewController(imagepicker, animated: true, completion: nil)
        }
        else
        {
        imagepicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagepicker, animated: true, completion: nil)
        }
    }

    @IBAction func photoLibraryTapped(sender: UIButton) {
        imagepicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagepicker, animated: true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
    
        imagepicker.dismissViewControllerAnimated(true, completion: {
        
            
                var selectedImage = info[UIImagePickerControllerOriginalImage]
                    as! UIImage
            self.imageView.image = selectedImage
            })
        //
        
    }
}

