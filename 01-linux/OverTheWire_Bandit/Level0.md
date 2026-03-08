## Bandit Level 0 

**Challenge:** Log into the game using SSH:
- Host: bandit.labs.overthewire.org
- Port: 2220
- Username: bandit0
- Password: bandit0

**Solution:**
```
ssh -p 2220 bandit0@bandit.labs.overthewire.org 
```

**Explanation:**
- Uses SSH (Secure Shell) to connect to a remote server.
- The `p 2220` flag specifies the port number used.
- `bandit.labs.overthewire.org` tells SSH which user to log in as and `bandit0` is used as the host name.
- After running the command I was prompted to enter the password which was given `bandit0`.


**Password:** bandit0

![Bandit Level 0](../screenshots/Level0.png)


**What I learned:** 
- How to connect to a remote Linux server using SSH
