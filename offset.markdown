---
display-offset: 0
feedtype: agile-blog
---

categories:
{% assign myposts = site.posts | where: 'categories', post.categories %}
{% for post in myposts offset: page.display-offset %}
    {{ post.title }}
{% endfor %}

{% comment %} posts:
{% for post in site.posts offset: page.display-offset %}
    {{ post.title }}
{% endfor %} {% endcomment %}
