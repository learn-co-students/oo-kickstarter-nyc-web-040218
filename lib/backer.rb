# class Backer
#
#   attr_accessor :name
#
#   @backed_projects = []
#
#   def initialize(name)
#     @name = name
#   end
#
#   def back_project(Project)
#     backed_projects<<Project
#     add_backer(Project)
#   end
#


# end

class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    backed_projects << project
    project.backers << self
  end

end
