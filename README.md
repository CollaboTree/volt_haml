# VoltHaml

Provides **Haml Templates Rendering** for your Volt apps.


## Installation

Add to your Gemfile:

```ruby
gem 'volt_haml'
```

This requires a version of volt which does not yet exist, but works with this branch:
[https://github.com/CollaboTree/volt/tree/haml](https://github.com/CollaboTree/volt/tree/haml)


## HOW TO USE

You need to make slightly weird looking haml, like this:

```haml
<:Title>
{{ view main_path, "title", {controller_group: 'main'} }}
<:Body>
.container
  .header
    %ul.nav.nav-pills.pull-right
      %:nav{:href => "/"} Home
      {{ if Volt.current_user? }}
      %:nav{:href => "/project/new"} New Post
      {{ end }}
      %:nav{:href => "/about"} About
      %:user_templates:menu
    %h3.text-muted CollaboTree
  %:volt:notices
  {{ view main_path, 'body', {controller_group: 'main'} }}
  .footer
<:Nav>
%li.if.end{:class => "{{ active_tab? }} active {{ }}"}
  %a{:href => "{{ attrs.href }}"} {{ yield }}
  ```

