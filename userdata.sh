#!/usr/bin/env bash
su ec2-user
sudo yum install httpd -y
sudo chown ec2-user:ec2-user -R /var/www
cat > /var/www/html/index.html <<EOL
<html>
  <head>
    <title>My CodeDeploy WebApp</title>
  </head>
  <body>
     <h1>My CodeDeploy WebApp body</h1>
  </body>
</html>
EOL
sudo systemctl start httpd
sudo systemctl enable httpd
