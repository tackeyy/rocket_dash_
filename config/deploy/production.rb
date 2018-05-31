# Default branch is :master
set :branch, ENV['BRANCH'] || 'master'

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/#{fetch(:application)}"

# Use git remote cache
set :deploy_via, :remote_cache

# Default value for :linked_files is []
set :linked_files, %w[.env config/database.yml config/secrets.yml]

# Default value for linked_dirs is []
set :linked_dirs, %w[log tmp/pids tmp/cache tmp/sockets vendor/bundle]

# Default value for keep_releases is 5
set :keep_releases, 5

# Skip migration if files in db/migrate were not modified
set :conditionally_migrate, true

before 'deploy:migrate', 'deploy:db_create'
after  'deploy:finished', 'deploy:sitemap'

namespace :deploy do
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  desc 'Create database'
  task :db_create do
    on roles(:db) do
      with rails_env: fetch(:rails_env) do
        within release_path do
          execute :bundle, :exec, :rake, 'db:create'
        end
      end
    end
  end
end
