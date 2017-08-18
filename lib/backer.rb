require 'pry'
class Backer

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def backed_projects
    # projects = []
    # ProjectBacker.all.each do |pb|
    #   if pb.backer == self
    #     projects << pb.project
    #   end
    # end
    # projects
    pbs = ProjectBacker.all.select {|pb| pb.backer == self}
    pbs.collect {|pb| pb.project }
  end

  def back_project(proj_obj)
    ProjectBacker.new(proj_obj, self)
  end


end
