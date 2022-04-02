//
//  ViewController.swift
//  local notification demo
//
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBAction func registerNotification(_ sender: UIButton) {
        let center = UNUserNotificationCenter.current()

        center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                print("Доступ к уведомлениям получен")
            }
            else {
                print("Доступ не получен")
            }
        }
    }
    
    @IBAction func scheduleNotification(_ sender: Any) {
        let center = UNUserNotificationCenter.current()

        center.removeAllPendingNotificationRequests()
        center.removePendingNotificationRequests(withIdentifiers: ["1231231"])

        let content = UNMutableNotificationContent()
        content.title = "Сделать домашнее задание"
        content.body = "Нужно настроить уведомления для приложения ВК"
        content.sound = .default
        content.badge = 3


        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

        let request = UNNotificationRequest(identifier: NSUUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
}

