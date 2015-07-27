![Geofencing](fencing.png)

Super simple geofencing for iOS applications.

####So why Geofencing over CoreLocation's Region Monitoring?

CoreLocation attempts to ease the implementation of geofences with their region monitoring methods. However, these methods are targetted more at developers who want to incorporate iBeacons into their applications, which are costly, and require physical installation. Geofences are digitally deployable, instant, and free.

CoreLocation does allow geofences of CLCircularRegion objects. However, these regions are simple circles, and CoreLocation only allows you to monitor up to 20 at a time.

Geofencing handles geofences differently. Monitor as many CLCircularRegion or complex MKPolygon objects as you'd like using a simple block-based design, and recieve a callback of these objects whenever the user either enters or exits any of the implemented geofences.

####More here in a little bit!