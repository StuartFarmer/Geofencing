![Geofencing](fencing.png)

Super simple geofencing for iOS applications.

####So why Geofencing over CoreLocation's Region Monitoring?

CoreLocation attempts to ease the implementation of geofences with their region monitoring methods. However, these methods are targetted more at developers who want to incorporate iBeacons into their applications, which are costly, and require physical installation. Geofences are digitally deployable, instant, and free.

CoreLocation does allow geofences of CLCircularRegion objects. However, these regions are simple circles, and CoreLocation only allows you to monitor up to 20 at a time.

Geofencing handles geofences differently. Monitor as many CLCircularRegion or complex MKPolygon objects as you'd like using a simple block-based design, and recieve a callback of these objects whenever the user either enters or exits any of the implemented geofences.

####How to use Geofencing
Geofencing is still in development, but to use the library, you simply have to initialize a Geofencing object, give it an array of CLCircularRegion and MKPolygon objects, and call the single public method. Here's an example:

```objective-c
NSMutableArray *geofences = [[NSMutableArray alloc] init];
CLCircularRegion *someRegion = [[CLCircularRegion alloc] initWithCenter:CLLocationCoordinate2DMake(-40, 80) radius:100 identifier:nil];
Geofencing *fencing = [[Geofencing alloc] init];
[fencing monitorRegions:@[] onEnter:^(NSArray *regions) {
		for (CLCircularRegion *region in regions) {
			// do something with the CLCircularRegions
		}

		for (MKPolygon *polygon in regions) {
		 // do something with the MKPolygons
		}
	} onExit:^(NSArray *regions) {
	    for (CLCircularRegion *region in regions) {
	        // do something with the CLCircularRegions
	    }
	    for (MKPolygon *polygon in regions) {
	        // do something with the MKPolygons
	    }
	}];
```

Ideally, you'll pull region and polygon data from a database of regions online, pipe it into Geofencing, and be good to go to handle sending push notifications or monitoring analytical data whenever your mobile user enters or exits a specified region.

####What's left to do?
The core features still need to be developed. I may introduce a new object to output to the user on their end when the block completes that encapsulates both CLCircularRegions and MKPolygons into a more descriptive object.

I will also develop a sample app that makes this already simple library even easier to understand. I may even demonstrate how to pull data from Parse, but don't hold me to that.

####Who uses Geofencing?

No one, yet. But if you do, send me an email so I feel good about myself.