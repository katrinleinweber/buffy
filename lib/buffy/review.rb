require_relative 'github'
require 'fileutils'
require 'find'

module Buffy
  class Review
    include GitHub

    attr_accessor :review_issue_id
    attr_accessor :review_repository

    def initialize(review_issue_id, repository = nil)
      @review_issue_id = review_issue_id
      @review_repository = repository.nil? ? ENV['JOSS_REVIEW_REPO'] : repository
    end

    def issue_body
      review = client.issue(review_repository, review_issue_id)
      return review.body
    end
  end
end
