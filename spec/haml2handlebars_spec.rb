require 'spec_helper'

haml = %q{
!!!
%html(lang="en")
  %head(dynamic="#{attribute}")
    - ciao
    - if 3
      = pippo
    - else
      = caio

    %meta(charset="utf-8")
    %meta(content="IE=edge,chrome=1" http-equiv="X-UA-Compatible")
    = csrf_meta_tags

    %title Doomboard!

    / Mobile viewport optimized: j.mp/bplateviewport
    %meta(content="width=device-width,initial-scale=1" name="viewport")

    = javascript_include_tag 'http://js.pusherapp.com/1.9/pusher.min.js'
    = stylesheet_link_tag    'application'
    = javascript_include_tag 'application'

  %body
    %aside.left
      %section#leaderboard(data-widget="leaderboard")
      %section#dr_doomboard(data-widget="dr_doomboard")

    %section#projects
      - each numbers
        = n
      = 1234
    %aside.right
      %section#tweets(data-widget="twitter")
      %section#hammurabi
}

handlebars = %q{<!DOCTYPE html>
<html lang='en'>
  <head dynamic="{{attribute}}">
    {{ciao}}
    {{#if 3}}
      {{pippo}}
    {{else}}
      {{caio}}
    {{/if}}
    <meta charset='utf-8'>
    <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
    {{csrf_meta_tags}}
    <title>Doomboard!</title>
    <!-- Mobile viewport optimized: j.mp/bplateviewport -->
    <meta content='width=device-width,initial-scale=1' name='viewport'>
    {{javascript_include_tag 'http://js.pusherapp.com/1.9/pusher.min.js'}}
    {{stylesheet_link_tag    'application'}}
    {{javascript_include_tag 'application'}}
  </head>
  <body>
    <aside class='left'>
      <section data-widget='leaderboard' id='leaderboard'></section>
      <section data-widget='dr_doomboard' id='dr_doomboard'></section>
    </aside>
    <section id='projects'>
      {{#each numbers}}
        {{n}}
      {{/each}}
      {{1234}}
    </section>
    <aside class='right'>
      <section data-widget='twitter' id='tweets'></section>
      <section id='hammurabi'></section>
    </aside>
  </body>
</html>
}


describe Haml2Handlebars do
  describe ".convert" do
    it 'converts haml to handlebars' do
      Haml2Handlebars.convert(haml).should eq(handlebars)
    end
  end
end
