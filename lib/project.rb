# class Project
#
# @backers = []
#
# attr_accessor :title
#
#   def initialize(title)
#     @title = title
#   end
#
#   def add_backer(Backer)
#     backers<<Backer
#     back_project(Backer)
#   end
#
# end


class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    backers << backer
    backer.backed_projects << self
  end

end
