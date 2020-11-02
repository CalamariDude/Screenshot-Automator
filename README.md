# Screenshot-Automator

Need to flip a page, screenshot, flip a page, screenshot, flip a page, screenshot?
Look no further, this bash script has your back.

## Usage
Just clone the repo and run screenshot.sh with the following *required* parameters
<pre><code>$./screenshot.sh -a application_name |  
-f folder_to_save_to |  
-n time_to_flip |  
-r coordinates_to_capture |  
-k key_to_press</code></pre>

#### Example
`./screenshot.sh -a Safari -f . -n 2 -r 0,0,1440,900 -k 234`
This will screenshot Safari window region x=0, y=0 with width 1440 and height 900 (starting from top left),  put the screenshot in the current folder then press the right arrow (key code 234), 2 times 
  
#### Help
`./screenshot.sh`  
<pre><code>
        -a The name of the applicaton i.e. 'Safari'  
        -f The folder to save all the screenshots to without trailing \/  
        -n Number of times to loop, this will be how many pages/items you want to capture  
        -r Region to capture comma separated: x,y,width,height  
        -k Key to press in between each screenshot, in MacOS keycode  
                common keycodes: 234 -> right arrow, 235 -> down arrow  
</code></pre>
## Note
This tool *only* works on MacOS
If this helped you please *star* this repo :)

## Disclaimer
I'm not responsible for the uses of this tool.


