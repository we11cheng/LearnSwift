//
//  ReportViewController.swift
//  Gwc_swift
//
//  Created by admin on 21/12/2017.
//  Copyright © 2017 guanweicheng. All rights reserved.
//

import UIKit
import LLCycleScrollView

class ReportViewController: UIViewController {
    
    var homeBanner: LLCycleScrollView!
    
    func setupBanner() -> Void {
        self.homeBanner = LLCycleScrollView.init(frame: CGRect.init(x: 0, y: 64, width: kScreenWidth, height: 240));
        // 网络图，本地图混合
        let imagesURLStrings = [
            "http://www.g-photography.net/file_picture/3/3587/4.jpg",
            "http://img2.zjolcdn.com/pic/0/13/66/56/13665652_914292.jpg",
            "http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg",
            "http://img3.redocn.com/tupian/20150806/weimeisheyingtupian_4779232.jpg",
            ];
//        let titles = ["感谢您的支持1",
//                      "感谢您的支持2",
//                      "如果代码在使用过程中出现问题",
//                      "您可以发邮件到coderjianfeng@foxmail.com您可以发邮件到coderjianfeng@foxmail.com"
//        ];
        self.homeBanner.imagePaths = imagesURLStrings
        //self.homeBanner.titles = titles
        
        // 新增图片显示控制
        self.homeBanner.imageViewContentMode = .scaleToFill
        self.homeBanner.customPageControlStyle = .image
        self.homeBanner.pageControlPosition = .center
        //self.homeBanner.pageControlActiveImage = UIImage.init(named: "lldotActive")
//self.homeBanner.pageControlInActiveImage = UIImage.init(named: "lldotInActive")
        self.homeBanner.customPageControlStyle = .system
        self.view.addSubview(self.homeBanner)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "报表";
        self.setupBanner()
        let rightItem = UIBarButtonItem.init(title: "扫描", style: UIBarButtonItemStyle.plain, target: self, action: #selector(scan))
        self.navigationItem.rightBarButtonItem = rightItem;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func scan() -> Void {
        print("scan")
        let scan = ScanViewController()
        self.navigationController?.pushViewController(scan, animated: true)
        
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
