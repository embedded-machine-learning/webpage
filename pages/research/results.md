---
layout: page-fullwidth
show_meta: false
title: "Results"
#subheadline: "A Step-by-Step Guide"
#teaser: "This step-by-step guide helps you to customize Feeling Responsive to your needs."
permalink: "/research/results/"
---

### Theses

{% assign YearList = "2020" | split: "," %}

{% for year in YearList %}
### {{ year }} 

<table>
  {% for row in site.data.Theses %}
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
	   {% if pair[0] != "Year" %}
	   	 <td>{{ pair[1] }}</td>
	   {% endif %}
        {% endfor %}
        </tr>

     {% endif %}    
  {% endfor %}
  
</table>
{% endfor %}

### Software

<table>
  {% for row in site.data.Software %}
     {% if forloop.first %}
	<tr>
	{% for pair in row %}
	      <th>{{ pair[0] }}</th>
        {% endfor %}
	</tr>
     {% endif %}

     <tr>
     {% for pair in row %}
     	     {% if pair[0] == "Link" %}
	     	   <td> <a href="{{ pair[1] }}">{{ pair[1] }}</a> </td>
	     {% else %}
	     	   <td> {{ pair[1] }}</td>
	     {% endif %}
     {% endfor %}
     </tr>

  {% endfor %}
  
</table>


### Publications

See the [Publication section]({{ site.url }}{{ site.baseurl }}/publications).

---

{% include researchFooter.html %}

