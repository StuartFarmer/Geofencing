# Geofencing

### A Cocoa Library That Makes Multi Geofencing a Breeze
![Geofencing](fencing.png)

Monitor infiniate amounts of geofences, whether they be CLRegions, or MKPolygons.

####So why Geofencing over CoreLocation's Region Monitoring?

Firstly, CoreLocation relies on delegate methods to handle asynchronous events, which become messy, especially if you are entering and exiting a lot of locations. It also requires a lot of set up and finicking compared to CoreLocation's location updates. This may be because region monitoring includes / overlaps with iBeacon features. It seems that Apple wrote this section of the library with this technology in mind. iBeacons are great, if you have the :moneybag: and time to implement them. Geofences are free and instantly deployable internationally.

Also, CoreLocation only allows you to monitor up to 20(:interrobang:) regions at a time, which is unreasonable if you have more than 20 regions to monitor. Geofencing allows you to monitor as many regions as you want.

Lastly, CoreLocation only supports CLRegions, which include iBeacon regions, and literal circles. If your area is a complex polygon that spans an intricate tract of land, you simply cannot geofence it with the current libraries.

That's why I am developing Geofencing. After the headaches of trying to get some simple GPS functionality working across a group of locations, I figured that others out there are probably having the same problem.

####How to use Geofencing
Geofencing is still in development, but to use the library, you simply have to initialize a Geofencing object, give it an array of CLCircularRegion and MKPolygon objects, and call the single public method. Here's an example:

>	NSMutableArray *geofences = [[NSMutableArray alloc] init];
>	    CLCircularRegion *someRegion = [[CLCircularRegion alloc] initWithCenter:CLLocationCoordinate2DMake(-40, 80) radius:100 identifier:nil];
>	    Geofencing *fencing = [[Geofencing alloc] init];
>	    [fencing monitorRegions:@[] onEnter:^(NSArray *regions) {
>	        for (CLCircularRegion *region in regions) {
>	            // do something with the CLCircularRegions
>	        }
>	        for (MKPolygon *polygon in regions) {
>	            // do something with the MKPolygons
>	        }
>	    } onExit:^(NSArray *regions) {
>	        for (CLCircularRegion *region in regions) {
>	            // do something with the CLCircularRegions
>	        }
>	        for (MKPolygon *polygon in regions) {
>	            // do something with the MKPolygons
>	        }
>	    }];

Ideally, you'll pull region and polygon data from a database of regions online, pipe it into Geofencing, and be good to go to handle sending push notifications or monitoring analytical data whenever your mobile user enters or exits a specified region.

####What's left to do?
The core features still need to be developed. I may introduce a new object to output to the user on their end when the block completes that encapsulates both CLCircularRegions and MKPolygons into a more descriptive object.

I will also develop a sample app that makes this already simple library even easier to understand. I may even demonstrate how to pull data from Parse, but don't hold me to that.

####Who uses Geofencing?

No one, yet. But if you do, send me an email so I feel good about myself.