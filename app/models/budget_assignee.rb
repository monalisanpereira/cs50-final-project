class BudgetAssignee < ApplicationRecord
    belongs_to :budget
    belongs_to :user
end
