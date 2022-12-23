sudo spt-get update -y
sudo apt-get install -y httpd
sudo service httpd start
sudo echo '<h1>Welcome to first terraform hosted page</h1>' | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app1
sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(250, 210, 210);"> <h1>Welcome to first terraform hosted page</h1> <p>Terraform Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app1/index.html
