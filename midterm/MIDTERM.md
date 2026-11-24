IA462 Midterm project
Repo descriptions:

This repo is my submission for the IA462 midterm. It contains examples of Linux and Windows hardening, Docker container security, and vulnerability scanning from resources like Trivy, Syft and Grype. The repo uses Dependabot from GitHub itself along with very basic branch securityroles for the repo itself.
Contained alongside all of this is transcripts and screenshots of each part of the project.



Cross Platform Comparison


||Windows|Linux|Docker|
|-|-|-|-|
|Kernel|NT kernel|Linux monolithic kernel|shares the host kernel|
|Access control|ACLs, UAC, Defender|users/groups, file permissions, umask, SUID|non-root user, dropped capabilities, seccomp|
|Auditing and Logging|Event logging, Sysmon|journald, sshd logs, faillock|docker logs, docker-bench-security|
|Hardening|Windows Defender, firewalls, GPO baselines|Lynis, your sshd/PAM changes|CIS Docker Benchmark|
|Attack surfaces|SMB, PowerShell, RDp|SSH, SUID binaries, open services|the shared kernel, privileged containers, vulnerable images|



In order of priority, I would stay that hardening Windows, then Linux, then Docker last is probably the best way to prioritize if time is limited. Not only is Windows the easiest to harden, it's the most used OS so many attackers will know it inside and out.

Linux, meanwhile is vulnerable in the sense that failing to harden it gives an attacker more control than they would normally have in a windows system. The best way toi do this is to remove unused services.

Docker hardening is rooted in how simplistic it can be. The smaller and more simple the image, the harder it is for attackers to find cracks.





Supply chain Threat Model

|Attack|control|Slide|
|-|-|-|
|Container Privilege escalation|Never run containers as root and ensure files are read only|Week 6 slides 15 and 16|
|Push straight to main with failing checks|Branch ruleset|Week 8 slide 4|
|Tampered Python package|Exact pins and requirements.lock generated with hashes|Week 8 slide 9|



Which section proves which learning objective 

|Section 1 Linux Hardening|Implement Windows and Linux best practices to protect against Supply Chain Attacks.|
|-|-|
|Section 2 windows Hardening|Implement Windows and Linux best practices to protect against Supply Chain Attacks.|
|Section 3 Docker Hardening|Apply enterprise patch and policy management for Docker Containers, including container hardening.|
|Section 4 Vulnerability scanning and CVE analysis|Perform Vulnerability Management: scan, patch, and retest continuously using CI/CD techniques in GitHub.|
|Section 5 Docker Bench and sigma detection|Understand and integrate Software Bill of Materials (SBOM) into Docker Container workflows.|
|Section6  Supply chain controls and CI gate|Utilize Supply Chain Security Techniques across Windows, Linux, and Docker container environments.|



