// For more information see: http://emberjs.com/guides/routing/

App.Router.map(function() {
  // this.resource('posts');
  this.resource('groups', function() {
    this.route('show', { path: '/:group_id' })
  });
  this.resource('users', function() {
    this.route('show', { path: '/:user_id' })
  });
});
