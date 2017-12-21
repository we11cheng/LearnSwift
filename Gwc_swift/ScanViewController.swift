//
//  ScanViewController.swift
//  Gwc_swift
//
//  Created by admin on 21/12/2017.
//  Copyright © 2017 guanweicheng. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class ScanViewController: UIViewController ,AVCaptureMetadataOutputObjectsDelegate {
    
    let device = AVCaptureDevice.devices(for: AVMediaType.metadata)
    let session = AVCaptureSession()
    var layer: AVCaptureVideoPreviewLayer?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "扫描二维码"
        self.setBaseUI()
    }
    
    func setBaseUI() -> Void {
        let labIntroudction = UILabel(frame: CGRect.init(x: 0, y: 64, width: kScreenWidth, height: 50))
        labIntroudction.backgroundColor = UIColor.clear
        labIntroudction.numberOfLines = 2
        labIntroudction.textColor = UIColor.black
        labIntroudction.text = "将二维码图像置于矩形方框内，离手机摄像头10CM左右，系统会自动识别。"
        labIntroudction.sizeToFit()
        self.view.addSubview(labIntroudction)
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        let item0 = UIBarButtonItem.init(title: "开灯", style: UIBarButtonItemStyle.plain, target: self, action: #selector(trunOnLap))
        let item1 = UIBarButtonItem.init(title: "扫描", style: UIBarButtonItemStyle.plain, target: self, action: #selector(startScan))
        let flexibleSpaceItem = UIBarButtonItem(barButtonSystemItem : (UIBarButtonSystemItem.flexibleSpace), target: self, action: nil)
        toolBar.items = [flexibleSpaceItem,item0,flexibleSpaceItem,item1,flexibleSpaceItem,]
        toolBar.frame = CGRect.init(x: 0, y: kScreenHeight-44, width: kScreenWidth, height: 44)
        self.view.addSubview(toolBar)
    }
    
    @objc func trunOnLap() {
        print("trunOnLap")
    }
    
    @objc func startScan() {
        print("startScan")
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
