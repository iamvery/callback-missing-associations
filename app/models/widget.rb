class Widget < ActiveRecord::Base
  belongs_to :tag, inverse_of: :widget
end
