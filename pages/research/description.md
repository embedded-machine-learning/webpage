---
layout: page-fullwidth
#show_meta: false
title: "Description"
#subheadline: "A Step-by-Step Guide"
#teaser: "This step-by-step guide helps you to customize Feeling Responsive to your needs."
permalink: "/research/description/"
---

## Modules

The CD Laboratory for Embedded is divided into two modules: Module 1 and Module 2. Module 1 focuses on the application of hardware configuration optimization, hardware-aware neural network optimization, and the selection of proper hardware and network combinations for specific applications. Module 1 contains the work packages 1 and 2. Module 2 focuses on continuous learning in autonomous driving and the general improvement of object detection, for instance, in bad weather conditions.

### Work Package 1 - Embedded Platforms

In WP1 we study methods for evaluating, selecting, and configuring a platform and mapping a given, trained DNN onto the selected platform. It represents hardware specific topics. The embedded platform is designed and optimized for inference, not for training. For estimation techniques will consider and build upon existing analytic models or layer-wise energy estimation. In cases where analytic models do not provide sufficient fidelity and accuracy, we apply a data-driven approach. This work package's research question is: Given a network, what is the best platform to use?

#### Work Package 1.1

Estimation of latency, power, energy, and resources for a specific platform during early design phases.

#### Work Package 1.2

We select, customize, and optimize specific platforms. Platform dependent optimizations regarding latency, power, and energy are explored.

#### Work Package 1.3
We are mapping the CNN onto a platform. An optimized network is mapped on the target platform using the platform-specific optimization and mapping tools as appropriate. Hardware specific measurement infrastructure and system integration are done here.

### Work Package 2 - Deep Neural Network Architecture and Optimization
We study methods for evaluating, selecting, and optimizing deep neural networks to be mapped onto a given target platform for inference. We explore the possible architectural choices and the exploration and mapping process of networks. Based on estimation techniques, various DNN choices, derived by top-down and bottom-up approaches can be evaluated for candidate target platforms. This work package's research question is: Given a target platform and an application, what are the neural network design and optimization strategies?

#### Work Package 2.1
We study and evaluate quantization techniques.

#### Work Package 2.2
We study and evaluate pruning.

#### Work Package 2.3
We study and evaluate factorization techniques.

#### Work Package 2.4
Study and evaluate compact model design techniques.

#### Work Package 2.5
Perform system integration by formulating and evaluating design scripts that use previous tasks and estimation techniques.


### Work Package 3 - Continuous Learning
We develop an embedded continuous on-line learning system. We build upon results of WP1 and WP2 to allow the training algorithm for neural networks, i.e. backpropagation, to work on embedded devices. On-line learning can be used to adapt boosting or random forest object detectors to a specific scene, significantly improving performance over state-of-the-art. In this project, we will investigate CNN based methods for the task of continuous on-line learning. One of the main challenges of such a system are obtaining the annotations for these samples, determining where the training should take place (e.g. on-device, or a remote server) and when or how often we should update the model.

#### Work Package 3.1
Here we collect datasets. To benchmark our approach, we will also record a dataset suitable for driver behaviour recognition of other vehicles in the scene (e.g. turn-left, cut-in, etc.).

#### Work Package 3.2
When do we Update? As we are operating on devices with tight constraints, our system will try to detect a diverse set of samples on which the current model is not confident to update the model. For use-cases where the data is sent to a remote server and even processed by a human annotator, this reduces transfer cost and annotation effort.

#### Work Package 3.3
We answer the question of how do we get annotations? To update our continuous learning system, we will use the benefits of domain adaptation, co-training with multiple sensors and weakly-supervised learning to obtain annotations. We perform domain adaptation, where we will use recent approaches from unsupervised domain adaptation and extend them to the on-line learning scenario. Finally, we apply weakly-supervised learning to reduce the labeling effort for human annotators

#### Work Package 3.4
Where should the Training Take Place? In settings where devices have too limited resources for training and in settings where we use human supervision to improve our model, we will also send the data to a remote server for updating the model. For embedded devices with more resources, on the other hand, we will update the model by means of co-training or unsupervised domain adaptation on-device.

---

{% include researchFooter.html %}

