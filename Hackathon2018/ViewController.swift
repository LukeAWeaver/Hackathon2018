//
//  ViewController.swift
//  Hackathon2018
//
//  Created by Luke Weaver on 4/21/18.
//  Copyright © 2018 Luke Weaver. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVCaptureVideoDataOutputSampleBufferDelegate  {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeButtonCircle()
        setupCaptureSession();
        
    }
    
 
    


    
    
    
    
    
    
    
    
    
    
//starts session for image to be captured
    func setupCaptureSession() {
        let captureSession = AVCaptureSession()
        
        // search for available capture devices
        let availableDevices = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera], mediaType: AVMediaType.video, position: .back).devices
        
        // setup capture device, add input to our capture session
        do {
        if let captureDevice = availableDevices.first {
        let captureDeviceInput = try AVCaptureDeviceInput(device: captureDevice)
        captureSession.addInput(captureDeviceInput)
        }
        } catch {
        print(error.localizedDescription)
        }
        
        // setup output, add output to our capture session
        let captureOutput = AVCaptureVideoDataOutput()
        captureOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoQueue"))
        captureSession.addOutput(captureOutput)
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.frame
        view.layer.addSublayer(previewLayer)
        
        captureSession.startRunning()
    }
    
    

    
//make button circular
    func makeButtonCircle(){
        self.sampleText.layer.shadowColor = UIColor.black.cgColor
        self.sampleText.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.sampleText.layer.masksToBounds = false
        self.sampleText.layer.shadowRadius = 1.0
        self.sampleText.layer.shadowOpacity = 0.5
        self.sampleText.layer.cornerRadius = btn.frame.width / 2
    }
    
    
    

    


    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




