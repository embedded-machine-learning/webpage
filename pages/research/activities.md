---
layout: page-fullwidth
#show_meta: false
title: "Activities"
#subheadline: "A Step-by-Step Guide"
#teaser: "This step-by-step guide helps you to customize Feeling Responsive to your needs."
permalink: "/research/activities/"
---

[//]: # Good guide for reading csv files: https://jekyllrb.com/tutorials/csv-to-table/

{% comment %}
<table>
  {% for row in site.data.ActivitiesOverview %}
    {% if forloop.first %}
    <tr>
      {% for pair in row %}
        <th>{{ pair[0] }}</th>
      {% endfor %}
    </tr>
    {% endif %}

    {% if row["Status"] == "Started" %}

      {% tablerow pair in row %}
        {{ pair[1] }}
      {% endtablerow %}
      
    {% endif %}
    
  {% endfor %}
</table>
{% endcomment %}

---

<table>
  {% for row in site.data.WorkProgress %}
    {% if forloop.first %}
    <tr>
      {% for pair in row %}
      	 {% if pair[0] != "Row" %}
            <th>{{ pair[0] }}</th>
	 {% endif %}
      {% endfor %}
    </tr>
    {% endif %}

    <tr>
      {% for pair in row %}
      	 {% if pair[0] != "Row" %}
            <td>{{ pair[1] }}</td>
	 {% endif %}
      {% endfor %}
    </tr>

      
  {% endfor %}
</table>

---

{% include researchFooter.html %}

