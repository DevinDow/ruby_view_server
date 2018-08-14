require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

family = ['Devin', 'Andrea', 'Riley', 'Parker']
family << 'dog'
template = ERB.new "family = <%= family %>"
puts template.result(binding)
template = ERB.new "
    <% family.each do |member| %> 
        <%= member %>
    <% end %>"
puts template.result(binding)

ages = {'Devin' => 45, 'Andrea' =>39, 'Riley' => 10, 'Parker' => 7}
template = ERB.new "
    <ul>
        <% ages.each do |person| %>
            <li><%= person[0] + ' is ' + person[1].to_s %></li>
        <% end %>
    </ul>"
puts template.result(binding)
