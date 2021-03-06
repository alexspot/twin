class Job < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_by_title, against: :title
  pg_search_scope :search_by_company, against: :company
  pg_search_scope :search_by_exact_match,
                   against: [ :title, :company, :description, :location],
                   using: {
                       tsearch: { normalization: 2 }
                   }
  pg_search_scope :search_by_any_word,
                  against: [ :title, :company, :description, :location],
                  using: {
                      tsearch: {any_word: true}
                  }
end
