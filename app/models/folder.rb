
class Folder < ActiveRecord::Base

  attr_accessible :name, :user_id, :parent_id

  has_many :folder_contents

  def children
    Folder.where(parent_id: self.id).collect do |f|
      { id: f.id,
        name: f.name,
        children: f.children }
    end
  end

  def tree_aux
    {
      id: self.id,
      name: self.name,
      children: self.children.collect { |c|
        c.tree_aux
      }
    }
  end

  def self.tree user

    folders = Folder.where(user_id: user.id, parent_id: nil)

    if folders.length == 0 
      top = Folder.new({name: user.name, user_id: user.id, parent_id: nil})
      top.save
    else
      top = folders[0]
    end

    top.tree_aux

  end

  def children
    Folder.where(parent_id: self.id)
  end

  def self.trash f
    f.children.each do |c|
      Folder.trash c
    end
    f.destroy
  end

end

