# Tiny improvements to the default theme of ActiveAdmin

[![Gem Version](https://badge.fury.io/rb/activeadmin_tiny_improvements.svg)](https://badge.fury.io/rb/activeadmin_tiny_improvements)


## What it does

It’s a collection of [CSS files](https://github.com/sergeypedan/activeadmin-tiny-improvements/tree/master/app/assets/stylesheets/activeadmin-tiny-improvements) with rules that make small improvements to the default theme, like increasing font size in textareas.


## Installation

Add this line to your application's Gemfile:

```ruby
gem "activeadmin_tiny_improvements"
```

Import our Sass file “activeadmin-tiny-improvements” in your CSS entrypoint that compiles ActiveAdmin CSS files:

```sass
// app/assets/stylesheets/active_admin.sass

// Your regular ActiveAdmin files
@import "active_admin/mixins"
@import "active_admin/base"
@import ...

// This gem’s files
@import "activeadmin-tiny-improvements"
```


## ActiveAdmin version compatibility

The current version of ActiveAdmin is 2.13.1. Our styles are and will be targeted on the latest version.
