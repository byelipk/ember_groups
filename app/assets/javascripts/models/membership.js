// for more details see: http://emberjs.com/guides/models/defining-models/

App.Membership = DS.Model.extend({
  user: DS.belongsTo('user'),
  group: DS.belongsTo('group')
});
