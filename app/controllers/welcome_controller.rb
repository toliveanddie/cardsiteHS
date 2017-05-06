class WelcomeController < ApplicationController
  def index
    @cards = Card.all
  end
  
  def druid
    @druid = Card.druid.paginate(:page => params[:page])
  end
  
  def hunter
    @hunter = Card.hunter.paginate(:page => params[:page])
  end
  
  def mage
    @mage = Card.mage.paginate(:page => params[:page])
  end
  
  def paladin
    @paladin = Card.paladin.paginate(:page => params[:page])
  end
  
  def priest
    @priest = Card.priest.paginate(:page => params[:page])
  end
  
  def rogue
    @rogue = Card.rogue.paginate(:page => params[:page])
  end
  
  def shaman
    @shaman = Card.shaman.paginate(:page => params[:page])
  end
  
  def warlock
    @warlock = Card.warlock.paginate(:page => params[:page])
  end
  
  def warrior
    @warrior = Card.warrior.paginate(:page => params[:page])
  end
  
  def neutral
    @neutral = Card.neutral.paginate(:page => params[:page])
  end
  
  
  
end
