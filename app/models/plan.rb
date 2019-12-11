class Plan < ApplicationRecord
	enum plan_type: {individual: "individual", company: "company"}
  enum status: {active: "active", inactive: "inactive"}
end
