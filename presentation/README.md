# Presentation: Dissecting Kubernetes

The scripts here are to facilitate setup and presentation of the components
most central to Kubernetes. The presentation is drawn from the blog posts
referenced at the root of this repo.

## Priming the Ubuntu Vagrant Box

* Start from `vagrant init ubuntu/bionic64`
* Pick your Kubernetes version and run the setup scripts
  * [k8s-1.9](k8s-1.9/)
  * [k8s-1.12](k8s-1.12/)
  * [k8s-1.15](k8s-1.15/)
  * [k8s-1.16](k8s-1.16/)
  * [k8s-1.19](k8s-1.19/) - uses `vagrant init ubuntu/focal64`
* `demo-script.txt` has some commands that are helpful

## Related Links

* [The Illustrated Children's Guide to Kubernetes](https://cdn.chrisshort.net/The-Illustrated-Childrens-Guide-to-Kubernetes.pdf) (PDF)
* [Google's Kubernetes Comic](https://cloud.google.com/kubernetes-engine/kubernetes-comic/)
* [KubeCon Keynote: Anatomy of a Production Kubernetes Outage](https://www.youtube.com/watch?v=OUYTNywPk-s)
* [Kubernetes by Component - Part 1](https://sheppard.in/2018/kubernetes-by-component-part-1/)
* [Kubernetes Deconstructed by Carson Anderson](https://vimeo.com/245778144/4d1d597c5e)
