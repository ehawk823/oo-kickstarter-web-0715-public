class Project

  def initialize (title)
    @title = title
    @backers = []
  end

  def title
    @title
  end

  def add_backer (backer)
    @backers << backer
    unless backer.backed_projects.include?(self)
      backer.back_project(self)
    end
  end

  def backers
    @backers
  end

end
