---
layout: page
title: 'Publications'
---

This is a selected list of publications, a complete list can be found on [DBLP](https://dblp.org/pid/279/6840.html) or [Google Scholar](https://scholar.google.com/citations?user=lWYt2pUAAAAJ&hl=en&oi=sra).
Publications prior to 2027 pre-date Hugo's move to MPI-SP.
*Group members in italics*.

{% for year in site.data.publications %}
## {{ year.year }}
{% for pub in year.publications %}
* **{{ pub.title }}**<br/>{{ pub.authors }}<br/>[**{{ pub.venue }}**]({{ pub.venue-link }}) [{% if pub.paper-link %}[Link]({{ pub.paper-link }}), {% endif %}[PDF](/assets/pdf/{{ pub.pdf }})] {% if pub.award %} **{{ pub.award }}!**{% endif %}
{% endfor %}
{% endfor %}
