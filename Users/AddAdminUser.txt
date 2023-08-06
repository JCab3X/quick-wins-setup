:: Add an admin user other than the default

:: Adds the user. Change exampleusername and examplepassword with your desired configurations.
net user exampleusername examplepassword /add 

:: Adds the new user to the admins group. Make sure that exampleusername coincides with your updated username in the previous line.
net localgroup administrators exampleusername /add
