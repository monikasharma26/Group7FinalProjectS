//
//  FinalOutput.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-24.
//  Copyright © 2020 S@i. All rights reserved.
//
import Cocoa

class FinalOutput {

    private init() {}
    
    // MARK:- Singleton class to manage final output data
    static let shared = FinalOutput()
    
    private var finalText: String = ""
    
    // MARK:- Add new text in final output and print
    func addNew(text: String) {
        print(text)
        finalText.append(text)
        finalText.append("\n")
    }

    // MARK:- Write to the file on disk
    func writeToFile() {
        finalText.addToFile()
    }
}

