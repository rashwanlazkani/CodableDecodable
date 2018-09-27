//
//  ViewController.swift
//  CodableDecodable
//
//  Created by Rashwan Lazkani on 2018-01-21.
//  Copyright © 2018 Rashwan Lazkani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1
        //encodeAndDecodeObject()
        //encodeAndDecodeArray()
        
        //2
        //getSport() // Matching without CodingKeys
        //getTV() // One mismatch codingKey 'SomeOptional' need all CodingKeys
        //getPerson() // Getting nil
        getCommuterParkings() // Getting a nested object array
        //getCommuterParkingsTwo()
    }
    
    func encodeAndDecodeObject() {
        let person = Person(id: 0, name: "Rashwan", age: 30, someOptional: nil)
        if let encoded = try? JSONEncoder().encode(person) {
            if let json = String(data: encoded, encoding: .utf8) {
                print(json)
            }
            
            if let decoded = try? JSONDecoder().decode(Person.self, from: encoded) {
                print(decoded)
            }
        }
    }
    
    func encodeAndDecodeArray() {
        let p1 = Person(id: 0, name: "John Doe", age: 30, someOptional: nil)
        let p2 = Person(id: 0, name: "Jane Doe", age: 30, someOptional: nil)
        let persons = [p1, p2]
        if let encoded = try? JSONEncoder().encode(persons) {
            if let json = String(data: encoded, encoding: .utf8) {
                print(json)
            }
            
            if let decoded = try? JSONDecoder().decode(Array<Person>.self, from: encoded) {
                for person in decoded {
                    print(person)
                }
            }
        }
    }
    
    func getSport() {
        do {
            let data = Data(JSON.sport.utf8)
            let decoded = try JSONDecoder().decode(Sport.self, from: data)
            print(decoded)
            print(decoded.name)
        } catch let error {
            print(error)
        }
    }
    
    func getTV() {
        do {
            let data = Data(JSON.tv.utf8)
            let decoded = try JSONDecoder().decode(TV.self, from: data)
            print(decoded)
            print(decoded.channel)
        } catch let error {
            print(error)
        }
    }
    
    func getPerson() {
        do {
            let data = Data(JSON.person.utf8)
            let decoded = try JSONDecoder().decode(Person.self, from: data)
            print(decoded)
            print(decoded.someOptional)
        } catch let error {
            print(error)
        }
    }
    
    func getCommuterParkings() {
        do {
            let data = Data(JSON.commupterParkings.utf8)
            let parkings = try JSONDecoder().decode(Array<CommuterParking>.self, from: data)
            for parking in parkings {
                print(parking)
            }
            
            let sortedASC = parkings.sorted(by: { $0.id < $1.id })
            let sortedDESC = parkings.sorted(by: { $0.id > $1.id })
            
        } catch let error {
            print(error)
        }
        
        
    }
    
    func getCommuterParkingsTwo() {
        do {
            let data = Data(JSON.commupterParkingsTwo.utf8)
            let decoded = try JSONDecoder().decode(Array<CommuterParkingTwo>.self, from: data)
            for parking in decoded {
                print(parking)
            }
        } catch let error {
            print(error)
        }
    }
}

