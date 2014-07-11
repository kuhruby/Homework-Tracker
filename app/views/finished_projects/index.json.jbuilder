json.array!(@finished_projects) do |finished_project|
  json.extract! finished_project, :id, :user_id, :project_id, :submitted, :repo
  json.url finished_project_url(finished_project, format: :json)
end
