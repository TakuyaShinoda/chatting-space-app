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

##association

* has_many :messages

* belongs_to :groups

###groups

##column

* id|integer|

* name|string|

##association

* has_many :messages

* has_many :users

###messages

##column

* id|integer|

* body|text|

* image|text|

* user_id|references|

* group_id|references|

##association

* belongs_to :user

* belongs_to :group