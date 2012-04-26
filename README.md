# haml2handlebars

haml2handlebars is a tool for converting [Haml](http://haml-lang.com/) to Handlebars markup.


## Installing and loading haml2handlebars

haml2handlebars is currently distributed as a ruby gem.

`gem install haml2handlebars`


## Using haml2handlebars

Use the `haml2handlebars` command line or from Ruby call the `Haml2Handlebars.convert` method to have Haml markup translated into Handlebars.

### Example: Simple conversion

```bash
echo '.foo= bar' | haml2handlebars
# <div class='foo'>{{bar}}</div>
```

```ruby
haml = """
- if foo
  .bar= baz
- else
  = qux
"""
Haml2Handlebars.convert(haml)
# =>
# {{#if foo}}
#   <div class='bar'>{{baz}}</div>
# {{else}}
#   {{qux}}
# {{/if}}
```


## TODO

* Integrate with Rails Asset Pipeline for use in rails-ember projects, probably in a separate gem that depends on this?

## License

[MIT_LICENSE](/botandrose/haml2handlebars/blob/master/MIT_LICENSE)


## Credits

Based on [elia/haml2erb](https://github.com/elia/haml2erb):
[Elia Schito](https://github.com/elia)

Which is based on [c1sgo/haml2erb](https://github.com/c1sgo/haml2erb): 
[Chris Goddard](https://github.com/cgoddard)
[Louis Sivillo](https://github.com/BeaconInteractive)
