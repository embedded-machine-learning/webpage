---
layout: video
show_meta: false
title: "Tiny YoloV3 Power Visualization"
tags:
 - Demonstator
categories:
 - Thesis
iframe: "<iframe src='//player.vimeo.com/video/537297367?embedparameter=value' width='970' height='546' frameborder='0' allowfullscreen></iframe>"
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
    embedURL: "https://player.vimeo.com/video/537297367?embedparameter=value"
    contentURL: "https://vimeo.com/537297367"
    thumbnailUrl: "https://i.vimeocdn.com/video/1112240408_630x360.jpg"

---
<!--more-->

Evaluating a neural network in terms of accuracy is widely supported in all machine learning frameworks. The power draw which is an important aspect in the operation of machine learning accelerators on the edge, such as an NCS2, is rarely evaluated. In the animation we can see how the power draw changes over time during the execution of a state-of-the-art Yolov3-tiny. The data was gathered using a method developed in the EML laboratory with the prospect of extending it to other platforms and networks.