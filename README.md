# ClockKit-v1
<br>
Demo to use Complications as App Launcher + Adding Complications to the Gallery.

Supported families : <br> 
    1. Circular Small <br>
    2. Extra Large <br>
    3. Modular Small <br>
    4. Utilitarian Small <br>
<br>   
<img src="https://github.com/rrramanan/ClockKit-v1/blob/master/sampleImages/circular.png" width="240" Height="290">
&nbsp;&nbsp;&nbsp;
<img src="https://github.com/rrramanan/ClockKit-v1/blob/master/sampleImages/modSmall1.png" width="240" Height="290">
&nbsp;&nbsp;&nbsp; 
<img src="https://github.com/rrramanan/ClockKit-v1/blob/master/sampleImages/util4.png" width="240" Height="290">
<br>*Tick Mark Icon - ClockKit App
<br> <br> 

<b>Adding Complications to Gallery</b> 
<br>
To add complication to gallery, you must create a complication bundle that gives user preview of your complication.  
<br>
Creating Complication Bundle 
<ul>
<li>In Complication Controller, implement <b>getLocalizableSampleTemplateForComplication:withHandler:</b> & build the templates by using text or image provider calls. For instance, [CLKSimpleTextProvider localizableTextProviderWithStringsFileTextKey:@“sample key”]  </li>
 <li>Launch the WatchKit App in sim/watch & the app must be in foreground. </li>
 <li> In Watch Sim, choose File > Save Complication Bundle. Eg. myBundlename.ckcomplication</li>
 <li>Add the generated complication bundle to your iPhone app.</li>
 <li>You must add the complication bundle as a resource to the top level of your iPhone app—don't add it to your watchOS app or extension</li>
 <li> When you add the bundle, be sure to select “Create folder references” in the “Choose options for adding these files” Xcode dialog.</li>
 <li>Launch the app iPhone sim/watch. After launching Watch app go to face galley area to see an entery of our app. </li>
</ul> 
 
