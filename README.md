# Ad Identifier Prototype
A prototype to test "Limit Ad Tracking" (iOS 13 and below) and "App Tracking Transparency" (iOS 14 and above) frameworks impact to Identifier for Advertising (IDFA) and Identifier for Vendor (IDFV).

## About
- Minimum target set to iOS 13.5 (Most stable iOS 13.x version)
- Built using Xcode 12 Beta 3
- Tested on iPhone X (iOS 14.0 Beta 3) and iPhone 8 (iOS 13.5)

## Results
| iOS  | Framework Name            | Status                                               | IDFV                                    | IDFA                              |
|------|---------------------------|------------------------------------------------------|-----------------------------------------|-----------------------------------|
| 14.0 | App Tracking Transparency | Restricted<br>Not Determined<br>Denied<br>Authorized | N/A<br>Non-Zero<br>Non-Zero<br>Non-Zero | N/A<br>Zeroes<br>Zeroes<br>Zeroes |
| 13.5 | Limit Ad Tracking         | Disabled<br>Enabled                                  | Non-Zero<br>Non-Zero                    | Non-Zero<br>Zeroes                |
