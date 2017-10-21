module WangeditorRails
  module Helper
    def wangeditor(name, method, options = {})
      content = options[:object][method]
      id = options[:id] || "#{name}_#{method}"
      name = "#{name}[#{method}]"
      #puts options

      output_buffer = ActiveSupport::SafeBuffer.new
      output_buffer << hidden_area(id, content, name)
      output_buffer << display_area(id, content)
      output_buffer << javascript_tag(create_scripts(id))
    end

    def hidden_area(id, content, name)
      content_tag :div, text_area_tag(id, content, name: name), style: 'display: none;'
    end

    def display_area(id, content)
      unless content.nil?
        content = sanitize content
      end
      content_tag(:div, content, id: "#{id}_editor")
    end

    def create_scripts(id)
      "var E = window.wangEditor
      var editor = new E('##{id}_editor')
      editor.customConfig.onchange = function (content) {
        document.getElementById('#{id}').value = content
      }
      editor.create()"
    end
  end

  module Builder
    def wangeditor(method, options = {})
      @template.send("wangeditor", @object_name, method, objectify_options(options))
    end
  end
end
