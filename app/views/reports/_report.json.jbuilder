json.extract! report, :id, :reportable_id, :reportable_type, :user_id, :rtype, :created_at, :updated_at
json.url report_url(report, format: :json)
