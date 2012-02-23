unite-flexmatcher
===

Duplicate
===
 matcher_fuzzy what is standard matcher of unite.vim  improved itself vehavior.
 so it can match like this matcher

 detail https://github.com/Shougo/unite.vim/commit/2a9e3a0d8e31f0485c5ed6e6a795290564f1da8e

unite flexmatcher is prefix flex matcher

usage
---
### .vimrc
    call unite#custom_filters('file,buffer,buffer_tab,neocomplcache', ['flexmatcher', 'sorter_default', 'converter_default'])


ex.
    
    >_
    -NeoBundle
    -NeoBundleClean
    -NeoBundleDocs

    >nodl
    -NeoBundle
     ^ ^   ^^

flexmatcher matches 'n.\*o.\*d.\*l.\*' regexp



MIT License
