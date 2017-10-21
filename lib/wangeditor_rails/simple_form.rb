module WangeditorRails
  module SimpleForm
    class WangeditorInput < ::SimpleForm::Inputs::Base
      def input(wrapper_options)
        @builder.wangeditor(attribute_name, input_html_options)
      end
    end
  end
end

::SimpleForm::FormBuilder.map_type :wangeditor, :to => WangeditorRails::SimpleForm::WangeditorInput
