//
//  ViewController.swift
//  HandRecogCentral
//
//  Created by Vidur Satija on 15/10/16.
//  Copyright © 2016 Aromatic Studios. All rights reserved.
//

import Cocoa
import MultipeerConnectivity

class ViewController: NSViewController, MPCManagerDelegate {
    
    let appDelegate = NSApplication.shared().delegate as! AppDelegate
    var mpcManager: MPCManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        mpcManager = MPCManager()
        mpcManager.delegate = self
        // Do any additional setup after loading the view.
        
        mpcManager.browser.startBrowsingForPeers()
    }
    
    func foundPeer() {
        mpcManager.browser.invitePeer(mpcManager.foundPeers[0] as MCPeerID, to: mpcManager.session, withContext: nil, timeout: 20)
    }
    
    func connectedWithPeer(_ peerID: MCPeerID) {
        //startReading()
    }


}

