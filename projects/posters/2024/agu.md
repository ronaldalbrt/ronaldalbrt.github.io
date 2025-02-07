+++
title = "Combining AI with matched filters to improve methane plume segmentation in hyperspectral images"
authors = "Ronald Albert, Maciel Zortea, Levente Klein"
published = "09 December 2024"
img = "/assets/images/flowchart_AGU.png"
journal = "American Geophysical Union Fall Meeting"
rss_pubdate = Date(2024, 12, 9)
abstract = "Monitoring fugitive methane emissions, such as those from oil/gas infrastructure, can aid in detecting and repairing leaks, thus reducing global warming. Satellite remote sensing, particularly hyperspectral imagery, is effective for this task, especially for monitoring large areas.\n The Matched Filter (MF) is a traditional signal processing technique used to detect methane signals in hyperspectral images. MF compares the spectral signature of each pixel to a target methane signature obtained through physics-based simulation, taking into account the image background characterized by a mean vector and covariance matrix. However, MF can produce noisy outputs due to similar filter responses from certain land surfaces or poor background modeling. Therefore, further processing is required to reliably identify methane plumes.\n Here, we run a set of matched filters (mag1c algorithm) with variations in input wavelengths in the ranges (2122-2488nm and 2200-2400nm) and background estimation (considering either the full image or column-wise pixels) to generate variability in MF outputs. These outputs are then stacked and input to Artificial Intelligence (AI) algorithms. We hypothesize that AI can learn from the agreement/disagreement of individual MF outputs to improve methane plume segmentation, when training data is available for calibrating a segmentation model. Importantly, MF outputs serve as a data dimensionality reduction technique, which is beneficial when analyzing hyperspectral images.\nWe evaluate the proposed approach using EMIT radiance images, which have publicly available methane plume shapes (EMITL2BCH4PLMMETA product) as a reference.  We stack MF outputs with RGB bands and sample image patches from the resulting data cube to train AI segmentation methods based on convolutional and transformer architectures. Preliminary experimental results indicate that this straightforward approach improves binary segmentation of methane plumes, contributing to methane monitoring"
tags = ["dL_remote_sensing"]
+++
# [Combining AI with matched filters to improve methane plume segmentation in hyperspectral images](https://research.ibm.com/publications/combining-ai-with-matched-filters-to-improve-methane-plume-segmentation-in-hyperspectral-images)

{{ published }} | **{{ authors }}** | *{{ journal }}*

@@im
![]({{ img }})
@@

{{ abstract }}

{{ isdef doi }}
**DOI: {{doi}}**
{{ end }}