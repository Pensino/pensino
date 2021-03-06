module ApplicationHelper

  # Set title pages
  def title(page_title)
    content_for(:title) { page_title.to_s }
  end

  # Render error messages
  def error_messages_for( resource )
    render "partials/error_messages_for", :resource => resource
  end

  # Remove polymorphic association
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  # Add polymorphic association
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|

      render("partials/" + association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, ("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"))
  end

  def tab_class(tab)

    controller = @controller.class.to_s

    controller = (controller == 'TimeTablesController'? 'CoursesController' : controller)

    if (tab.to_s + 'Controller').to_s == controller
      'current'
    else
      ''
    end
  end

  def flash_message

    messages = ""
    [:notice, :info, :warning, :error].each {|type|
      if flash[type]
        messages += "<div id='messages'>
                      <div id='app'>
                        <p class=\"#{type}\">#{flash[type]}</p>
                      </div>
                     </div>"
      end
    }
    messages
  end
end

