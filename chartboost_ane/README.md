#introduce  chartboost ane for flash android and ios  air application or game
this is flash air ane lib  for chartboost ad , ios and android full function  support<br/>
include Interstitial ad and MoreAppPage <br/>
project home:https://github.com/lilili87222/chartboost-ane-flash-air-android-ios/<br/>
ane for chartboost 5:https://github.com/lilili87222/chartboost-ane<br/>
chartboost site: http://chartboost.com<br/>
reqiered :air sdk 4.0 or later<br/>
ane is build base on Chartboost SDK ios 4.0.0 ,android 4.0.0<br/>

#usage:
1. add chartboost.ane to your flex air project<br/>
2.  add ane id in your xxx-app.xml <br/>
```
 <extensionID>so.cuo.platform.chartboost</extensionID>
 ```
3.for android, need add permission
```
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
<uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
```


4.add code 
```
Chartboost.getInstance().setInterstitialKeys("appid", "appsign");// app id and sign id created in chartboost.com site
//then show chartboost Interstitial
Chartboost.getInstance().showInterstitial(); 
//or show chartboost more app page
Chartboost.getInstance().showMoreApp();
```	
5.for more usage, see the demo project code

###description:
this lib is very easy to use ,just need one or two line code,<br/>
and it is full function ,chartboost Interstitial ad and more app page is support ,and all event is support<br/>
it work well on android and ios (ipad,iphone,ipad) air device,not support pc or web flash app<br/>
