//
//  main.swift
//  Day Counter
//
//  Created by Christopher Schepman on 10/21/16.
//  Copyright © 2016 Christopher Schepman. All rights reserved.
//

import Foundation

if CommandLine.arguments.count < 2 {
    print("need at least one arg!")
    exit(EXIT_FAILURE)
}

let formatter = DateFormatter()
formatter.locale = Locale.current
formatter.dateStyle = .medium
formatter.timeStyle = .none

let dateNumString = CommandLine.arguments[1]

let dateNum = Int(dateNumString)
//let dateNum = 5771

var calendar = Calendar.current

var refComponents = DateComponents()
refComponents.day = 1
refComponents.month = 1
refComponents.year = 2001

let referenceDate = calendar.date(from: refComponents)

var addingComponents = DateComponents()
addingComponents.day = dateNum

var newDate = calendar.date(byAdding: addingComponents, to: referenceDate!, wrappingComponents: false)

print(formatter.string(from: newDate!))

exit(EXIT_SUCCESS)
