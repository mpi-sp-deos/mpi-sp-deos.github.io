---
layout: default
title: 'The Dependable Operating Systems Group at MPI-SP'
---

<span style="font-size: 145%">We are the *Dependable Operating Systems* (D<sup><i>e</i></sup>OS) Research Group at the [Max Planck Institute for Security and Privacy](https://www.mpi-sp.org/).</span>

We research ways to make computer systems more dependable, i.e., *safer, more secure, and more efficient*, leveraging techniques at the intersection of **systems** and **computer security**.
For example, we design new ways to isolate software components to make systems more resilient against attacks and bugs, and to specialize the implementation of systems software to make them more secure and scalable.
We strive to solve problems in a **systematic** and **practical** way.
Check out our work on [Unikraft](https://unikraft.org) and [CHERIoT](https://cheriot.org), which are used in the real-world!

## News

{% if site.data.news %}
  <table style="width:100%">
{% for news in site.data.news %}
{% if forloop.index < 6 %}
      <tr>
          <td nowrap style="width: 15%; min-width: 80px; text-align: center;">{{ news.date }}</td>
          <td>{{ news.entry }}</td>
      </tr>
{% endif %}
{% endfor %}
  </table>
{% else %}
  <p>No fresh news. We have been really busy on something lately...</p>
{% endif %}

## Group Members

{% for person in site.data.people.current %}
<div class="person">
{% if person.picture %}
    <img src="/assets/img/people/{{ person.picture }}" class="person-picture" alt="Picture of {{ person.name }}"/>
{% else %}
    <div class="person-picture person-no-picture-available">
    <span>?</span>
    </div>
{% endif %}
<div class="person-text">
<span>
{% if person.link %}
<a href="{{ person.link }}">{{ person.name }}</a>
{% else %}
{{ person.name }}
{% endif %}
{% if person.othername %}
{{ person.othername }}
{% endif %}
<br/><i>{{ person.role }}</i> ({{ person.affiliation }})</span>
</div>
</div>
{% endfor %}

{% if site.data.people.affiliate %}
#### Affiliates:

{% for person in site.data.people.affiliate %}
<div class="person">
{% if person.picture %}
    <img src="/assets/img/people/{{ person.picture }}" class="person-picture" alt="Picture of {{ person.name }}"/>
{% else %}
    <div class="person-picture person-no-picture-available">
    <span>?</span>
    </div>
{% endif %}
<div class="person-text">
<span>
{% if person.link %}
<a href="{{ person.link }}">{{ person.name }}</a>
{% else %}
{{ person.name }}
{% endif %}
{% if person.othername %}
{{ person.othername }}
{% endif %}
<br/><i>{{ person.role }}</i> ({{ person.affiliation }})</span>
</div>
</div>
{% endfor %}
{% endif %}
