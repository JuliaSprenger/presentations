pandoc -t revealjs -s --slide-level 2 -o talk_local.html talk.md -V revealjs-url=../reveal.js
pandoc -t revealjs -s --slide-level 2 -o talk_remote.html talk.md -V revealjs-url=https://revealjs.com
