---
layout: page-fullwidth
show_meta: false
title: "Open Theses"
#subheadline: "A Step-by-Step Guide"
#teaser: "This step-by-step guide helps you to customize Feeling Responsive to your needs."
permalink: "/research/opentheses_old/"
---
We are currently offering the following theses.

{% assign date = 1677098591 %}

{% assign TypeList = "BA,DA" | split: "," %}

{% for Type in TypeList %}


{%if Type == 'BA' %}
### {{ 'Bachelortheses:'}}
{% endif %}

{%if Type == 'DA' %}
### {{ 'Mastertheses:'}}
{% endif %}

<table>
  {% for row in site.data.OpenTheses %}
     {% if forloop.first %}
	<tr>
	{% for pair in row %}
	   {% if pair[0] != "Type" %}
	      <th>{{ pair[0] }}</th>
	   {% endif %}
        {% endfor %}
	</tr>
     {% endif %}
     {% assign timestamp = {row['Date'] | date: "%s"} %}
     {% assign timestamp = timestamp | plus: 0 %}
     {% assign timestamp = timestamp | plus: 23328000 %}
     {% if timestamp <= date %}

     {% if row["Type"] == Type %}
        <tr>
        {% for pair in row %}
	   {% if pair[0] == "Link" %}
	   	 <td><a href="{{ pair[1] }}">{{ pair[1] }}</a> </td>
	   {% elsif pair[0] != "Type" %}
	   	 <td>{{ pair[1] }}</td>
	   {% endif %}
        {% endfor %}
        </tr>

     {% endif %}
     {% endif %}
  {% endfor %}
  
</table>
{% endfor %}

### Finished Theses

See the [Results section]({{ site.url }}{{ site.baseurl }}/research/results).

### Publications

See the [Publication section]({{ site.url }}{{ site.baseurl }}/publications).

---

{% include researchFooter.html %}
