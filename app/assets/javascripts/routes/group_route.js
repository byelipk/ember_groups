// For more information see: http://emberjs.com/guides/routing/

App.GroupRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('group', params.group_id)
  }
});
