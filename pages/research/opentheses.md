---
layout: page-fullwidth
show_meta: false
title: "OpenTheses"
#subheadline: "A Step-by-Step Guide"
#teaser: "This step-by-step guide helps you to customize Feeling Responsive to your needs."
permalink: "/research/opentheses/"
---

### Theses

{% assign YearList = "2022,2021,2020" | split: "," %}

{% for year in YearList %}
### {{ year }} 

<table>
  {% for row in site.data.OpenTheses %}
     {% if forloop.first %}
	<tr>
	{% for pair in row %}
	   {% if pair[0] != "Year" %}
	      <th>{{ pair[0] }}</th>
	   {% endif %}
        {% endfor %}
	</tr>
     {% endif %}

     {% if row["Year"] == year %}
        <tr>
        {% for pair in row %}
	   {% if pair[0] == "Link" %}
	   	 <td><a href="{{ pair[1] }}">{{ pair[1] }}</a> </td>
	   {% elsif pair[0] != "Year" %}
	   	 <td>{{ pair[1] }}</td>
	   {% endif %}
        {% endfor %}
        </tr>

     {% endif %}    
  {% endfor %}
  
</table>
{% endfor %}



### Publications

See the [Publication section]({{ site.url }}{{ site.baseurl }}/publications).

---

{% include researchFooter.html %}
