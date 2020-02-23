//
//  Date+Extension.swift
//  Group7FinalProjectS
//
//  Created by S@i on 2020-02-23.
//  Copyright © 2020 S@i. All rights reserved.
//

import Foundation
extension Date
{
    public func getForamttedDate() -> String
    {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "EEEE, dd-MM-YYYY"
        let formattedDate = dateFormatterPrint.string(from: self)
        return formattedDate
    }
}
