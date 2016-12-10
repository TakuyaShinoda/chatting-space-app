DB design
====

**table**

###users

##column

* column|type|

* id|integer|

* name|string|

* email|text|

* password|text|

###groups

##column

* id|integer|

* name|string|

###messages

##column

* id|integer|

* body|text|

* image|text|

* user_id|references|

* group_id|references|