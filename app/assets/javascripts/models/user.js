// for more details see: http://emberjs.com/guides/models/defining-models/

App.User = DS.Model.extend({
  name: DS.attr('string'),
  email: DS.attr('string'),
  groups: DS.hasMany('group'),
  memberships: DS.hasMany('membership'),

  workingGroups: function() {
    var memberships = this.get('memberships');
    var groups = memberships.getEach('group');
    return groups ;
  }.property('memberships'),

  groupCount: function() {
    var count = this.get('groups.length');
    
    if (count === 0) {
      count = "User has not started any groups"
    }

    return count ;
  }.property('groups')
});
