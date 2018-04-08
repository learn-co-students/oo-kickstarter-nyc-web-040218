class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_instance)
    backer_instance.backed_projects << self 
    @backers << backer_instance
  end
end
