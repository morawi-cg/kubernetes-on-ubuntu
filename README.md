# Kubernetes 1.17 with Docker 19 and Ubuntu 18.04 64 Bit 
This is an automated install of the latest versions of Kubernetes, Docker.
The target host is Ubuntu 18.04

Target environments:
  * Bespoke deploymet on AWS.
  * Bespoke deployment on GCP.
  * Bespoke deoployment on Azure.

The Plan is to focuse with this article on AWS as its the target most of the times.

## Deployment


 * 3 Controllers, one per subnet, our UK based ones {'a,b,c'} , the active master will go on 'a'
 * 3 workers with the same arrangement.
 * 1 main load balancer, (app-loadbalancer , ports:80,8080,6443), for controller nodes. 
 * Multiple network load balancers to deal with worker nodes, as many as servicer require.

 
~                                                                 
