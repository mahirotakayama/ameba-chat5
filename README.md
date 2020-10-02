# ChatーSpaceDB設計

## users table

|Column|Type|Options|
|------|----|-------|
|name|string|index: true, null:false,unique: true|
|email|string|null: false|

### Association
- has_many :groups,through: members
- has_many :messages
- has_many :members


## members table
|Column|Type|Options|
|------|----|-------|
|user|refertences|null: false, foreign_key: true|
|group|refertences|null: false, foreign_key: true|

## Assosiation
- belongs_to :groups
- belongs_to :users



## messages table
|Column|Type|Options|
|------|----|-------|
|user|refertences|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
|content|string|
|imgae|string|

## Assosiation
- belongs_to :user
- belongs_to :group


## groups table
Column|Type|Options|
|------|----|-------|
|user|refertences|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
|content|string|
|image|string|

## Assosiation
- belongs_to :group
- belongs_to :user

