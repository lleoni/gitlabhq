require Rails.root.join('lib/gitlab/database')
require Rails.root.join('lib/gitlab/database/migration_helpers')
require Rails.root.join('db/migrate/20151007120511_namespaces_projects_path_lower_indexes')
require Rails.root.join('db/migrate/20151008110232_add_users_lower_username_email_indexes')
require Rails.root.join('db/migrate/20161212142807_add_lower_path_index_to_routes')
require Rails.root.join('db/migrate/20170317203554_index_routes_path_for_like')

desc 'GitLab | Sets up PostgreSQL'
task setup_postgresql: :environment do
  NamespacesProjectsPathLowerIndexes.new.up
  AddUsersLowerUsernameEmailIndexes.new.up
  AddLowerPathIndexToRoutes.new.up
  IndexRoutesPathForLike.new.up
end
