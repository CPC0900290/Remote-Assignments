//
//  ViewController.swift
//  FetchingData
//
//  Created by Pin Chen on 2024/1/31.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var stationID: UILabel!
  @IBOutlet weak var stationName: UILabel!
  @IBOutlet weak var address: UILabel!
    
  override func viewDidLoad() {
    super.viewDidLoad()
// Calling the completion handler method
//    if let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station") {
//      fetchData(with: url)
//    } else {
//      return
//    }
    // Calling async await method
    guard let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station") else { return }
    Task {
      do {
        try await fetch(url: url)
      }
      catch {
        print(error)
      }
    }
  }
  // Using async await to connect with URLSession
  func fetch(url: URL) async throws {
    let session = URLSession(configuration: .default)
    let (data, _) = try await session.data(from: url)
    let decoder = JSONDecoder()
    let resultData = try decoder.decode(Station.self, from: data)
    DispatchQueue.main.async {
      self.stationID.text = resultData.stationID
      self.stationName.text = resultData.stationName
      self.address.text = resultData.stationAddress
    }
  }
  
  // Using completion handler to connect with URLSession
  func fetchData(with url: URL) {
    let session = URLSession(configuration: .default)
    let task = session.dataTask(with: url) {
      data, response, error in
      guard let httpResponse = response as? HTTPURLResponse,
            httpResponse.statusCode == 200,
            let data = data else {
              return
            }

      let decoder = JSONDecoder()
      do {
        let result = try decoder.decode(Station.self, from: data)
        DispatchQueue.main.async {
          self.stationID.text = result.stationID
          self.stationName.text = result.stationName
          self.address.text = result.stationAddress
        }
      }
      catch {
        print(error)
      }
      // Using json serialization to deal with data
      //      guard let result = String(data: data, encoding: .utf8) else {
      //        return
      //      }

      //            if let resultDictionary = result.toDictionary {
      //                let finalResult = resultDictionary.mapValues{ String(describing: $0) }
      //                let queue = OperationQueue.main
      //                queue.addOperation {
      //                    self.stationID.text = finalResult["stationID"]
      //                    self.stationName.text = finalResult["stationName"]
      //                    self.address.text = finalResult["stationAddress"]
      //                }
      //            } else {
      //                return
      //            }

    }
    task.resume()
  }
}

extension String {
  var toDictionary: [String: Any]? {
    let data = Data(self.utf8)
    do {
      if let dictionary = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed) as? [String: Any] {
        return dictionary
      }
    } catch let error as NSError {
      print("Failed to load: \(error.localizedDescription)")
    }
    return nil
  }
}

struct Station: Codable {
  let stationID: String
  let stationName: String
  let stationAddress: String
}
