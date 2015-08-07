require 'pry'


class Backer

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def name
    @name
  end

  def back_project (project)
    @backed_projects << project
    unless project.backers.include?(self)
      project.add_backer(self)
    end
  end

  def backed_projects
    @backed_projects
  end

end
