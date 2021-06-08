---
layout: video
show_meta: false
title: "RC Model Car"
teaser: "using a Intel Neural Compute Stick 2 for Object Detection and Classification"
tags:
 - Demonstator
categories:
 - Thesis
iframe: "<iframe src='//player.vimeo.com/video/516695520?embedparameter=value' width='970' height='546' frameborder='0' allowfullscreen></iframe>"
#iframe: "<iframe width='970' height='546' src='//www.youtube.com/embed/WoHxoz_0ykI' frameborder='0' allowfullscreen></iframe>"
#
# These video settings are totally optional. It's only purpose
# is SEO, so that videos show up in Google hopefully with a
# thumbnail.
# More › https://developers.google.com/webmasters/videosearch/schema?hl=en&rd=1
#
# embedURL – A URL pointing to a player for the specific video.
# contentURL – A URL pointing to the actual video media file
# thumbnailUrl – A URL pointing to the video thumbnail image file.
#

video:
    embedURL: "https://player.vimeo.com/video/516695520?embedparameter=value"
    contentURL: "https://vimeo.com/516695520"
    thumbnailUrl: "https://i.vimeocdn.com/video/1069895775_640x360.jpg"

---
<!--more-->

## Main Components

* Raspberry Pi 4 - for the general interface between user and Demonstrator
* Intel Neural Compute Stick 2 with Openvino - for inference on the edge
* Yolov3-tiny - Neural Network for object detection in images

## System Interaction

The RPi4 sends images from a camera to the NCS2, which returns the probabilites and bounding boxes to be displayed for the user in a browser window.

<div class="row">
  <img src="../../images/posts/demonstrator_flow.png" width="600"/>
</div>

The Demonstrator can be remotely controlled via the keyboard in the browser.
The neural network Yolov3-tiny is responsible for object detection and runs at a frame rate of around 12 fps, while utilizing the Openvino API for inference.

<div class="row">
  <img src="../../images/posts/demonstrator_webstream_flow.png" width="600"/>
</div>

## Power Profiling

A concept to measure the power consumption of the NCS2 during the execution of any neural network was conceived during the making of the Demonstator.
Power Profiles, such as in the image below, tell how much each layer of the neural network consumes, with the possible prospect of targeted layer optimization for energy consumption.

<div class="row">
  <img src="../../images/posts/yolov3-tiny__500kS_mod9_dat+rep.png" width="600"/>
</div>
