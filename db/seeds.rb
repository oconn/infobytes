# HEY DO SUB_CHAPTERS NEED AN ORDER NUMBER LIKE CHAPTERS?

user = User.create(first_name: "Han", last_name: "Solo", user_name: "rebel_scum", email: "han@aliance.com", password: "password", password_confirmation: "password")
 
tutorial = Tutorial.create(title: "How to Be Neal", description: "A detailed tutorial on how to be the most gnarly land lubber of a sailer", user_id: user.id)
intro = Chapter.create(title: "Introduction", number: 0, tutorial_id: tutorial.id)
 
ch_one = Chapter.create(title: "Not Giving a Fuck", number: 1, tutorial_id: tutorial.id)
sub = SubChapter.create(title: "Emotion is Overated", chapter_id: ch_one.id)
 
x = Paragraph.create(body: "Seriously do not care. You should take more care in where the wind is blowing on Mars than if some is sad that you killed their puppy.")
Content.create(sub_chapter_id: sub.id, order_number: 1, attatchable_type: "paragraph", attatchable_id: x.id)
x = CodeSnippet.create(body: "<div id='editor' style='height: 200px; width: 500px'>Neal = { <br> <br>sayHi: undefined<br>} <br> </div> <br> <script> <br> var editor = ace.edit('editor');<br> editor.setTheme('ace/theme/textmate');<br> editor.session.setMode('ace/mode/javascript');<br> editor.getSession().setUseWrapMode(true);<br> editor.setReadOnly(true);<br> storeInfo = function() {  <br> document.getElementById('input_value').value = editor.getValue()<br> }<br></script><br>")
Content.create(sub_chapter_id: sub.id, order_number: 2, attatchable_type: "paragraph", attatchable_id: x.id)
 
sub = SubChapter.create(title: "Ignoring Crying Babies", chapter_id: ch_one.id)
x = Paragraph.create(body: "Wear earbuds while listening to Billy Joel")
Content.create(sub_chapter_id: sub.id, order_number: 1, attatchable_type: "paragraph", attatchable_id: x.id)
x = CodeSnippet.create(body: "<div id='editor' style='height: 200px; width: 500px'>Neal = { <br> <br>careLevel: undefined <br>} <br> </div> <br> <script> <br> var editor = ace.edit('editor');<br> editor.setTheme('ace/theme/textmate');<br> editor.session.setMode('ace/mode/javascript');<br> editor.getSession().setUseWrapMode(true);<br> editor.setReadOnly(true);<br> storeInfo = function() {  <br> document.getElementById('input_value').value = editor.getValue()<br> }<br></script><br>")
Content.create(sub_chapter_id: sub.id, order_number: 2, attatchable_type: "paragraph", attatchable_id: x.id)
 
ch_two = Chapter.create(title: "Sailing", number: 2, tutorial_id: tutorial.id)
sub = SubChapter.create(title: "Getting On A Boat", chapter_id: ch_two.id)
  
x = Paragraph.create(body: "Put on you big person underwear")
Content.create(sub_chapter_id: sub.id, order_number: 1, attatchable_type: "paragraph", attatchable_id: x.id)
x = CodeSnippet.create(body: "<div id='editor' style='height: 200px; width: 500px'>Neal = { <br> <br>careLevel: undefined<br>} <br> </div> <br> <script> <br> var editor = ace.edit('editor');<br> editor.setTheme('ace/theme/textmate');<br> editor.session.setMode('ace/mode/javascript');<br> editor.getSession().setUseWrapMode(true);<br> editor.setReadOnly(true);<br> storeInfo = function() {  <br> document.getElementById('input_value').value = editor.getValue()<br> }<br></script><br>")
Content.create(sub_chapter_id: sub.id, order_number: 2, attatchable_type: "paragraph", attatchable_id: x.id)
 
sub = SubChapter.create(title: "Ignoring Crying Babies", chapter_id: ch_two.id)
x = Paragraph.create(body: "They will be on the seas....be prepared")
Content.create(sub_chapter_id: sub.id, order_number: 1, attatchable_type: "paragraph", attatchable_id: x.id)
x = CodeSnippet.create(body: "<div id='editor' style='height: 200px; width: 500px'>Neal = { <br> <br>careLevel: undefined<br>} <br> </div> <br> <script> <br> var editor = ace.edit('editor');<br> editor.setTheme('ace/theme/textmate');<br> editor.session.setMode('ace/mode/javascript');<br> editor.getSession().setUseWrapMode(true);<br> editor.setReadOnly(true);<br> storeInfo = function() {  <br> document.getElementById('input_value').value = editor.getValue()<br> }<br></script><br>")
Content.create(sub_chapter_id: sub.id, order_number: 2, attatchable_type: "paragraph", attatchable_id: x.id)