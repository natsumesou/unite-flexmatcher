unite-flexmatcher
===

unite flexmatcher is prefix flex matcher

usage
---
### vimrc
  call unite#custom_filters('file,buffer,buffer_tab', ['matcher_default', 'sorter_default', 'flexmatcher'])


ex.
>
-NeoBundle
-NeoBundleClean
-NeoBundleDocs

>nodl
-NeoBundle
 ~ ~   ~~

flexmatcher matches 'n.*o.*d.*l.*' regexp


MIT License
