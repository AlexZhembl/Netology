//
//  ViewController.swift
//  local notification demo
//
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registerNotification(_ sender: UIButton) {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound, .badge, .provisional]) { granted, error in
            if granted {
                print("Доступ к уведомлениям получен")
            }
            else {
                print("Доступ не получен")
            }
        }
    }
    
    @IBAction func scheduleNotification(_ sender: Any) {
        registerCategories()

        let center = UNUserNotificationCenter.current()
        center.removeAllPendingNotificationRequests()
        
        let content = UNMutableNotificationContent()

        content.title = "Сделать домашнее задание N2"
        content.body = "Нужно настроить уведомления для приложения ВК"
        content.sound = .default
        content.categoryIdentifier = "myNotificationCategory"

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    
    func registerCategories() {
        let center = UNUserNotificationCenter.current()
        center.delegate = self
        
        let actionShow = UNNotificationAction(identifier: "Показать-12312", title: "Показать больше", options: .foreground)

        let category = UNNotificationCategory(identifier: "Alarm", actions: [actionShow], intentIdentifiers: [], options: [])
        
        center.setNotificationCategories([category])
    }
}





extension ViewController: UNUserNotificationCenterDelegate {

    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {

        switch response.actionIdentifier {
        case UNNotificationDefaultActionIdentifier:
            // пользователь нажал на уведомление снова, но не на нашу кнопку
            print("Default Identifier")
        case "Показать-12312":
            print("Показать больше информации")
        default:
            break
        }
        completionHandler()
    }
}

