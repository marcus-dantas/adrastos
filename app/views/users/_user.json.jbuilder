json.extract! user, :id, :nickname

json.sgid user.attachable_sgid
json.content render(partial: "users/user", locals: { user: user}, formats: [:html])
