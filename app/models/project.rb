class Project < ApplicationRecord
    # Makes sure that the description is present for the project, so that the project can be made. 
    # If the presenece of the title and description isnt there, then it will fail and the project cant be created
    #validates_presence_of :title, :description
end
