[Lysande Jekyll Theme][1]

[![LICENSE](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/theuggla/lysande-jekyll-theme/blob/master/LICENSE.txt)
[![Jekyll](https://img.shields.io/badge/jekyll-%3E%3D%203.6-blue.svg)](https://jekyllrb.com/)
[![Ruby gem](https://img.shields.io/gem/v/lysande-jekyll-theme.svg)](https://rubygems.org/gems/lysande-jekyll-theme)

Lysande is a [Jekyll theme](https://jekyllrb.com/docs/themes/) meant as 
a base for a portfolio site.

- Clean responsive design that works all the way down to a mobile screen
- Blog page and layout
- Projects page and layout
- Disqus Comments
- SEO best practices via [Jekyll SEO Tag](https://github.com/jekyll/jekyll-seo-tag/)

[![Lysande live preview][2]][1]

[1]: https://theuggla.github.io/example
[2]: https://github.com/theuggla/lysande-jekyll-theme/blob/master/screenshot.png (live preview)

[A live preview of the theme here](https://theuggla.github.io/example)  

[The theme being used as the theme for my portfolio here](https://theuggla.github.io/)

## Table of Contents

1. [Installation](#installation)
   1. [Ruby Gem Method](#ruby-gem-method)
   2. [GitHub Pages Method](#github-pages-method)
      1. [Remove the Unnecessary](#remove-the-unnecessary)
2. [Upgrading](#upgrading)
   1. [Ruby Gem](#ruby-gem)
   2. [Remote Theme](#remote-theme)
   3. [Use Git](#use-git)
      1. [Pull Down Updates](#pull-down-updates)
   4. [Update Files Manually](#update-files-manually)
3. [Structure](#structure)
   1. [Starting Fresh](#starting-fresh)
   2. [Starting from `jekyll new`](#starting-from-jekyll-new)
4. [Configuration](#configuration)
   1. [Text](#text)
   2. [Navigation](#navigation)
   3. [Author](#author)
   4. [Comments (via Disqus)](#comments-via-disqus)
5. [Layouts](#layouts)
   1. [`layout: default`](#layout-default)
   2. [`layout: blog`](#layout-blog)
   3. [`layout: post`](#layout-page)
   4. [`layout: projects`](#layout-projects)
6. [Customization](#customization)
   1. [Overriding Includes and Layouts](#overriding-includes-and-layouts)
   2. [Customizing Sass (SCSS)](#customizing-sass-scss)
   3. [Icons](#icons)
7. [Contributing](#contributing)
8. [Credits](#credits)
9. [License](#license)

## Installation

If you're running Jekyll v3.5+ and self-hosting you can quickly install the 
theme as a Ruby gem. If you're hosting with GitHub Pages you can install as a 
remote theme or directly copy all of the theme files (see [structure](#structure) 
below) into your project.

### Ruby Gem Method

1. Add this line to your Jekyll site's `Gemfile`:

   ```ruby
   gem "lysande-jekyll-theme"
   ```
2. Add this line to your Jekyll site's `_config.yml` file:

   ```yaml
   theme: lysande-jekyll-theme
   ```

2. Then run [Bundler](http://bundler.io/) to install the theme gem and dependencies:
   
   ```terminal
   bundle install
   ```

### GitHub Pages Method

GitHub Pages has added [full support](https://github.com/blog/2464-use-any-theme-with-github-pages) 
for any GitHub-hosted theme.

1. Replace `gem "lysande-jekyll-theme"` in your Gemfile with:

   ```ruby
   gem "github-pages", group: :jekyll_plugins
   ```

2. Run `bundle update` and verify that all gems install properly.

3. Add `remote_theme: "theuggla/lysande-jekyll-theme"` to your 
   `_config.yml` file. Remove any other `theme:` or `remote_theme:` entries.

---

**Note:** Your Jekyll site should be viewable immediately at 
<http://USERNAME.github.io>. If it's not, you can force a rebuild by 
**Customizing Your Site** (see below for more details).

If you're hosting several Jekyll based sites under the same GitHub username you 
will have to use Project Pages instead of User Pages. Essentially you rename the 
repo to something other than **USERNAME.github.io** and create a `gh-pages` 
branch off of `master`. For more details on how to set things up check 
[GitHub's documentation](https://help.github.com/articles/user-organization-and-project-pages/).

#### Remove the Unnecessary

If you forked or downloaded the `lysande-jekyll-theme` repo you can 
safely remove the following files and folders:

- `lysande-jekyll-theme.gemspec`
- `LICENSE`
- `README.md`
- `screenshot.png`
- `/example`
- `Gemfile.lock`

## Upgrading

If you're using the Ruby Gem or remote theme versions of Lysande, 
upgrading is fairly painless.

To check which version you are currently using, view the source of your built 
site and you should something similar to:

```
<!--
    Lysande Jekyll Theme 1.0.0
    Copyright 2017-2018 Molly Arhammar - theuggla.github.io
    Free for personal and commercial use under the MIT license
    https://github.com/theuggla/lysande-jekyll-theme/blob/master/LICENSE
-->
```

At the top of every `.html` file and `/assets/main.css`.

### Ruby Gem

Simply run `bundle update` if you're using Bundler (have a `Gemfile`) or `gem 
update lysande-jekyll-theme` if you're not.

### Remote Theme

When hosting with GitHub Pages you'll need to push up a commit to force a 
rebuild with the latest [theme release](https://github.com/theuggla/lysande-jekyll-theme/releases).

An empty commit will get the job done too if you don't have anything to push at 
the moment:

```terminal
git commit --allow-empty -m "Force rebuild of site"
```

### Use Git

If you want to get the most out of the Jekyll + GitHub Pages workflow, then 
you'll need to utilize Git. To pull down theme updates you must first ensure 
there's an upstream remote. If you forked the theme's repo then you're likely 
good to go.

To double check, run `git remote -v` and verify that you can fetch from `origin https://github.com/theuggla/lysande-jekyll-theme.git`.

To add it you can do the following:

```terminal
git remote add upstream https://github.com/theuggla/lysande-jekyll-theme.git
```

#### Pull Down Updates

Now you can pull any commits made to theme's `master` branch with:

```terminal
git pull upstream master
```

Depending on the amount of customizations you've made after forking, there's 
likely to be merge conflicts. Work through any conflicting files Git flags, 
staging the changes you wish to keep, and then commit them.

### Update Files Manually

Another way of dealing with updates is [downloading the theme](https://github.com/theuggla/lysande-jekyll-theme/archive/master.zip) 
--- replacing your layouts, includes, and assets with the newer ones manually. 
To be sure that you don't miss any changes it's probably a good idea to review 
the theme's [commit history](https://github.com/theuggla/lysande-jekyll-theme/commits/master) 
to see what's changed since.

Here's a quick checklist of the important folders/files you'll want to be 
mindful of:

| Name                   |     |
| ----                   | --- |
| `_layouts`             | Replace all. Apply edits if you customized any layouts. |
| `_includes`            | Replace all. Apply edits if you customized any includes. |
| `assets`               | Replace all. Apply edits if you customized stylesheets, scripts or icons. |
| `_sass`                | Replace all. Apply edits if you customized Sass partials. |
| `_data/theme.yml`      | Safe to keep. Verify that there were no major structural changes or additions. |
| `_config.yml`          | Safe to keep. Verify that there were no major structural changes or additions. |

---

**Note:** If you're not seeing the latest version, be sure to flush browser and 
CDN caches. Depending on your hosting environment older versions of 
`/assets/css/main.css` `*.md` or `*.html` may be cached.

## Structure

Layouts, includes, Sass partials, and data files are all placed in their default 
locations. Stylesheets and icons in `assets`, and a few development related 
files in the project's root directory.

**Please note:** If you installed Basically Basic via the Ruby Gem method, theme 
files found in `/_layouts`, `/_includes`, `/_sass`, and `/assets` will be 
missing. This is normal as they are bundled with the [`lysande-jekyll-theme`](https://rubygems.org/gems/lysande-jekyll-theme) gem.

```terminal
lysande-jekyll-theme
├── _data                      # data files
|  └── theme.yml               # theme settings and custom text
├── _includes                  # theme includes
├── _layouts                   # theme layouts (see below for details)
├── _sass                      # Sass partials
├── assets
|  ├── backgrounds
|  |  └── default_rustic.jpg
|  ├── fonts
|  |  └── [...fonts]
|  ├── icons
|  |  └── [...social media icons]
|  ├── open-graph
|  |  └── default.png
|  ├── projects
|  |  └── images
|  |  └── symbols
|  └── main.scss
├── _config.yml               # sample configuration
└── index.md                  # sample home page
└── blog.md                   # sample blog landing page
└── projects.md               # sample projects landing page
```

### Starting Fresh

After creating a `Gemfile` and installing the theme you'll need to add and edit 
the following files:

- [`_config.yml`](_config.yml)
- [`/_data/theme.yml`](_data/theme.yml)
- [`index.md`](index.md) 
- [`blog.md`](blog.md) 
- [`projects.md`](projects.md) 

### Starting from `jekyll new`

Using the `jekyll new` command will get you up and running the quickest.

Edit `_config.yml` and create `_data/theme.yml` as instructed above and you're 
good to go.

## Configuration

Configuration of site-wide elements (`title`, `description`, 
`author`, etc.) happens in your project's `_config.yml`. See the 
[example configuration](example/_config.yml) in this repo for additional 
reference. The most important thing to note is that you will want to add `permalink: pretty` to 
your `_config.yml` to keep the links working properly.

|                    | Description                                                               |
| ------------------ | ------------------------------------------------------------------------- |
| `title`            | Your site's title (e.g., Arthur Dent's Site)                              |
| `email`            | Your emai. Will be used as a link in the social media menu                |
| `description`      | Short site description (e.g., A site about my coffe projects)             |
| `url`              | The base URL to your site (e.g., https://groverloaf.org). Leave empty if hosting on github pages.|
| `author`           | Your name, used as a byline and title of the site                         |
| `share_image`      | For sharing in line with Open Graph, set the name for your image (including .png) and place it in your /assets/open-graph directory.                             |
| `background_image` | The name of the image-file to use as a background image of the site. Place the image in /assets/backgrounds  |
| `rss`              | If set to true, an rss feed will be added for the projects of the site    |
| `[social-media]_username` | The theme supports usernames to various social media sites. If you add in any of these usernames in your config file, an icon will appear in your header that links to that account. Supported social media sites are `twitter`, `github`, `tumblr`, `instagram`, `facebook`, `pinterest`                    |
| `youtube_channel` | The name of your Youtube channel. If added, an icon will appear in your header that links to the channel |
| `skype_inviteURL` | The url to invite someone to add you on skype. If added, an icon will appear in your header that links to the invitation            |
| `linkedin_usernameURL`  | The username-URL you have chosen for your LinkedIn account. If added, an icon will appear in your header that links to the account                     |
| `upwork_userID`  | The ID of your Upwork account. If added, an icon will appear in your header that links to the account                     |
| `disqus_shortname`  |  To enable Disqus comments, add your [Disqus shortname](https://help.disqus.com/customer/portal/articles/466208) |

For more configuration options be sure to consult the documentation for: 
[**jekyll-seo-tag**][jekyll-seo-tag], [**jekyll-feed**][jekyll-feed], 

[jekyll-seo-tag]: https://github.com/jekyll/jekyll-seo-tag

### Text

To change text on the landing pages of the blog, project and index pages found in the example folder, add the following to your [`/_data/theme.yml`](_data/theme.yml) file and customize as necessary. Leaving the field empty ill revert to the default-text, while setting it to `none` will show no text at all.

```yaml
t:
  index_text: \'\'|\'none\'|\'custom text\'
  blog_intro: \'\'|\'none\'|\'custom text\'
  projects_intro: \'\'|\'none\'|\'custom text\'
```

### Navigation

All pages with a `menu: main` attribute in their Front Matter will be added to the global
menu. For more granular control and sorting of these menu links:

1. The link in the menu will be named after the page's `title` attribute in the Front Matter.

2. The links will be sorted according to the `weight` attribute in the front matter, starting from 1 and counting upwards.

### Author

Author information from the `_config.yml` is used as the byline of your page.

### Comments (via Disqus)

Optionally, if you have a [Disqus](https://disqus.com/) account, you can show a 
comments section below each post.

To enable Disqus comments, add your [Disqus shortname](https://help.disqus.com/customer/portal/articles/466208) to your project's 
`_config.yml` file:

```yaml
  disqus_shortname: my_disqus_shortname
```

Comments will only appear in production when built 
with the following [environment value](http://jekyllrb.com/docs/configuration/#specifying-a-jekyll-environment-at-build-time): 
`JEKYLL_ENV=production`. If you are building with Github Pages, the environment variable will be set to `production` automatically.

If you don't want to display comments for a particular post you can disable 
them by adding `comments: false` to that post's front matter.

To display the comments, make sure your posts has a layout of 'post' and add comments to the Front Matter of the posts you would like the comments on, like so:

```yaml
comments: true
```

## Layouts

This theme provides the following layouts, which you can use by setting the 
`layout` [Front Matter](https://jekyllrb.com/docs/frontmatter/) on each page, 
like so:

```yaml
---
layout: name
---
```

The theme comes with four layouts: default, post, projects and blog. It includes a header, footer and a global
navigation menu.

It is intended to be used with a _projects folder, where markdown documents representing your projects can be stored.
Without the _projects folder, it is possible to use it as a blog with _posts only.

### `layout: default`

This layout handles all of the basic page scaffolding placing the page content 
between the masthead and footer elements. All other layouts inherit this one 
and provide additional styling and features inside of the `{{ content }}` block.

### `layout: blog`

The `blog` layout includes a local navigation list of all posts in _posts, and displays a list with the title, an excerpt, and a disqus comment count for each post.

### `layout: post`

To be able to use the theme with the `blog` and `post` layouts, create a `_posts` directory and place your blog posts in it with a Front Matter that includes
```yaml
layout: post
```

The blog posts should be in `.md` format, and be named in line with the `YYYY-MM-DD-title-of-post.md`-convention. See [example](/example/_posts/2017-10-02-example-post.md)

The `post` layout supports the following additional Front Matter:
```yaml
url: /your-custom-url-to-post
title: the title of the post
comments: true
excerpt_separator: <!--custom--> 
```

If `excerpt_separator` is not given, it will default to the first paragraph break. If `comments` is set to `true` and a `disqus_shortname` has been given in the `_config-yml`, disqus comments will be enabled when the site is in production. 

### `layout: projects`

To be able to use the theme with the projects layout, copy this into your _config.yml-file:

```yaml
collections:
  projects:
    categories: [example1, example2]
```

Add the categories you are interested in, separated by commas, between the square brackets.

To make use of the projects layout, create a `_projects` directory and add your projects as `.md`-files, adding the following to each project's Front Matter:

```yaml
category: example1
```

and supply one of the categories you have recorded in your config file. See [example](/example/_projects/jekylltheme.md)

The projects will be displayed on any page you give the `projects` layout, or otherwise accessible via site.projects,
just as site.posts gives you access to your blog posts. Anything you add to a page with the projects layout
will be displayed on top of the projects posts, under the projects navigational menu. Projects are displayed crouped by category, and the `projects` layout adds a navigation between the different categories if more
categories than three and/or a small screen display.

The `projects` layout supports the following front matter:
```yaml
title: "jekyll theme"
category: code, published
tags: liquid, html, sass
```

Whete `title` will be the title of the project, and `tags` will be displayed in smaller font.

## Customization

The default structure and style of this theme can be overridden and 
customized in the following two ways.

### Overriding Includes and Layouts

Theme defaults can be [overridden](http://jekyllrb.com/docs/themes/#overriding-theme-defaults) 
by placing a file with the same name into your project's `_includes` or 
`_layouts` directory. For instance:

- To specify a custom style path or meta data to the [`_includes/head.html `](_includes/head.html) 
file, create an `_includes` directory in your project, copy 
`_includes/head.html` from Lysande's gem folder to 
`<your_project>/_includes` and start editing that file.

**ProTip:** to locate the theme's files on your computer run 
`bundle show lysande-jekyll-theme`. This returns the location of the 
gem-based theme files.

### Customizing Sass (SCSS)

To override the default [Sass](http://sass-lang.com/guide) (located in theme's 
`_sass` directory), do one of the following:

1. Copy directly from the Lysande gem

   - Go to your local Lysande gem installation directory (run 
     `bundle show lysande-jekyll-theme` to get the path to it).
   - Copy the contents of `/assets/main.scss` from there to 
     `<your_project>`.
   - Customize what you want inside `<your_project>/assets/main.scss`.

2. Copy from this repo.

   - Copy the contents of [assets/main.scss](assets/main.scss) 
     to `<your_project>`.
   - Customize what you want inside `<your_project/assets/main.scss`.

The sass layouts available to import to your main.scss should you wish are the _base, that styles the main appearance
of the site, the header and the footer. It is recommended that you also import the _menu for styling of the global
navigation. If you opt to use the project and blog layout for displaying your projects and blog posts, the styles
for them are included as _projects and _blog. The _responsive makes the site responsive.

Full list of _sass as follows:

1. @include '_base.scss'  --- basic styling
2. @include '_menu.scss' --- global menu
3. @include '_projects.scss' --- page that displays projects
4. @include '_blog.scss' --- main blog page with links to blog posts
5. @include '_responsive.scss' --- makes site responsive

### Icons

There are icon helper includes to aid in generating 
social network links.

| Include Parameter | Description                      | Required                |
| ----------------- | ---------------------------------| ----------------------- |
| `username`        | Username on given social network | **Required**            |

## Contributing

Found a typo in the documentation? Interested in adding a feature or 
[fixing a bug][issues]? Then by all means [submit an issue][new-issue] or take a
stab at submitting a [pull request][using-pull-requests]. If this is your first 
pull request, it may be helpful to read up on the [GitHub Flow][github-flow].

[issues]: https://github.com/theuggla/lysande-jekyll-theme/issues
[new-issue]: https://github.com/theuggla/lysande-jekyll-theme/issues/new
[using-pull-requests]: https://help.github.com/articles/using-pull-requests/
[github-flow]: https://guides.github.com/introduction/flow/

### Pull Requests

When submitting a pull request:

1. Clone the repo.
2. Create a branch off of `master` and give it a meaningful name (e.g.
   `my-awesome-new-feature`) and describe the feature or fix.
3. Open a pull request on GitHub.

Sample pages can be found in the [`/example`](/example) 
folder if you'd like to tackle any "low-hanging fruit" like fixing typos, bad 
grammar, etc.

---

## Credits

### Creator

**Molly Arhammar**

- <https://theuggla.github.io>
- <https://github.com/theuggla>
- <https://linkedin.com/in/molly-arhammar>

## License

The MIT License (MIT)

Copyright (c) 2016-2019 Molly Arhammar and contributors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
