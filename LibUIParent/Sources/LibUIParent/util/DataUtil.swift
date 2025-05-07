//
//  File.swift
//
//
//  Created by Kavimal Wijewardana on 10/24/23.
//

import Foundation

public class DataUtil {

    /**
     This method can convert a given object into JSON string.
     encode into JSONString
     @return String
     */
    public static func getJSONStringFromObject<T: Codable>(data: T) -> String? {
        guard let encodeData = try? JSONEncoder().encode(data) else { return nil }
        let jsonString = String(data: encodeData, encoding: String.Encoding.utf8)
        return jsonString
    }

    /**
     This method can convert a  JSONString into given Object type
     decode into Object
     @return given object
     */
    public static func getObjectFromJSONString<T: Codable>(jsonString: String, dataType: T.Type) -> T? {
        let encodedData = jsonString.data(using: .utf8)!
        guard let dataObject = try? JSONDecoder().decode(T.self, from: encodedData) else { return nil }
        return dataObject
    }

    /**
     This method can convert a normal string into base64encoded string
     @return base64encoded - String
     */
    public static func encodeToBase64(dataString: String) -> String? {
        if let data = dataString.data(using: .utf8) {
            return data.base64EncodedString()
        } else {
            return nil
        }
    }

    /**
     This method can convert a base64encoded string into normal string
     @return normal data - String
     */
    public static func decodeBaes64ToString(encodedString: String) -> String? {
        if let decodedData = Data(base64Encoded: encodedString) {
            return String(data: decodedData, encoding: .utf8)!
        } else {
            return nil
        }
    }
}
