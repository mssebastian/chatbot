//
//  ViewController.swift
//  ChatBot
//
//  Created by Hugo Adolfo Perez Solorzano on 13/12/2016.
//  Copyright © 2016 OvalMoney. All rights reserved.
//

import UIKit
import SocketIO
import ObjectMapper


class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    let socket = SocketIOClient(socketURL: URL(string: "http://kate.stage.ovalmoney.com/")!, config: [.log(true), .forcePolling(true)])


    override func viewDidLoad() {
        super.viewDidLoad()
        
        socket.on("/") {data, ack in
            
            print("socket /")
            if let chatModel = Mapper<ChatResponseModel>().map(JSONObject: data){
                print(chatModel.message!)
            }
        
            if let cur = data[0] as? ChatResponseModel {
                self.socket.emitWithAck("canUpdate", cur.message!).timingOut(after: 0) {data in
                    //self.socket.emit("update", ["amount": cur + 2.50])
                }
                
                ack.with("Got your currentAmount", "dude")
            }
        }
        socket.connect()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Private Methods

    func establishConnection() {
        socket.connect()
    }
    
    
    func closeConnection() {
        socket.disconnect()
    }

}
