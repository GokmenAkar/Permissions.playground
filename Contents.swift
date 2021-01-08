import Foundation

struct NotificationPermissions: OptionSet {

    let rawValue: Int

    static let marketingEmails = NotificationPermissions(rawValue: 1 << 0)
    static let marketingSMS = NotificationPermissions(rawValue: 1 << 1)
    static let marketingPush = NotificationPermissions(rawValue: 1 << 2)
    static let adSocialMedia = NotificationPermissions(rawValue: 1 << 3)
}

let notificationPermisson = NotificationPermissions(rawValue: 9)

let isEmailEnabled = notificationPermisson.contains(.marketingEmails)
let isSMSEnabled = notificationPermisson.contains(.marketingSMS)
let isPushEnabled = notificationPermisson.contains(.marketingPush)
let isAdSocialMediaEnabled = notificationPermisson.contains(.adSocialMedia)

print(
    isEmailEnabled,
    isSMSEnabled,
    isPushEnabled,
    isAdSocialMediaEnabled
)
