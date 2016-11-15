
## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem "lysande-jekyll-theme"
```

And add this line to your Jekyll site:

```yaml
theme: lysande-jekyll-theme
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lysande-jekyll-theme

## Usage

The theme comes with four layouts: default, post, projects and blog. It includes a header, footer and a global
navigation menu.

It is intended to be used with a _projects folder, where markdown documents representing your projects can be stored.
Without the _projects folder, it is possible to use it as a blog with _posts only.

For sharing in line with Open Graph, include an image named 'share.png' in your /assets directory.

### _config.yml
The theme supports usernames to various social media sites. If you add in any of these usernames in your config file, an icon
will appear in your header that links to that account.

The supported usernames and the format for recording them in the config file are as follows:

```yaml
email: yourName
twitter_username: yourName
github_username: yourName
tumblr_username: yourName
instagram_username: yourName
facebook_username: yourName
youtube_username: yourName
pinterest_username: yourName
```

To be able to use the theme with the projects function, copy this into your _config.yml-file:

```yaml
collections:
  projects:
    categories: [example1, example2]
```

Add the categories you are interested in, separated by commas, between the square brackets.

To enable an rss feed to your site, add an rss flag in your config:

```yaml
rss: true
```

### Projects
To make use of the projects layout, add the following
to each project's Front Matter:

```yaml
category: example
```

and supply one of the categories you have recorded in your config file.

The projects will be displayed on any page you give the 'projects' layout, or otherwise accessible via site.projects,
just as site.posts gives you access to your blog posts. Anything you add to a page with the projects layout
will be displayed on top of the projects posts, under the projects navigational menu.

### Blog

Your blog posts will be showcased on every page you give the blog layout, or display them as you wish without this layout.
Anything you add to a page with the blog layout will be displayed on top of the blog posts.
The blog and post layouts comes with support for disqus comments. If you would like this enables, supply a 
disqus shortname for your site in the config file, like so:

```yaml
disqus_shortname: yourName
```

Then make sure your posts has a layout of 'post' and add comments to the Front Matter of the posts you would like the comments on, like so:

```yaml
comments: true
```


### Navigation

To have a link to your page show up in the global navigation, make sure you make a page and add

```yaml
title: Your Title
menu: main
```

to the page's Front Matter.


### Sass

The sass layouts available to import to your main.scss should you wish are the _base, that styles the main appearance
of the site, the header and the footer. It is recommended that you also import the _menu for styling of the global
navigation. If you opt to use the project and blog layout for displaying your projects and blog posts, the styles
for them are included as _projects and _blog. The _responsive makes the site responsive.

### Reference

Full list of _sass as follows:

@include '_base.scss'  --- basic styling
@include '_menu.scss' --- global menu
@include '_projects.scss' --- page that displays projects
@include '_blog.scss' --- main blog page with links to blog posts
@include '_responsive.scss' --- makes site responsive

Full list of _layouts as follows:

default   --- includes head, globalnav, footer, header
post      --- based on default, includes post title and disqus support
blog      --- based on default, includes all posts in _posts, a local nav list to all the posts and disqus comment count
projects  --- based on default, includes all projects in _projects and a local nav list of categories if more
categories than three and/or a small screen display


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/theuggla/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

You theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, and `_sass` tracked with Git will be released.

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

