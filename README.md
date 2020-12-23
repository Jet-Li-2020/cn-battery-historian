# CN Battery Historian

CN Battery Historian is based on Battery Historian.

The main difference between CN Battery Historian and Battery Historian is the former don't need connecting to internet. So it can be installed and used without network. And the installation is very easy. 

So you can use this tool to inspect battery related information and events on an Android device running Android 5.0 Lollipop (API level 21) and later.

It allows application developers to visualize system and application level events on a timeline with panning and zooming functionality, easily see various aggregated statistics since the device was last fully charged, and select an application and inspect the metrics that impact battery specific to the chosen application. It also allows an A/B comparison of two bugreports, highlighting differences in key battery related metrics.

## Getting Started

#### Install Docker

If your machine has already installed docker, please ignore this step.

Install [Docker](<https://docs.docker.com/engine/installation/>).

#### Start up the CN Battery Historian

For Linux and Mac OS X:

Run the script `run_cn_battery_historian.sh`. Choose a port number and replace `<port>` with
that number in the commands below:

```
./run_cn_battery_historian.sh <port>
```

For Windows:

* If you meet problem while installing docker, please use Ubuntu OS instead.

* If you installed docker successfully, run the script `run_cn_battery_historian_win.bat` with port number.

```
./run_cn_battery_historian_win.bat <port>
```

If no errors after running the script file, you're done! Historian will be available at
  `http://localhost:<port>`

#### How to take a bug report

To take a bug report from your Android device, you will need to enable USB debugging under `Settings > System > Developer Options`. On Android 4.2 and higher, the Developer options screen is hidden by default. You can enable this by following the instructions [here](<http://developer.android.com/tools/help/adb.html#Enabling>).

To obtain a bug report from your development device running Android 7.0 and
higher:

```
$ adb bugreport bugreport.zip
```

For devices 6.0 and lower:

```
$ adb bugreport > bugreport.txt
```

### Start analyzing!

You are all set now. Run `historian` and visit <http://localhost:9999> and
upload the `bugreport.txt` or `bugreport.zip` file to start analyzing.

## Screenshots

##### Timeline:

![Timeline](/screenshots/preview.jpg "Timeline Visualization")

##### System stats:

![System](/screenshots/system.jpg "Aggregated System statistics since the device was last fully charged")

##### App stats:

![App](/screenshots/app.jpg "Application specific statistics")

## Advanced

To reset aggregated battery stats and history:

```
adb shell dumpsys batterystats --reset
```

## Support

If you've found an error in this project, please file an issue:
<https://github.com/google/battery-historian/issues>

## License

Copyright Jet All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  <http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
License for the specific language governing permissions and limitations under
the License.
