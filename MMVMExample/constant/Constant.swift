//
//  Constant.swift
//  StudentCollege
//
//  Created by SOTSYS027 on 17/02/18.
//  Copyright © 2018 SOTSYS027. All rights reserved.
//

import Foundation

// MARK: - Identifier
struct Identifier {
    static let studentCell = "StudentCell"
    static let studentDetail = "StudentDetailViewController"
    static let studentForm = "StudentFormViewController"
    static let collegeForm = "CollegeFormViewController"
    static let collegeCell = "CollegeCell"
    static let collegeDetail = "CollegeDetailViewController"
    static let studentStory = "Student"
    static let collegeStory = "College"
    static let studentList = "StudentListViewController"
}

// MARK: - FieldNames
struct Field{
    static let name = "name"
    static let email = "email"
    static let phone = "phone"
    static let bdate = "bdate"
    static let address = "address"
    static let city = "city"
    static let uni = "uni"
    static let emptyString = ""
}

// MARK: - AlertField Names
struct AlertField{
    static let studentTitle = "Student"
    static let collegeTitle = "College"
    static let messName = "Please Enter Name"
    static let messEmail = "Please Enter Email"
    static let messPhone = "Please Enter Phone Number"
    static let messBdate = "Please Enter BirthDate MM/dd/YYYY"
    static let messAddress = "Please Enter Address"
    static let messCity = "Please Enter City"
    static let messUni = "Please Enter University"
}

// MARK: - LabelNames / Fields
struct LabelField{
    static let name = "Name "
    static let email = "Email "
    static let phone = "Phone "
    static let bdate = "Birthdate "
    static let age = "Age "
    static let collegeName = "College Name "
    static let studentCount = "Student "
    static let address = "Address "
    static let city = "City "
    static let uni = "UniverSity "
}

// MARK: - Predicate Names
struct PreField{
    static let name = "name contains[cd] %@"
    static let uName = "universities.name contains[cd] %@"
}

// MARK: - Error Names
struct ErrTitle {
    static let errSave = "Data Could not be Save"
    static let errEdit = "Data Could not be Edit"
    static let errDelete = "Data Could not be Delete"
    static let errGet = "Data Could not be Get "
}

