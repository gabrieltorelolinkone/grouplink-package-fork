# Group Link iOS Package

Group Link is an IoT and LaaS technology vendor providing innovative software-based network technology. Its unique approach
enables a global Low-Power WAN with unprecedented coverage, leveraging on the connectivity spectrum of surrounding smartphones. GL
devices are built under a proprietary, miniaturized and cost-effective design, with no maintenance requirements. Our protocol
provides communication at low power between sensors, gateways, and data collection points. These features offer Group Link unique
differentials and enable the massification of IoT in a broad range of business applications.‌

# 1 - Configure the Xcode Project

## Enable Location Services

To enable beacon monitoring and allow delegate method, initialize Group Link passing the token as a parameter. The description
messages are shown when the app prompts the user to allow the usage of location services. Be sure to add a message that is
meaningful to your users regarding location usage. beacon ranging results, Group Link technology requires the “Always” location
authorization. When implementing location services in your App, Apple requires the following keys to be added to your
**Info.plist** file:
> NSLocationWhenInUseUsageDescription
> NSLocationAlwaysAndWhenInUseUsageDescription

![info.plist location strings](https://2628332462-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-M15uKMraLHVGOohQ3CR%2Fuploads%2FcrW14Bpn69E7lOZNO3cr%2FScreen%20Shot%202021-12-23%20at%2015.04.36.png?alt=media&token=669104fc-7ce6-4a4e-a18a-07555a5d1606)


## Enable Bluetooth Services

Since iOS 13, Apps are required to add the bluetooth permission into the **Info.plist**, file in the description you need to
describe why are you will use the Bluetooth, our description is listed below.

> NSBluetoothAlwaysUsageDescription

![info.plist bluetooth string](https://2628332462-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-M15uKMraLHVGOohQ3CR%2Fuploads%2FBSRr9QT71YGnAW9W4Cwk%2FScreen%20Shot%202021-12-23%20at%2015.06.09.png?alt=media&token=291a98f2-9cd3-437d-a516-e81309bad381)


## Enable background task functionality

To enable the background task from our framework, you need to insert **BGTaskSchedulerPermittedIdentifiers** inside your
**info.plist** file, this will create an array of strings, just insert our identifier: **com.grouplinknetwork.bgtask**.

![info.plist background task string](https://2628332462-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-M15uKMraLHVGOohQ3CR%2Fuploads%2Fk8FKxP7UtOTIE4tNgBfE%2FScreen%20Shot%202021-12-23%20at%2015.21.30.png?alt=media&token=29bbe518-5253-44bf-ac30-ce5014c76b77)


## Enable Access to WiFi Information

On the **Signing & Capabilities** tab of your target settings, click on the **“+ Capability”** button, and add the capability **Access WiFi Information**.  

![Access WiFi information capability](https://2628332462-files.gitbook.io/~/files/v0/b/gitbook-28427.appspot.com/o/assets%2F-M15uKMraLHVGOohQ3CR%2F-M1QrFC7bdOeRSc3bSRA%2F-M1QsCw8NADpMxXtmzMY%2Fwifi-info-capability.png?alt=media&token=c4769b7a-d06d-439b-9bee-2fd4c1179dab)


## Enable Required background modes

Your app must be able to run in all **background modes** for the Group Link technology to work. You can do this by adding **Background Modes** inside **Signing & Capabilities**.

The Group Link framework needs **Location Updates**, **Uses Bluetooth LE accessories**, **Acts as a Bluetooth LE accessory**, **Background fetch**, and **Background processing** to work properly.

![Background modes strings](https://2628332462-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-M15uKMraLHVGOohQ3CR%2Fuploads%2FLWOs0QCKX9ErQPCoiE7t%2FScreen%20Shot%202021-12-23%20at%2015.16.11.png?alt=media&token=0e73efa9-920c-4e6e-82ef-9362d745bd1e)



# 2 - Initialize Group Link

## Start the library

To initialize the library, a Group Link Token is needed. On your AppDelegate implementation, import the library, and, in the didFinishLaunchingWithOptions:

### App Delegate - Implementation

```swift
import UIKit
import GroupLink

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, 
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // ...
        GroupLinkSDK.start(token: "GROUP_LINK_TOKEN")
        // ...
        return true
    }
}
```

### SwiftUI App Cycle - Implementation (iOS 14)

```swift
import SwiftUI
import GroupLink

@main
struct SwiftUIApp: App {
    // ...
    init() {
        GroupLinkSDK.start(token: "GROUP_LINK_TOKEN")
    }
    // ...
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```


# 3 - Request User Bluetooth Authorization

Anywhere in your App, request authorization to use the user's bluetooth, if you don't have a bluetooth manager stack, you just need to call the Group Link framework bluetooth function, who will request the user authorization to use bluetooth services.

### App Delegate - Implementation

```swift
import UIKit
import GroupLink

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, 
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // You need to run this function to start the SDK bluetooth manager,
        // you can run this on your app initialization.
        GroupLinkSDK.startBluetooth()
        // ...
        return true
    }
}
```

### SwiftUI App Cycle - Implementation (iOS 14)

```swift
import SwiftUI
import GroupLink

@main
struct SwiftUI_TestApp: App {
    // ...
    init() {
        // You need to run this function to start the SDK bluetooth manager,
        // you can run this on your app initialization.
        GroupLinkSDK.startBluetooth()
    }
    // ...
}
```

If you already use the Core Bluetooth framework, you can also put the function inside the .poweredOn state from your Bluetooth delegate.

```swift
func centralManagerDidUpdateState(_ central: CBCentralManager) {
    switch central.state {
        case .poweredOn:
            GroupLinkSDK.startBluetooth()
        default:
            break
    }
}
```

Remember to always check if the user has granted bluetooth permission when initializing your application, with the checkBluetooth() SDK function.

### App Delegate - Implementation

```swift
import UIKit
import GroupLink

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, 
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // You need to run this function to check if the user has granted bluetooth permission,
        // this function will not ask anything, you have to call startBluetooth() function to ask for permission.
        GroupLinkSDK.checkBluetooth()
        // ...
        return true
    }
}
```

### SwiftUI App Cycle - Implementation (iOS 14)

```swift
import SwiftUI
import GroupLink

@main
struct SwiftUI_TestApp: App {
    // ...
    init() {
        // You need to run this function to check if the user has granted bluetooth permission,
        // this function will not ask anything, you have to call startBluetooth() function to ask for permission.
        GroupLinkSDK.checkBluetooth()
    }
    // ...
}
```

# 4 - Request User Location Authorization

Anywhere in your App, request authorization to use the user's location, if you don't have a location manager stack, you just need to call the Group Link framework location function, who will request the user authorization to use location services.

### App Delegate - Implementation

```swift
import UIKit
import GroupLink

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, 
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // You need to run this function to start the SDK location manager,
        // you can run this on your app initialization.
        GroupLinkSDK.startLocation()
        // ...
        return true
    }
}
```

### SwiftUI App Cycle - Implementation (iOS 14)

```swift
import SwiftUI
import GroupLink

@main
struct SwiftUI_TestApp: App {
    // ...
    init() {
        // You need to run this function to start the SDK location manager,
        // you can run this on your app initialization.
        GroupLinkSDK.startLocation()
    }
    // ...
}
```
