//
//  ViewController.swift
//  FrameKitDriver
//
//  Created by Vitor Silva on 01/11/19.
//  Copyright © 2019 Vitor Silva. All rights reserved.
//

import Cocoa
import FrameKit
import WebKit

class ViewController: NSViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: view.frame)
        webView.navigationDelegate = self
        
        // Do any additional setup after loading the view.
        let frame = Page {
            Head()
            Body {
                Paragraph("Hello World!")
            }
        }
        
        let element = frame.synthesize()
        
        webView.load(URLRequest(url: URL(string: "https://google.com")!))
        webView.reload()
        //webView.loadHTMLString(element.render(), baseURL: nil)
        
        view.addSubview(webView)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

