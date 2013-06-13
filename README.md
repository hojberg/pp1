# Project Page One/Kanon

This is an app for intellectual and cultural history. It takes objects of cultural significance to what we think of as "the West" (in addition to the inclusion of what I think of as the west) and relates them to one another, their authors, geographies, and artifacts/instances of those objects.

It is written in rails with a bit of help from [*Ruby on Rails Tutorial: Learn Rails by Example*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/).

Note to @shojberg: At present, there's no association between the user auth system and the art_objects resource. My only goal was to get the basic CRUD functions of the art_object working. I have had varying degrees of success, but now it backbone app for art_objects won't work for anything except index. When something like show, edit, or new (not present) actually gets triggered, it makes a call to "art_objects/api/art_objects", whereas index makes the correct call to "api/art_objects".

It's a bit frustrating given what a simple app this is, but I'm not sure where else to look or what else to change. I'd really, really appreciate another pair of eyes on this. Many thanks.