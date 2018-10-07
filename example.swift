//let var 
import UIKit

let name:String = "WonYoung"

var greeting = "Hello"

greeting += " " + name

let characters = name.characters
let count = characters.count

let url = "www.codershigh.com"
let hasProtocol = url.hasPrefix("http://")

print("\(name)")

let maxSpeed:Int = 200
var currentSpeed:Int = 110
currentSpeed += 10
currentSpeed += Int(20.5)

let intMax = Int.max
let UintMax = UInt.max
let intmin = Int.min
let Uintmin = UInt.min

let pi = 3.14
let divider = 2
let halfPi = 3.14/Double(divider)


let time1 = (9,0,48)
time1.0

let time2:(h:Int ,m:Int , s:Int) = (11,51,5)
time2.h
time2.m
time2.s

let duration = (time1,time2)

let (start,end) = duration
let endHour = end.h

typealias Time = (h:Int , m:Int , s:Int)
typealias Duration = (start:Time , end:Time)

let today:Duration = ((9,10,23), (17,8,21))
print("We studied until \(today.end.h) today")


//array
import UIKit

var meetingRooms:Array<String> = ["Bansky", "Rivera","Kahlo","Picasso","Cezznne","Matisse"]

var groups:[Int] = [10,8,14,9]

meetingRooms += ["Renoir"]

let maxSpeed:Int = 200

var currentSpeed:Int = 110
currentSpeed += 10

var speedHistory:[Int] = []
speedHistory += [currentSpeed]
let gpsSpeed0901 = 114.1
speedHistory.append(Int(gpsSpeed0901))

speedHistory[0]
speedHistory[1]
speedHistory.first
speedHistory.last

let historyBackup = speedHistory
speedHistory += [150]
historyBackup

//collection  dictionary ,set

var roomCapacity:[String:Int] = ["Bansky":4, "Rivera":8,"Kahlo":8, "Picasso":10,"Cezznne":20,"Matisse":30]
//roomCapacity += ["Renoir":40]
roomCapacity["Renoir"] = 40
roomCapacity["Kahlo"]

let roomNames = [String](roomCapacity.keys)
let capacities = [Int](roomCapacity.values)

let total = capacities.reduce(0,+)
let subway2 :Set = ["2","3","4","5","6"]
let subway3 :Set = ["3","5","7","8"]

let transfer = subway2.intersection(subway3)
let notTransfer = subway2.subtracting(subway3)
let union = subway2.union(subway3)
let exOR = subway2.symmetricDifference(subway3)

if transfer.count>0 {
    print("환승역은 \(transfer)입니다.")
} else {
    print("환승역은 없습니다. ")
}


for station in subway2 {
    print("이번 역은 \(station)입니다")
}

for (roomName, capacity) in roomCapacity {
    let roomDescription:String
    switch capacity {
    case 4:
        roomDescription = "\(roomName)은 스터디 룸 이며 정원은 \(capacity)명입니다."
    case 5...10:
        roomDescription = "\(roomName)은 팀 세미나 이며 정원은 \(capacity)명입니다."
    case 11...30:
        roomDescription = "\(roomName)은 그룹 세미나 룸이며 정원은 \(capacity)명입니다."
    case _ where capacity > 30:
        roomDescription = "\(roomName)의 정원은 \(capacity)명이며 별도의 사용신청이 필요합니다."
    default:
        roomDescription = "\(roomName)의 정보를 다시 확인해 주세요"
    }
}

//optional


var title : String? = "Storyboard Prototyping"
var ratings : [Int]? = nil
var supportURL : String? = nil

supportURL="www.coderhigh.com"

var bookDescription:String = "\(title)"
if ratings != nil {
    bookDescription += "has \(ratings!.count) ratings"
}
if supportURL != nil {
    bookDescription += "\r\nsupport web page: \(supportURL!)"
}
print("\(bookDescription)")

// print("\(title) has \(ratings!.count) ratings. \r\nsupport web page : \(supportURL)")

if let theURL = supportURL {
    bookDescription += "\r\nsupport web page: \(theURL)"
}


// struct
struct Task {
    var title:String
    var time:Int?
}

var callTask = Task(title: "Call to Randy", time: 10*60)

var reportTask = Task(title: "Report to Boss", time: nil)


var todayTask:[Task] = []
todayTask += [callTask, reportTask]

todayTask[1].time = 15*60
//see value type
callTask.title = "Call to Toby"

print("today task = \(todayTask[0])\(todayTask[1]) call task = \(callTask)")


