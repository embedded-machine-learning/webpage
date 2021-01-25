---
layout: page-fullwidth
#show_meta: false
title: "Activities"
#subheadline: "A Step-by-Step Guide"
#teaser: "This step-by-step guide helps you to customize Feeling Responsive to your needs."
permalink: "/research/activities/"
---

[//]: # Good guide for reading csv files: https://jekyllrb.com/tutorials/csv-to-table/

{% assign StatusList = "completed,active,open" | split: "," %}

{% for st in StatusList %}
### {{ st | capitalize }} 

<table>
  {% for row in site.data.WorkProgress %}
     {% if forloop.first %}
	<tr>
	{% for pair in row %}
	   {% if pair[0] != "State" %}
	      <th>{{ pair[0] }}</th>
	   {% endif %}
        {% endfor %}
	</tr>
     {% endif %}

     {% if row["State"] == st %}
        <tr>
        {% for pair in row %}
	   {% if pair[0] != "State" %}
	      {% if pair[0] == "Progress" %}
	      	 <td>{{ pair[1] | times: 100.0 | round }}% </td>
	      {% else %}
	       	 <td>{{ pair[1] }}</td>
	      {% endif %}
	   {% endif %}
        {% endfor %}
        </tr>

     {% endif %}    
  {% endfor %}
  
</table>
{% endfor %}




{% comment %}
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
{% endcomment %}


---

{% include researchFooter.html %}

