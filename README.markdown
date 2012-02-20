unite-flexmatcher
===

unite flexmatcher is prefix flex matcher

usage
---
### .vimrc
    call unite#custom_filters('file,buffer,buffer_tab', ['flexmatcher', 'sorter_default', 'converter_default'])


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
