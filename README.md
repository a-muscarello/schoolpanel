# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

(To disable warnings, see:http://github.com/e2/ruby_dep/wiki/Disabling-warnings )
                   Prefix Verb   URI Pattern         Controller#Action
                     root GET    /         home#index
              instructors GET    /instructors(.:format)         instructors#index
                          POST   /instructors(.:format)         instructors#create
           new_instructor GET    /instructors/new(.:format)         instructors#new
          edit_instructor GET    /instructors/:id/edit(.:format)         instructors#edit
               instructor GET    /instructors/:id(.:format)         instructors#show
                          PATCH  /instructors/:id(.:format)         instructors#update
                          PUT    /instructors/:id(.:format)         instructors#update
                          DELETE /instructors/:id(.:format)         instructors#destroy
                 students GET    /students(.:format)         students#index
                          POST   /students(.:format)         students#create
              new_student GET    /students/new(.:format)         students#new
             edit_student GET    /students/:id/edit(.:format)         students#edit
                  student GET    /students/:id(.:format)         students#show
                          PATCH  /students/:id(.:format)         students#update
                          PUT    /students/:id(.:format)         students#update
                          DELETE /students/:id(.:format)         students#destroy
                  courses GET    /courses(.:format)         courses#index
                          POST   /courses(.:format)         courses#create
               new_course GET    /courses/new(.:format)         courses#new
              edit_course GET    /courses/:id/edit(.:format)         courses#edit
                   course GET    /courses/:id(.:format)         courses#show
                          PATCH  /courses/:id(.:format)         courses#update
                          PUT    /courses/:id(.:format)         courses#update
                          DELETE /courses/:id(.:format)         courses#destroy
                  cohorts GET    /cohorts(.:format)         cohorts#index
                          POST   /cohorts(.:format)         cohorts#create
               new_cohort GET    /cohorts/new(.:format)         cohorts#new
              edit_cohort GET    /cohorts/:id/edit(.:format)         cohorts#edit
                   cohort GET    /cohorts/:id(.:format)         cohorts#show
                          PATCH  /cohorts/:id(.:format)         cohorts#update
                          PUT    /cohorts/:id(.:format)         cohorts#update
                          DELETE /cohorts/:id(.:format)         cohorts#destroy
                   admins GET    /admins(.:format)         admins#index
                          POST   /admins(.:format)         admins#create
                new_admin GET    /admins/new(.:format)         admins#new
               edit_admin GET    /admins/:id/edit(.:format)         admins#edit
                    admin GET    /admins/:id(.:format)         admins#show
                          PATCH  /admins/:id(.:format)         admins#update
                          PUT    /admins/:id(.:format)         admins#update
                          DELETE /admins/:id(.:format)         admins#destroy
       rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)         active_storage/blobs#show
rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)         active_storage/disk#show
update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)         active_storage/disk#update
     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)         active_storage/direct_uploads#create