# autodeployment

Provisions a machine using serverless puppet

Tested on CentOS 6.x

1. Creates user 'monitor'
2. Installs:
      - vim
      - curl
      - git
3. Downloads memory_check
4. Creates cron job that runs memory_check every 10 minutes
5. Sets timezone to Asia/Manila (GMT+8)
6. Sets hostname to bpx.server.local