# [Leveraging hyperspectral remote sensing and foundation models for greenhouse monitoring](https://openreview.net/forum?id=6UyOxjXWID)

@def title = "Leveraging hyperspectral remote sensing and foundation models for greenhouse monitoring"
@def authors = "Alberto Costa Nogueira Jr, Devyani Lambhate, João Lucas de Sousa Almeida, Levente Klein, Maciel Zortea, Ranjini Bangalore, Ronald Albert de Araujo, Thomas Brunschwiler"
@def published = "29 July 2024"
@def img = "/assets/images/ghgfm.png"
@def journal = "KDD 2024 Workshop Fragile Earth"
@def rss_pubdate = Date(2024, 6, 29)
@def rss = "Leveraging hyperspectral remote sensing and foundation models for greenhouse monitoring"
@def abstract = "Greenhouse gas (GHG) emissions have become a critical environmental concern, significantly impacting global climate change. Given the global coverage and multiple gas species that may be emitted simultaneously, a comprehensive strategy is required to capture the spatial-temporal variation and subtle atmospheric photochemical reactions. Current approaches to GHG detection rely on detecting a single gas species using broad multispectral bands in short-wave infrared but disentangling different chemical gases and their ratios is not achievable. Hyperspectral imaging, a remote sensing technology, has emerged as a powerful tool for detecting and monitoring GHG concentrations in the atmosphere. While traditional retrieval GHG algorithms, such as Matched Filters are helpful, they are prone to false detection and typically require post-processing, which may require manual interpretation. To address these challenges, this position paper aims to advocate for exploring foundation models, a self-supervised artificial intelligence (AI) model to detect GHG from multimodal data (optical, LiDAR, and weather observations/forecasts) that reconstruct missing data but at the same time captures the physical and chemical processes in the atmosphere across different spatial and temporal scale. In this context, we present a conceptual outline of potential GHG foundation models built on multimodel data that leverage spatial-temporal-spectral reconstructions and learn from each data modality. We will discuss the challenges associated with GHG FM implementation."

{{ published }} | **{{ authors }}** | *{{ journal }}*

@@im
![]({{ img }})
@@

{{ abstract }}

{{ isdef doi }}
**DOI: {{doi}}**
{{ end }}

