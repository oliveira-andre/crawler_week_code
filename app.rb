# frozen_string_literal: true

require 'json'
Dir['./app/*/*/*.rb'].sort.each { |file| require file }
Dir['./app/*/*.rb'].sort.each { |file| require file }

class App < Sinatra::Base
  get '/' do
    content_type :json, charset: 'utf-8'
    { data: load_jobs }.to_json
  end

  def load_jobs
    SitesUtil.params.each do |params|
      job_details = SearchRemoteJobsService.new(params).execute
      @jobs.nil? ? @jobs = [job_details] : @jobs << job_details
    end
    @jobs.flatten!
  end
end
