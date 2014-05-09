// for more details see: http://emberjs.com/guides/models/defining-models/

App.Group = DS.Model.extend({
  name: DS.attr('string'),
  private: DS.attr('boolean'),
  founder: DS.belongsTo('user'),
  memberships: DS.hasMany('membership')
});
