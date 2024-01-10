# Ubuntu Virtual Host script
This script is to create a virtual host on Aache server in Ubuntu and enable it with a single command
Run this command from the terminal:
```
sudo bash ubuntu-vhost-script.sh sample.local
```
Where ```sample.local``` is the name of the website that you want to create a virtual host for
This will create the directory, add an index file and then create a virtual host as well as enable it for you.
Once the code runs just go to ```sample.local (or whatever name you gave in the command) ``` in your browser and voila!!

#Composer codeigniter install
This script will install Codeigniter in the new virtual host folder and set up files to remove ```'/public/'``` folder from the url. (Codeigniter does not recommend this!! It's only for convinience. If you want to follow the recommended way point the vhost to the ```/publuc/``` folder )
Just run this after the above command:
```
bash ci-compose.sh sample.local
```
Where ```sample.local``` is the name of the website we just set up.

Now visit ```sample.local``` in your browser and your website is up and running.

### Cheers!!
