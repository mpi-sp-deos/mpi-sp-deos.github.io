---
layout: page
title: 'Group Members'
---

The Dependable Operating Systems (D<sup><i>e</i></sup>OS) group at the Max-Planck Institute for Security and Privacy (MPI-SP) is led by [Hugo Lefeuvre](https://owl.eu.com) and a team of talented staff and students.

## Current Members

{% for person in site.data.people.current %}
<div class="person">
{% if person.picture %}
    <img src="/assets/img/people/dithered/{{ person.picture }}.png" class="person-picture" alt="Picture of {{ person.name }}"/>
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

## Affiliate Members

{% for person in site.data.people.affiliate %}
<div class="person">
{% if person.picture %}
    <img src="/assets/img/people/dithered/{{ person.picture }}.png" class="person-picture" alt="Picture of {{ person.name }}"/>
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

## Alumni

{% for person in site.data.people.alumni %}
<div class="person">
{% if person.picture %}
    <img src="/assets/img/people/dithered/{{ person.picture }}.png" class="person-picture" alt="Picture of {{ person.name }}"/>
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
<br/><i>{{ person.role }}</i> ({{ person.affiliation }})
{% if person.new-role %}
 → <i>{{ person.new-role }}</i> ({{ person.new-affiliation }})
{% endif %}
</span>
</div>
</div>
{% endfor %}
