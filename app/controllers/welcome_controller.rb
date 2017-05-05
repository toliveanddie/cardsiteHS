class WelcomeController < ApplicationController
  def index
    @cards = Card.all
  end
  
  def druid
    @cards = Card.all
    @druid = Card.druid.paginate(:page => params[:page])
  end
  
  def hunter
    @cards = Card.all
    @hunter = Card.hunter.paginate(:page => params[:page])
  end
  
  def mage
    @cards = Card.all
    @mage = Card.mage.paginate(:page => params[:page])
  end
  
  def paladin
    @cards = Card.all
    @paladin = Card.paladin.paginate(:page => params[:page])
  end
  
  def priest
    @cards = Card.all
    @priest = Card.priest.paginate(:page => params[:page])
  end
  
  def rogue
    @cards = Card.all
    @rogue = Card.rogue.paginate(:page => params[:page])
  end
  
  def shaman
    @cards = Card.all
    @shaman = Card.shaman.paginate(:page => params[:page])
  end
  
  def warlock
    @cards = Card.all
    @warlock = Card.warlock.paginate(:page => params[:page])
  end
  
  def warrior
    @cards = Card.all
    @warrior = Card.warrior.paginate(:page => params[:page])
  end
  
  
  
end
