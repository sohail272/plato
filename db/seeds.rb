# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

individual_plan = Plan.create!(name: "Solo", plan_type: "individual" , status: "active",monthly_cost: 2.0, licenses: 1, monthly_annual_cost: 0, extra_user_cost: 0)
startup_plan = Plan.create!(name: "Startup ", plan_type: "company", status: "active" ,monthly_cost: 20.0, licenses: 5, monthly_annual_cost: 18.0, extra_user_cost: 7.0)
enterprise_plan = Plan.create!(name: "Enterprise", plan_type: "company", status: "active" ,monthly_cost: 60.0, licenses: 20, monthly_annual_cost: 55.0, extra_user_cost: 6.0)

organization = Organization.create!(name: "Kaodim", email: "kaodim@kmail.com", password: "test123", password_confirmation: "test123")
organization.create_subscription(plan_id: startup_plan.id)
user = User.create!(email: "puser@kaodim.com", password: "test123", password_confirmation: "test123")

project = user.projects.create!(name: "Individual Plato")
board = project.boards.create!(name: "Marketing")
card_1 = board.cards.create!(title: "On Field",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
task_1 = card_1.tasks.create!(description: "Some task description", completed: true)
task_2 = card_1.tasks.create!(description: "Some task description", completed: true)
card_2 = board.cards.create!(title: "Off Field",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
card_2.tasks.create!(description: "Some task description", completed: true)
card_2.tasks.create!(description: "Some task description", completed: false)
card_3 = board.cards.create!(title: "Marketting tags",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")


user1 = User.create!(email: "ouser@kaodim.com", password: "test123", password_confirmation: "test123")
user1_project = user1.projects.create!(name: "Individual Plato")
user1_board = user1_project.boards.create!(name: "BackEnd Team")
user1_card_1 = user1_board.cards.create!(title: "Pricing",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
user1_task_1 = user1_card_1.tasks.create!(description: "Some task description", completed: true)
user1_task_2 = user1_card_1.tasks.create!(description: "Some task description", completed: true)

user1_card_2 = user1_board.cards.create!(title: "Payment",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
user1_card_2.tasks.create!(description: "Some task description", completed: true)
user1_card_2.tasks.create!(description: "Some task description", completed: false)
user1_card_3 = user1_board.cards.create!(title: "Payment",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")



organization.organization_users.create(user_id: user1.id)
plato_project =  organization.projects.create!(name: "Organization Plato")
plato_board = plato_project.boards.create!(name: "Frontend")
plato_card_1 = plato_board.cards.create!(title: "UI",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
plato_task_1 = plato_card_1.tasks.create!(description: "Some task description", completed: true)
plato_task_2 = plato_card_1.tasks.create!(description: "Some task description", completed: true)

plato_card_2 = plato_board.cards.create!(title: "UX",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
plato_card_2.tasks.create!(description: "Some task description", completed: true)
plato_card_2.tasks.create!(description: "Some task description", completed: false)
plato_card_3 = board.cards.create!(title: "UX",
                            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
plato_board_member = BoardMember.create!(project_id:  plato_project.id, board_id: plato_board.id, member_id: user1.id)