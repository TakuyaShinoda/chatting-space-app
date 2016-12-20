DB design
====

#users

##column

###### ex. column|type|option|

* id|integer|null:false|

* name|string|null:false|

* email|text|null:false, add_index|

* password|text|null:false|

##association

* has_many :messages

* has_many :groups, through: :group_users

#groups

##column

* id|integer|null:false|

* name|string|null:false|

##association

* has_many :messages

* has_many :users, through: :group_users

#messages

##column

* id|integer|null:false|

* body|text||

* image|text||

* user|references|foreign_key: true|

* group|references|foreign_key: true|

##association

* belongs_to :user

* belongs_to :group

#group_users

##column

* id|integer|null:false|

* group|references|foreign_key: true|

* user_id|references|foreign_key: true|

##association

* belongs_to :user

* belongs_to :group