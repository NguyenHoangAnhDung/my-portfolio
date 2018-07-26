class Skill < ApplicationRecord
  belongs_to :portfolios
  belongs_to :technologies
end
