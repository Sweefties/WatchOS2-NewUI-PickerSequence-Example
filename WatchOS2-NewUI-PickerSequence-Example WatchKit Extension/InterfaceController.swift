//
//  InterfaceController.swift
//  WatchOS2-NewUI-PickerSequence-Example WatchKit Extension
//
//  Created by Wlad Dicario on 24/08/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var pickerSequence: WKInterfacePicker!
    var pickerItems: [WKPickerItem] = []
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        setDataList()
        // call to set datas with generator map
        //setDataListByMap()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func selectedItem(value: Int) {
        print("Sequence Picker: \(value) selected")
    }

}

//MARK: Interface Controller Extension
extension InterfaceController {
    
    // set Data List for Picker Stack.
    func setDataList() {
        for i in 0...100 {
            let item = WKPickerItem()
            item.contentImage = WKImage(imageName: "single\(i)")
            pickerItems.append(item)
        }
        self.pickerSequence.setItems(pickerItems)
    }
    
    // set Data List for Picker Sequence - Generator Example.
    func setDataListByMap() {
        let pickerItems: [WKPickerItem] = (0...100).map {
            let pickerItem = WKPickerItem()
            pickerItem.contentImage = WKImage(imageName: "single\($0)")
            return pickerItem
        }
        self.pickerSequence.setItems(pickerItems)
    }
}