class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :age, presence: true, length: {is: 2}, numericality: {only_integer: true, greater_than: 17}
   
    # There is also the allow_blank: true 






# save(validate: false)

## These will Skip validations ##

# decrement!
# decrement_counter
# increment!
# increment_counter
# toggle!
# touch
# update_all
# update_attribute
# update_column
# update_columns
# update_counters

end

