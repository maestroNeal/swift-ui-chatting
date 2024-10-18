//
//  ConstantFile.swift
//  swift ui chatting
//
//  Created by Rahul Gangwar on 15.10.2024.
//


struct chatMessages{
    var message : String
    let isSended: Bool?
    let time : String
    let idValue : String
    var isAnimationCompleted : Bool?
    var charIndex : Int?
    var responceTime : Double?
    var isRecording : Bool?
}

//var messagesArray1: [chatMessages] = []
var messagesArray: [chatMessages] = [
    chatMessages(message: "Hello!", isSended: true, time: "10:00 AM", idValue: "1", isAnimationCompleted: true, charIndex: 5, responceTime: 0.5, isRecording: false),
    chatMessages(message: "Hi, how are you?", isSended: false, time: "10:01 AM", idValue: "2", isAnimationCompleted: true, charIndex: 12, responceTime: 1.0, isRecording: false),
    chatMessages(message: "I'm doing great!", isSended: true, time: "10:02 AM", idValue: "3", isAnimationCompleted: true, charIndex: 13, responceTime: 0.8, isRecording: false),
    chatMessages(message: "What about you?", isSended: true, time: "10:03 AM", idValue: "4", isAnimationCompleted: true, charIndex: 13, responceTime: 0.9, isRecording: false),
    chatMessages(message: "I'm fine too, thank you!", isSended: false, time: "10:04 AM", idValue: "5", isAnimationCompleted: true, charIndex: 22, responceTime: 1.2, isRecording: false),
    chatMessages(message: "Any plans for today?", isSended: true, time: "10:05 AM", idValue: "6", isAnimationCompleted: false, charIndex: 20, responceTime: 0.6, isRecording: false),
    chatMessages(message: "Not yet, just relaxing.", isSended: false, time: "10:06 AM", idValue: "7", isAnimationCompleted: true, charIndex: 19, responceTime: 1.0, isRecording: false),
    chatMessages(message: "That sounds good.", isSended: true, time: "10:07 AM", idValue: "8", isAnimationCompleted: true, charIndex: 15, responceTime: 0.7, isRecording: false),
    chatMessages(message: "What about you?", isSended: false, time: "10:08 AM", idValue: "9", isAnimationCompleted: true, charIndex: 13, responceTime: 1.0, isRecording: false),
    chatMessages(message: "I'll probably watch a movie later.", isSended: true, time: "10:09 AM", idValue: "10", isAnimationCompleted: false, charIndex: 30, responceTime: 0.5, isRecording: false),
    chatMessages(message: "Nice! Any recommendations?", isSended: false, time: "10:10 AM", idValue: "11", isAnimationCompleted: true, charIndex: 22, responceTime: 1.3, isRecording: false),
    chatMessages(message: "Maybe an action movie?", isSended: true, time: "10:11 AM", idValue: "12", isAnimationCompleted: true, charIndex: 21, responceTime: 0.9, isRecording: false),
    chatMessages(message: "I love action movies.", isSended: false, time: "10:12 AM", idValue: "13", isAnimationCompleted: true, charIndex: 19, responceTime: 1.2, isRecording: false),
    chatMessages(message: "I'll let you know how it is.", isSended: true, time: "10:13 AM", idValue: "14", isAnimationCompleted: true, charIndex: 24, responceTime: 0.8, isRecording: false),
    chatMessages(message: "Sounds good!", isSended: false, time: "10:14 AM", idValue: "15", isAnimationCompleted: true, charIndex: 11, responceTime: 1.0, isRecording: false),
    chatMessages(message: "Do you like sci-fi?", isSended: true, time: "10:15 AM", idValue: "16", isAnimationCompleted: false, charIndex: 14, responceTime: 0.6, isRecording: false),
    chatMessages(message: "Yes! I'm a big fan.", isSended: false, time: "10:16 AM", idValue: "17", isAnimationCompleted: true, charIndex: 17, responceTime: 1.1, isRecording: false),
    chatMessages(message: "Awesome! I have a few recommendations.", isSended: true, time: "10:17 AM", idValue: "18", isAnimationCompleted: false, charIndex: 32, responceTime: 0.9, isRecording: false),
    chatMessages(message: "Please share them! Please share them! Please share them! Please share them! Please share them! Please share them! Please share them! Please share them!", isSended: false, time: "10:18 AM", idValue: "19", isAnimationCompleted: true, charIndex: 17, responceTime: 1.3, isRecording: false),
    chatMessages(message: "I'll send a list soon.", isSended: true, time: "10:19 AM", idValue: "20", isAnimationCompleted: false, charIndex: 18, responceTime: 0.7, isRecording: false)
]
