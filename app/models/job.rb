class Job < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_by_title, :against => :title
end
