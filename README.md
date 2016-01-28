# foscam2dropbox
A project that allows automatic transfer of motion detected images from FOSCAM to Dropbox and generate an animated GIF of the day.

Need: FOSCAM (or alternate IPCAM), Gmail account, Dropbox account, SendToDropbox account, Linux, ImageMagick 

1. Goto https://sendtodropbox.com/ and create a free account and link to your dropbox account. This allows you to setup your FOSCAM to email motion detected images.
2. Setup your FOSCAM to match the screenshot images for "Alarm Service Settings" and "Mail Service Settings". Use your account info.
3. You should now be uploading motion images into an Apps folder on Dropbox
4. Copy the fileMover.sh script to a location you prefer. Modify for your paths and to keep the number of days of images you prefer and days to include in the animated GIF. (Defaults to 30 day archive and last 24 hours for animated GIF)
5. Add the line from crontab.txt to your crontab. Make sure the paths match your machine. This makes the fileMover.sh script run every minute. This may need adjusting as well based in your needs.
6. You are now done. You can now view the animated gif from the last 24 hrs on your PC or using the dropbox app on your phone to keep an eye things.
