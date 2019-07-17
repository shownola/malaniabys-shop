# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<div class="form-group">
  <%= select_tag(:supplier_id, options_for_select(@suppliers), :prompt => 'Select one') %>
</div>

<div class="text-center display-4">
  Products
</div>
<div class="supplier-container">
  <div align="center">
    <% @suppliers.each do %>
    <ul class="listing">
      <div class="row">
        <li><%= link_to pluralize(supplier.products.count, 'product') if supplier.prodocts %></li>
      </div>
    </ul>
    <% end %>
  </div>
</div>
<div align="center">
  <% @suppliers.each do %>

  <% end %>
</div>


Umgee ML015 Sheer Lace Back Sleeveless Top with Ruffled Details $20


<table class="table table-striped">
  <tr>
    <th>Id</th>
    <th>Image</th>
    <th>Title</th>
    <th>Description</th>

  </tr>



<!-- <ul> -->
  <%  if @category.products.count !=0 %>
    <% @category.products.each do |product| %>
    <tr>
      <td><%= product.id %></td>
      <td><%= image_tag(product.image.url, size: '75x75') if product.image? %></td>
      <td><%= link_to(product.title, product_path(product), id: 'title') %></td>
      <td><%= truncate(product.description, length: 75) %></td>




    <% end %>
  <% end %>
<!-- </ul> -->

</table>

<% if current_user.try(:type) == 'AdminUser' %>

<div class="">
  <%= link_to 'Edit', edit_category_path, class: 'btn btn-warning' %>
  <%= link_to 'Delete', category_path, method: :delete, data: {confirm: 'Are you sure?' }, class: 'btn btn-danger' %>
</div>

<% end %>
