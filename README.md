# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | -----------              |
| name               | string | null: false              |
| email              | string | null: false,unique: true |
| encrypted_password | string | null: false              |
| profile            | text   | null: false              |
| occupation         | text   | null: false              |
| position           | text   | null: false              |

### Association

- has_many :prototype_users
- has_many :prototype, through: :prototype_users
- has_many :prototypes

## comments テーブル

| Column    | Type        | Options                       |
| --------- | ----------- | ----------------------------- |
| content   | text        | null: false                   |
| prototype | references  | null: false,foreign_key: true |
| user      | references  | null: false,foreign_key: true |
### Association

- has_many :prototype_users
- has_many :users, through: :prototype_users
- has_many :prototypes

## prototypes テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| catch_copy   | text       | null: false                    |
| concept      | text       | null: false                    |
| title        | string     | null: false                    |
### Association

- belongs_to :catch_copy
- belongs_to :user
- belongs_to :concept
- belongs_to :title



