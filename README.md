# wangeditor_rails
>wangEditor —— 轻量级 web 富文本编辑器，配置方便，使用简单。支持 IE10+ 浏览器。


## Features
* 提供[wangeditor](https://github.com/wangfupeng1988/wangEditor)(3.0.10)Rails集成
* 支持SimpleForm

## Install
1. Add to Gemfile then run 'bundle'
```
gem 'wangeditor_rails'
```

2. Run install generator
```
rails generate wangeditor:install
```

3. Add below line to your application.js
```
//= require wangEditor
```

## Usage:
```
<%= form_for @post do |f| %>
  <%= f.text_field :body %>
  <%= f.wangeditor :body %>
  <%= f.submit %>
<% end %>
```

### with SimpleForm
```
<%= simple_form_for @post do |f| %>
  <%= f.input :title %>
  <%= f.input :body, as: :wangeditor %>
  <%= f.button :submit %>
<% end %>
```

## Todo
- [ ] 七牛上传图片

# Thanks
* [rails_wangeditor](https://github.com/a598799539/rails_wangeditor)
* [ckeditor](https://github.com/galetahub/ckeditor)

## License
MIT License.
