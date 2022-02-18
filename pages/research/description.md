---
layout: page-fullwidth
#show_meta: false
title: "Description"
#subheadline: "A Step-by-Step Guide"
#teaser: "This step-by-step guide helps you to customize Feeling Responsive to your needs."
permalink: "/research/description/"
---

## Modules

The CD Laboratory for Embedded is divided into two modules: Module 1 and Module 2. Module 1 focuses on the application of hardware configuration optimization, hardware-aware neural network optimization, and the selection of proper hardware and network combinations for specific applications. Module 2 focuses on continuous learning in autonomous driving and the general improvement of object detection, for instance, in bad weather conditions.

During the first two years, 2020-2021, we have built up a strong competence on
estimation methods, benchmarking and assessment across different
platforms, and platform aware network optimizations.  Perhaps
most importantly, we have developed an infrastructure of tools, flows,
scripts and guides that will facilitate further experiments and
research. Currently, we are further strengthen these aspects since there we
locate significant  added  value  for  our  partners.   In  addition,
we  plan  to  broaden  our  work  area  in  two directions:

  - More focus on time series and spatio-temporal data and the corresponding
    applications. The analysis of time
    series and spatio-temporal data requires also to broaden our scope
    of networks to include RNNs, Autoencoder Networks (AEs) and other
    network types.
	
  - Distributed implementation scenario:  Smart cameras and other
    sensors generate large amountsof data to be processed and
    analyzed.  For reasons of communication overhead, privacy
    or security, it is often attractive to perform data analysis and
    inference in or close to the sensor. However, sensor nodes have
    usually limited compute and energy resources.  Partitioning the
    processing pipeline and distributing its implementation on the
    sensor node, an access point and a cloud server is a challenging
    design trade-off that depends on the sensor node, the
    communication link, the access point, and the application
    requirements.  Partitioning DNN based inference is particularly
    intricate because, unlike in traditional data processing
    pipelines,the data volume increases during processing and remains
    at a very high level until the very end of the DNN pipeline.  Thus,
    any naive cut in the middle will lead to a large volume of data to
    be transmitted over the communication link.


### Work Package 1 - Embedded Platforms

<figure class="image" style="float:right;margin-left:20px">
  <img src="{{ site.urlimg }}WP1-Flow.svg" width="270px">
  <figcaption style="text-align:center">WP1 Tasks</figcaption>
  </figure>
In WP1 we study methods for evaluating, selecting, and configuring a platform and mapping a given, trained DNN onto the selected platform. It represents hardware specific topics. The embedded platform is designed and optimized for inference, not for training. For estimation techniques will consider and build upon existing analytic models or layer-wise energy estimation. In cases where analytic models do not provide sufficient fidelity and accuracy, we apply a data-driven approach. This work package's research question is: Given a network, what is the best platform to use?

#### Work Package 1.1 Estimation 
Further development of the estimators ANNETTE and Blackthorn to
include power estimation, to generalize them for more platforms, to
make them more robustand mature, and to extend them to RNNs. 

#### Work Package 1.2 Video

By working with a stream of images, performance of detection can be
increased by considering temporal patterns.  We extend processing on
embedded hardware to Video Object Segmentation and Tracking (VOST)
applications.  It includes handling sparse 3D convolutions as well as
efficient point cloud processing.  In cooperation with WP3.2 and
WP3.3, we will find ways to apply those networks on embedded platforms
in an optimized way. 


#### Work Package 1.3 Single Platform Mapping

A  toolbox  for  platform  specific  optimization  and  mapping for
our target platforms.  The techniques developed in phase 1 for mapping
of CNNs on different platforms  will  be  further  developed  to
automate  them  to  a  higher  degree  and  to  cover  more platform
variants.  Moreover,  it will be extended to RNNs like long-short term
memories and Gated Recurrent Units as well.

### Work Package 2 - Deep Neural Network Architecture and Optimization

<figure class="image" style="float:right;margin:20px 0px 20px 20px">
	<img src="{{ site.urlimg }}WP2-Flow.svg" width="450px">
  <figcaption style="text-align:center">WP2 Tasks</figcaption>
  </figure>

We study methods for evaluating, selecting, and optimizing deep neural
networks to be mapped onto a given target platform for inference. We
explore the possible architectural choices and the exploration and
mapping process of networks. Based on estimation techniques, various
DNN choices, derived by top-down and bottom-up approaches can be
evaluated for candidate target platforms. This work package's research
question is: Given a target platform and an application, what are the
neural network design and optimization strategies? 

