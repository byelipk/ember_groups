Ember Groups
============

#### Rails backend
#### Ember JS frontend

As I continue to learn EmberJS, I like to make small applications testing one
very specific feature or concept. The purpose of this app is to learn how to
allow users to create or delete groups, and add and remove other users from
the group.  

#### Data Model

This is the essence of the backend data model. `Membership` serves as a "join table".
A `Group` instance may query for its unique members like so: `group.members`. While
a `User` instance can do this: `user.working_groups`.

  class Group < ActiveRecord::Base
    has_many :memberships
    has_many :members, through: :memberships, source: :user
  end

  class User < ActiveRecord::Base
    has_many :memberships
    has_many :working_groups, through: :memberships, source: :group
  end

  class Membership < ActiveRecord::Base
    belongs_to :user
    belongs_to :group
  end

Both the Group model and the User model are serialized using `ActiveModel::Serialzer`.
I've only left in the methods which serialize the membership associations, as we
will use this data to create arrays of unique users and unique groups on the
front end.

  class GroupSerializer < ActiveModel::Serializer
    has_many :memberships, embed: :ids, include: true
  end

  class UserSerializer < ActiveModel::Serializer
    has_many :memberships, embed: :ids, include: true
  end

###### MIT License

Copyright © 2014 Patrick White

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the “Software”), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
