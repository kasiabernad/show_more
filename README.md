# Show more

Show more gem is a simple gem to creating "show more" button and handling
functionality of showing, at first, specific number of elements and after submitting "show more" button showing all collection.

## Installation

Add it to your Gemfile:

```ruby
gem 'show_more', github: 'kasiakasprzak/show_more'
```
Run the command:

```console
bundle install
```

## Usage
Let's assume that we have collection of ```elements``` and we display them in ```index``` action

Follow the steps:

1. Include needed helpers in Controller and add to ```ElementsController``` to ```index``` collection:

  ```
  app/controllers/elements_controller.rb

  class ElementsController < ApplicationController
    ShowMore::ControllerHelpers
  
    def index
      collection_with_limit(5, Element)
    end
  end
  ```
  
  First parameter is the number of objects which we want to display at beginnig. 
  If we have 10 objects, after page load will be displayed only 5 of them.

  Second parameter is class name of our objects. Notice that this is not an String!

2. Extract part with collection from view and create partial for it. Add show_more_button helper to view

  ```
  app/views/index.html.erb

  <h1>Listing Elements</h1>
  <%= render partial: 'list_partial'%>
  <%= show_more_button('list_partial') %>
  ```
  
  As parameter pass name of partial, which is also name of id for whole collection.
  
  ```
  app/views/_list_partial.html.erb
  
  <div id='list_partial'>
    <% @resources.each do |element| %>
      <h3><%= element.name %></h3>
    <% end %>
  </div>
  ```

  Notice that all collection is in div with id the same as name of file! Use ```@resources``` variable instead of f.e @elements

## Demo
Here you can check how it works:
[DemoApp](https://murmuring-tor-55666.herokuapp.com/)

Here is repo for demo app:
[Repo for DemoApp](https://github.com/kasiakasprzak/show_more_demo)



