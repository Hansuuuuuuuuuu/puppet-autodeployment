# autodeployment

Provisions a machine using serverless puppet
Tested on CentOS 6.x
1. Creates user 'monitor'
2. Installs:
      - vim
      - curl
      - git
3. Downloads and runs memory_check
4. Sets timezone to Asia/Manila (GMT+8)
5. Sets hostname to bpx.server.local