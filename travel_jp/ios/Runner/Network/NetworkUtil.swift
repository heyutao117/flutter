//
//  NetworkUtil.swift
//  Runner
//
//  Created by xyt on 2022/6/27.
//

import UIKit
import Alamofire

protocol NetworkUtilProtocal {
    static func getRequest(URLString:String,parameters:[String:Any]?,callback:@escaping(_ result:Any)->());
    static func postRequest(URLString:String,parameters:[String:Any]?,callback:@escaping(_ result:Any)->());
}

enum MethodType {
    case get
    case post
}

class NetworkUtil{
    class func requestData(_ type:MethodType,URLString:String,parameters:[String:Any]?,callback:@escaping(_ result:Any)->())  {
        let method = type == MethodType.get ? HTTPMethod.get : HTTPMethod.post
        Alamofire.request(URLString, method: method, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result{
            case .success(let json):
                callback(json)
                break
            case .failure:
                callback("error"+URLString)
                break
        }
    }
  }

}
