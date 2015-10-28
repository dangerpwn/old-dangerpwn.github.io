---
title: How to setup Middleman
date: 2015-10-27 23:48 UTC
authors: carl
tags:
---

This post is a reference for myself regarding setting up new machines to post to and existing Middleman blog on github (such as this one). It does not describe how to create your own Middleman blog.

First make sure you have the following dependencies:

* ruby development packages ( `ruby-dev` on ubuntu, `ruby-devel` on centos )
* nodejs

Once you've met the above dependencies, perform the following:

```
git clone -b source https://github.com/dangerpwn/dangerpwn.github.io.git
cd dangerpwn.github.io
bundle install
middleman article ARTICLE_NAME
```

A new Markdown formatted blank article should now exist in source/articles. Add `authors: YOUR_NAME` to the frontmatter of the article. Data for authors are defined in data/authors.yml, and *YOUR_NAME* should correspond to an author defined in this file.

To add a cover image to your article, add `cover: PATH_TO_IMAGE` to the frontmatter of your post. You should store your images under the `images` directory. Confusing, I know.

If you want to check your work, you can run `middleman server` to compile and serve the site at http://localhost:4567. If you are sure your post is swell, run `middleman deploy` to push your changes to `remote`. The `source` branch is used for development. Everything under the `master` branch is published, and so should only contain shit you want, well, published. Just work in the `source` branch, and let `middleman deploy` do the what's necessary with the `master` branch. 




