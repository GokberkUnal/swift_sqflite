//
//  classModel.swift
//  swift_sqflite
//
//  Created by Orhan Gökberk Ünal on 14.11.2021.
//

import Foundation

class ClassModel :ObservableObject{
    private let sqlManager: DBManager = DBHelper()
    
    @Published var keyInput: String = ""
    @Published var value: String = ""
    @Published var isAvailable = false
    @Published var isFounded = false
    
    
    func search() -> Void {
        if keyInput.isEmpty { return }
        
        let foundValue = sqlManager.search(key: keyInput) ?? ""
        
        value = foundValue
        
        if value.isEmpty {
            checkIsAvailabel(true)
        }
        else{
            checkIsFounded(true)
        }
    }
    
    func checkIsAvailabel(_ value:Bool){
        isAvailable=true
        
    }
    func checkIsFounded(_ value:Bool){
        isFounded=true
        
    }
    
    
  
}