Focus is placed on the following challenges:

  - We concentrate on combinations of optimization methods,
    rather than individual methods like pruning and quantization, as
    motivated in the introduction.
	
  - We cover CNNs and RNNs, driven
    by application use cases. Time series applications is a new 
    focus area in this project.
  
  - In addition to single node platforms we target distributed
    implementations where the front-end processing pipeline is mapped
    to the embedded platform, and the back-end to a server. 
	
The main platforms under consideration are Xilinx boards (e.g. Ultrascale and Versal AI Core
Series with Vitis AI), Nvidia (Jetson), ARM based (e.g. RasberryPi,
STM32 with ARM NN) and Intel (e.g. Myriad X). In addition, NXP’s i.MX
8M Plus has beenidentified as another platform of interest. 
“best” DNN design and optimization strategy?


#### Work Package 2.1 Image Driven

The focus is on image and video driven hardware-aware optimization use case sconsidering appropriate DNNs.

#### Work Package 2.2 Time Series Driven

The focus is on time series driven hardware-aware optimization use
cases considering appropriate DNNs.

#### Work Package 2.3 Distributed Mapping

This task considers hardware, algorithms and software in the TinyML
range, capable of performing on-device sensor data analytics at
extremely low power, enabling  always-on  use-cases  and  targeting
battery  operated  devices.   For  the  case  that  the sensor node is
too limited to host the complete DNN,  the DNN has to be split into a
front-end, mapped onto the platform of the sensor node, and a
back-end, mapped onto a server.  We develop platform aware
DNN transformation and partitioning methods under the constraints of
the sensor node platform, the communication link and the application
requirements. 


#### Work Package 2.4 Optimization Toolbox

We develop a toolbox  for  platform  aware  DNN  optimization,
partitioning and mapping methods for our target platforms.




### Work Package 3 - Continuous Learning

Our focus is on continuous learning systems implementable on embedded
systems, with autonomous driving as important use case. A main
scenario under consideration is as follows:  Suppose you have a
semi-autonomous car that uses a pre-trained network for object
detection and recognition.  The system was trained on a specific data
set,e.g. a dataset collected in the USA. While you drive, the car
continuously collects data.  The border cases are of special interest,
i.e. where the recognition system fails.  After you come back to your
home, this data is used to re-train the system. Thereby the system
gets better each day you take it out.  We have chosen this scenario
because it is:

   1.  Close to on-line learning, but feasible to implement on the
       current available hardware. 
	   
   2.  A realistic application scenario for our industrial partner.
   
   3.  Providing  us  with  the  freedom  to  experiment  with  different  on-line  methods.




#### Work Package 3.1 Demonstrator

For life-long learning we need a running system that we can use to get
data to retrain/reevaluate our models constantly. The goal of the
demonstrator is two-fold. It serves asa realistic data collection
platform that we have access to. For our scientific goals this is of
immanent importance.  It allows us to have a constant exchange
platform with our industrial partner.  We can easily transfer our
research results, this gets more important as the project progresses. 


#### Work Package 3.2 Exploiting temporal information

Temporal information in 2D and 3D proves to be a valuable source for
mining additional labels for either improving existing detectors, for
domain transfer,  or  for  adaptation.   Both,  short  term  temporal
information  (e.g.  scene  flow)  or  long  term tracking information
as obtained for multiple object trackers (MOT), is important.  In
particular, we extend ongoing work that focuses on unsupervised
domain adaptation through re-training with pseudo-labels.




#### Work Package 3.3 3D domain transfer learning

Unsupervised domain transfer is a hot research topic. The area of
domain transfer for 3D data has hardly been addressed so far.  Due to
the shortage of labeled 3D data (as compared to images) this is a
pressing problem.  Our initial experiments show an extreme sensitivity
of methods to changes in the LiDAR, mounting of the LiDAR, environment
and even annotation style.


#### Work Package 3.4 Dynamic learning

There is the need to perform short term learning or adaptation.  A
typical example is changing weather conditions or fast illumination
changes. We study methods that are able to perform this fast learning,
i.e. learning form a single example (or short video sequences). A
particular  example  is  a  detector  that  has  been  trained  in
good  weather  conditions but needs to adapt quickly to  rainy
conditions.   The approach discussed in shows that using simple
auxiliary tasks like image rotation can be used to retrain from a
single image.  In fact, we can formulate this problem as a feature
re-weighting problem using auxiliary tasks.  If this is successful,
this will open a whole new research area. 


---

{% include researchFooter.html %}

