**How to use it**

1. Drop the .h and .m into your into the Plugins folder of your iPhone Project
2. Add the .js file to your www/js folder and include it in your HTML file
3. Add ScrimLoader to the plugins section of your Cordova.plist file
4. Inside your main JS file, you can create a scrimLoader instance by calling "scrimLoader = window.plugins.scrimLoader;"
5. Then to start the spinner from js call "scrimLoader.showLoader();"
6. To stop the spinner from js call "scrimLoader.hideLoader();"

NB Only works with iPhone apps using the Cordova framework (used to be called PhoneGap)

**Thanks**

Many thanks to [Nigel Kelly](https://github.com/nigekelly/) for provding the original PhoneGap plugin which you can find [here](https://github.com/nigekelly/scrimLoader)
Also check out [Nigel's blog](http://nigeslice.blogspot.com) which has more details on the original plugin .

**Why use it**

An ajax spinner has to be robust. It cannot stutter or flicker because it is a fundamental indicator to the user that your app is processing
in a satisfactory manner. If your spinner looks broken then the user is more likely to think your app is broken.

Your app may have alot of stuff going on already. For example webkit/canvas/DOM rendering, ajax calls, read/writing to local data stores, etc.
In such apps writing an ajax spinner in javascript just won't cut it. The animation of the spinner is likely to be disrupted.

I found my best option was to leverage the UIActivityIndicatorView from objective-c so I had access to a resource-lite spinner that works smoothly in busy apps.

**License**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


