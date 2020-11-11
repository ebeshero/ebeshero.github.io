## Dr. B's Steps for converting Dracula text to Dracula XML with Regular Expressions

Find: `&` . (found 16)
Replace with `&amp;`

Find `<`  (found 0)

Find `>` (found 0)

To evenly space out the document, find more than two newlines in a row: `\n\n\n+` . (found 1)
Replace with: `\n\n`

Working from the inside out, let's tag everything as a paragraph!
With dot matches all shut off (so the greedy match does not extend beyond a line:
Find: `^.+$`
Replace with: `<p>\0</p>`

Now, find and wrap all the chapters, applying our "close-open" strategy, 
in which we find the beginning of every chapter at the same time that we find the end of a previous chapter, 
and set a close tag for the previous chapter before the open tag of the next chapter.
Find: `<p>CHAPTER.+</p>` .  (found 27)
Set capturing groups so we throw out the <p> tags, and preserve only the CHAPTER information:
`<p>(CHAPTER.+)</p>`
Replace with: `</chapter>\n<chapter><heading>\1</heading>`
Here I also simply wrapped the chapter info in a heading element like a label. 
The resulting replace looks like this for CHAPTER I:
```
</chapter>
<chapter><heading>CHAPTER I</heading>
```
And the last chapter has no close tag at the end of the novel. 
So, manually cut and paste the single misplaced `</chapter>` endtag
from the top of the file to the end.

Find spoken passages contained inside of single lines:
(with dot matches all turned OFF):
Find: `".+?"`   (found 1386)
Set a capturing group so we set `<q>` tags around the spoken passages,
while throwing away the unnecessary quotation marks:
`"(.+?)"`
Replace with: `<q>\1</q>`

Take a survey of spoken passages that span multiple lines / paragraphs:
Turn Dot matches all ON:
Find: ".+?"  (Found 77)
NOTE: Why would it be dangerous to replace these?. 
(Because it would break the XML hierarchy: many quoted passages are running over paragraph boundaries, 
and quotation marks are not always set in open-close pairs in this file.

Time to check the XML structure! Wrap the document in a root element, 
save the file with `.xml` file extension, close it, and reopen it in oXygen.

Continue autotagging! How many dates can we find at the start of a paragraph? 

Find dates by looking for one or more numbers, a space, and a single capital letter followed by one or more alphanumeric characters:
Find: `\d+\w*\s[A-Z]\w+` .  (found 175) This finds patterns like 3 May as well as 1st May.
Replace with: `<date>\0</date>`

Can we tag times? Note the variety of ways that clock time is recorded:
7:30
8:35 P. M
5 a. m.

Try finding all the times with a colon first:
Find: `\d+:\d\d\s*(\w\.\s*\w\.)?`   (find 16)
Replace with: `<time>\0</time>`


Find a few more without a colon: 
Find: `\s\d+\s*\w\.\s*\w\.`
Replace with: `<time>\0</time>`
