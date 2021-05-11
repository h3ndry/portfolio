+++
title = "How To Download Videos on Udemy Using youtube-dl"
description = ""
tags = [
    "go",
    "linux",
    "udemy",
    "development",
]
categories = [
    "Development",
    "golang",
]
menu = "main"
date = 2021-01-29T00:23:34Z
draft = false
+++

If you are like me, the reason you chose [Udemy](https://www.udemy.com/) as a
leaning platform is because of their insane discount on courses, but that serve
nothing if you are from a country where data bundles cost too much. You end up
pay more to access the course than the actual cost of the course. I will not
even begin to mention the issue of slow network speed. One solution from this
is to download the videos from your course and watch them offline, and I am
going to show you just that.

### Download YouTube-dl

The are many ways to download youtube-dl the easy one is to use pip.
Please note that you will need python installed on your machine to use
pip nevertheless you can use pacman on arch Linux or any package manager
available to your operating system of choice.

Using pip:

```
sudo pip install --upgrade youtube_dl
```

Using pacman

```
sudo pacman -S youtube-dl
```

More information available on youtube-dl [website](http://ytdl-org.github.io/youtube-dl/download.html).

### Saving a website cookie

While we are still on the browser, We might as well download this small
browser extension to help us save website cookies for easy login. I
found it much easy to use cookies than using your username and password

- On Firefox download [here](https://addons.mozilla.org/en-US/firefox/addon/cookies-txt/?utm_content=addons-manager-reviews-link&utm_medium=firefox-browser&utm_source=firefox-browser)
- on Chrome download [here](https://chrome.google.com/webstore/detail/get-cookiestxt/bgaddhkoddajcdgocldbbfleckgcbcid?hl=en)

### Download Udemy Cookie and Copy course URL

We have all the tools we need to download videos. login to [Udemy](https://www.udemy.com/) and
and save the website cookie using the cookie extension you just download
and save the cookie.txt to the folder where you want to save your videos.

Before you leave your browser, Go to the course which you want to download
its videos. copy the URL of the course. Usually when you copy the URL
it will apper as something like this:

```
https://www.udemy.com/course/intro-to-node-js-express/learn/lecture/12546936?start=0#overview
```

you need to remove the `course/` before the course name and also remove
everything after
the course name after this, the URL should look something like this.

```
https://www.udemy.com/intro-to-node-js-express/
```

### Download Udemy videos

Now to download videos from your course you need to open the terminal and
navigate to the folder you saved your cookie.txt and run the command

```
youtube-dl -cookie cookie.xt <url>
```

This command it will download all videos from your course. In most case
you don't want all videos, That would take time and as we mention, if you
have slow connection is more likely to not finish. Its best to specify
where you shoud start downloading and where should stop using the `--playlist-start`
and `--playlist-stop` flags. like this `youtube-dl -cookie cookie.xt 'url' `

<!-- markdownlint-disable-next-line -->

if you notice, the videos that are download are not organise, and it is
hard to follow when it is like that. so what you can to is add the
foolowing at the add of the command `-o "..."` making the whole command
looking like this

`youtube-dl -cookie cookie.xt 'url' `

with this, you can continue learning from any part of the world and
regardless of internet speed.
