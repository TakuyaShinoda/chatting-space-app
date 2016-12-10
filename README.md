# DB設計

**table**

###users

|column|type|

|id|integer|

|name|string|

|email|text|

|password|text|

###groups

|id|integer|

|name|string|

###messages

|id|integer|

|body|text|

|image|

|user_id|references|

|group_id|references|