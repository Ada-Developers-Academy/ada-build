# Effective Internet Searching
_Ada Build - Learning at Ada - Lesson 1_

## Learning Goals

By the end of this lesson you should be able to

- Know where to go for answers
- Evaluate a source as likely to have the answer you are looking for (or not)
- Narrow your search results to yield better results
- Find answers to a question on your own

## Overview

Software developers do not have all of the answers. Instead, a good portion of their time is spent searching the internet and references for the answers. Common tools that developers use include [StackOverflow](http://stackoverflow.com/) and [Google](http://google.com). What's most important is that you can find the answer, not that you know the answer right away.

## Activities

* Read [How to become a programmer, or the art of Googling well](https://okepi.wordpress.com/2014/08/21/how-to-become-a-programmer-or-the-art-of-googling-well/)
* Watch [How Search Works](https://www.youtube.com/watch?v=BNHR6IQJGZs)
* Read [20 Tips to Google Search Efficiently](http://www.lifehack.org/articles/technology/20-tips-use-google-search-efficiently.html)

## Techniques

* Type using keywords instead of full sentences
* Add 'example' to your query if you want to see an example
* Add the specific language you are coding in to your query, e.g. 'python'
* Use double quotations when you need an exact match in your search
* Make sure to check the date of what you are referencing, languages often change over time

## Applications - Searching For Errors

Often when you are confronted with an error message, for example:

```python
>>> 
>>> names = ("Ada", "Grace", "Katherine")
>>> names[3] = "Paula"
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: 'tuple' object does not support item assignment
>>> 
```

You can select the error message:  `TypeError: 'tuple' object does not support item assignment` and enter it into Google. 

This will bring you to a number of questions online where people have encountered the same question earlier.  Then you can evaluate the source of each article.  StackOverflow is a likely source of similar questions, Quora is a bit less likely, and InterviewCake usually has to do with interview topics rather than the exact error message and how to stop it.

### Narrowing It Down Further

You can further narrow down results to a problem like the above by putting the error message in quotes and adding pertinent keywords to the search, such as "Python".  So the search term `"TypeError: 'tuple' object does not support item assignment" Python` is likely to narrow things down quite a bit.
