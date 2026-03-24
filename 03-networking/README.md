# 03 - Networking
 
Understanding networking is crucial for debugging, security, and infrastructure design.
 
## What You'll Learn
 
- OSI model and TCP/IP
- IP addressing and subnets (CIDR)
- DNS and how domain resolution works
- HTTP/HTTPS and TLS
- Load balancers and reverse proxies
- Firewalls and security groups
- Common ports and protocols

---
 
## Projects
 
### ✅ EC2 + NGINX + Cloudflare DNS
 
Deployed a live web server on AWS using EC2 and NGINX, with a custom domain routed through Cloudflare DNS.
 
**What I did:**
- Launched a t3.micro EC2 instance (Amazon Linux) and configured security group inbound rules for ports 22, 80, and 443
- Installed and started NGINX as the web server
- Registered a custom domain on Cloudflare and pointed it to the EC2 public IP via an A record
- Verified DNS propagation using `nslookup` in the terminal
- Confirmed the live server by visiting the domain in a browser
 
**What I learned:**
- How DNS resolution works end-to-end, from registering a domain to an A record resolving to a public IP.
- The difference between a domain registrar and a DNS provider, and why they don't have to be the same service.
- How to open specific ports in an EC2 security group and why least-privilege rules matter (port 22 scoped to my IP only).
- How NGINX works as a web server and how to manage it as a Linux service (`systemctl`, `service`).
- How to debug DNS propagation using `nslookup` and what a correct resolution output looks like.
- The real-world cost model for AWS public IPv4 addresses and how to stay within the free tier.
 
📁 [`03-networking/nginx-ec2-cloudflare/`](./03-networking/nginx-ec2-cloudflare/)
 
---

## Key Concepts
 
| Port | Protocol | Use |
|------|----------|-----|
| 22 | SSH | Secure shell |
| 80 | HTTP | Web traffic |
| 443 | HTTPS | Secure web traffic |
| 53 | DNS | Domain resolution |
| 3306 | MySQL | Database |
| 5432 | PostgreSQL | Database |
| 6379 | Redis | Cache |
 
## Useful Commands
 
```bash
ping <host>           # Test connectivity
curl -v <url>         # HTTP request with details
dig <domain>          # DNS lookup
nslookup <domain>     # DNS lookup (used to verify DNS propagation)
netstat -tuln         # Show listening ports
ss -tuln              # Show listening ports (modern)
traceroute <host>     # Trace network path
```
 
## Resources
 
- [Subnet Calculator](https://www.subnet-calculator.com/)
- [DNS Explained](https://howdns.works/)
- [Cloudflare DNS Docs](https://developers.cloudflare.com/dns/)
- [NGINX Beginner's Guide](https://nginx.org/en/docs/beginners_guide.html)