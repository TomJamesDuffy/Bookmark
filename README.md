# Bookmark Manager Task (Makers Academy Weekly Task)

A web application designed to:  
Show a list of links  
Add new links  
Delete links  
Update links  
Comment on Links  
Tag links into categories  
Filter links by tag  
Users manage their links  

## Contents
/

## Getting Started

1) Clone or download and unzip repository.   
`git clone https://github.com/TomJamesDuffy/bookmark_manager.git`

2) Install dependencies listed in the Gemfile
`bundle install`  

## Instructions for use

## Testing

If you have followed the above instructions dependencies will be installed. To run the tests proceed to the home directory and run Rspec.

`rspec`

## Domain Modelling

As a user   
So I can quickly go to the web sites I regularly visit  
I want to see a list of links  

| object | message |
|--|--|
|user| see list|
|link|  |


As a user  
When I find an interesting web page
I want to add additional links  

| object | message |
|--|--|
|user| add link|
|link|  |

As a user  
So that I can remove useless links  
I want to delete any links that I no longer require  

| object | message |
|--|--|
|user| delete link|
|link|  |

As a user  
So I can amend mistakes
I want to update any links that require updating  

| object | message |
|--|--|
|user| update link|
|link|  |

As a user  
So I can add extra information  
I want to comment on any links of interested to me  

| object | message |
|--|--|
|user| comment link|
|link|  |

As the systems designer  
So users can classify their information    
I want to ensure that links can have tags

| object | message |
|--|--|
|link| has tag |

As the systems designer  
So users can sort their information
I want to ensure that links can be filtered by tags

| object | message |
|--|--|
|User| filter by tag|

As the systems designer  
So I am not endlessly pestered by users  
I want to ensure, that users can manage their own links

| object | message |
|--|--|
|User| manage links|
