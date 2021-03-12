//
//  ImagePicker.swift
//  PhotoPickerApp
//
//  Created by Reda Mehali on 3/12/21.
//

import UIKit
import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
        
    @Binding var selectedImage: UIImage?
    @Environment(\.presentationMode) var isPresented
    var sourceType: UIImagePickerController.SourceType
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = self.sourceType
            return imagePicker
        }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
        }
    
    // Connecting the Coordinator class with this struct
        func makeCoordinator() -> Coordinator {
            return Coordinator(picker: self)
        }
}
