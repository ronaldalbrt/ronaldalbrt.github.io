+++
title = "SpectralMPNN: Spectral Graph Architectures for Neural Algorithmic Reasoning"
published = "19 May 2025"
authors = "Ronald Albert, Aline Paes, Gerson Zaverucha"
img = "/assets/images/NAR_arch.jpg"
journal = " "
abstract = "Neural algorithmic reasoning is an emerging subfield of representation learning that focuses on training neural models to effectively mimic the execution traces of classical computer science algorithms. This field has shown significant value in practical applications—where models pre-trained on algorithmic data exhibit enhanced performance—and in theoretical research by shedding light on the architectural aspects of neural networks that facilitate discrete reasoning. Most existing approaches to this problem restrict the design space to Message-Passing GNNs. This choice is primarily driven by the versatility of graph structures, which can approximate a wide range of data structures, and by recent theoretical findings highlighting the alignment between message passing and dynamic programming. However, prior studies have underscored a fundamental limitation of message passing: its inherent bias toward smooth representations across the graph. This characteristic is closely linked to the over-smoothing phenomenon, where multiple rounds of message passing cause all node representations to converge to the same value. This limitation poses challenges for applying Message-Passing GNNs to heterophilic graphs, where connected nodes often have distinct features. Conversely, Spectral GNNs represent a class of graph neural networks that leverage the graph structure by learning effective filters directly in the Graph Fourier domain. This enables them to function as adaptive filters, allowing flexible frequency-based signal propagation. In this paper, we propose using Spectral GNNs for neural algorithmic reasoning and introduce SpectralMPNN—a Spectral GNN that integrates filtering with a Message-Passing layer.  SpectralMPNN is designed to retain the beneficial inductive biases of message passing while incorporating adaptive frequency filtering. Our experiments show that this architecture outperforms existing models across multiple algorithms in the CLRS-30 benchmark."
rss = "SpectralMPNN: Spectral Graph Architectures for Neural Algorithmic Reasoning"
rss_pubdate = Date(2025, 5, 19)
tags = ["nar", "ml"]
+++
# [SpectralMPNN: Spectral Graph Architectures for Neural Algorithmic Reasoning](https://www.pesc.coppe.ufrj.br/index.php/pt-BR/publicacoes-pesquisa/details/15/3214)

Not yet published | **{{ authors }}**

See the [GitHub repository](https://github.com/ronaldalbrt/algo_reasoning)

@@im
![]({{ img }})
@@

{{ abstract }}

# This was published as my Masters Dissertation

~~~
<iframe src="/assets/pdf/SpectralMPNN.pdf" width="700" height="980">
~~~


{{ isdef doi }}
**DOI: {{doi}}**
{{ end }}