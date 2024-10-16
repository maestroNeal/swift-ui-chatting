//
//  NetworkResponce.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 16/10/24.
//

enum ResponseCode: Int {
    // MARK: - 2xx Success
    case ok = 200
    case created = 201
    case accepted = 202
    case noContent = 204

    // MARK: - 4xx Client Errors
    case badRequest = 400
    case unauthorized = 401
    case forbidden = 403
    case notFound = 404
    case unprocessableEntity = 422

    // MARK: - 5xx Server Errors
    case internalServerError = 500
    case serviceUnavailable = 503

    // MARK: - Description Properties
    var shortMessage: String {
        switch self {
        case .ok, .created, .accepted, .noContent:
            return "Success"
        case .badRequest:
            return "Bad Request"
        case .unauthorized:
            return "Unauthorized"
        case .forbidden:
            return "Forbidden"
        case .notFound:
            return "Not Found"
        case .unprocessableEntity:
            return "Unprocessable Entity"
        case .internalServerError:
            return "Server Error"
        case .serviceUnavailable:
            return "Service Unavailable"
        }
    }

    var detailedMessage: String {
        switch self {
        case .ok:
            return "The request was successful."
        case .created:
            return "The resource was successfully created."
        case .accepted:
            return "The request has been accepted for processing."
        case .noContent:
            return "The request was successful, but there is no content to send."
        case .badRequest:
            return "The request could not be understood due to invalid syntax."
        case .unauthorized:
            return "Authentication is required to access the resource."
        case .forbidden:
            return "You do not have permission to access this resource."
        case .notFound:
            return "The requested resource could not be found."
        case .unprocessableEntity:
            return "The server was unable to process the request due to invalid data."
        case .internalServerError:
            return "The server encountered an unexpected condition."
        case .serviceUnavailable:
            return "The service is temporarily unavailable. Please try again later."
        }
    }

    // MARK: - Factory Method for Handling Unknown Codes
    static func from(_ code: Int) -> ResponseCode {
        return ResponseCode(rawValue: code) ?? .internalServerError
    }

    // MARK: - Custom Message for Any Status Code
    static func message(for code: Int) -> String {
        return from(code).detailedMessage
    }
}
