//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func getRejectedRequests(_ requests: [String], _ limitPerSecond: Int) -> [Int] {
    var rejectedRequests = [Int]()
    var requestLog = [String: [(Int, Int)]]()  // Maps IP to [(timestamp, request_id)]
    
    for request in requests {
        let components = request.split(separator: " ")
        
        // Ensure there are exactly 3 components in the request string.
        guard components.count == 3,
              let requestId = Int(components[0]),
              let timestamp = Int(components[2]) else {
            continue  // Skip any malformed requests
        }
        
        let ipAddress = String(components[1])
        
        // Check if this IP already has a log; if not, initialize an empty log for it.
        if requestLog[ipAddress] == nil {
            requestLog[ipAddress] = [(timestamp, requestId)]
        } else {
            // Filter out requests older than 1 second (1000 ms) for the current IP.
            requestLog[ipAddress] = requestLog[ipAddress]?.filter { timestamp - $0.0 < 1000 } ?? []
            
            if let currentLog = requestLog[ipAddress], currentLog.count >= limitPerSecond {
                // Reject the request if the count reaches the limit
                rejectedRequests.append(requestId)
            } else {
                // Otherwise, add the request to the log
                requestLog[ipAddress]?.append((timestamp, requestId))
            }
        }
    }
    return rejectedRequests
}

let requests3 = [
    "1 203.0.113.195 100",
    "2 203.0.113.195 1200",
    "3 xyzabc123 1",
]
let limitPerSecond3 = 1
print(getRejectedRequests(requests3, limitPerSecond3))
