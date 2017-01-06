class User < ActiveRecord::Base
  # write associations here
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if happiness && nausea
      if happiness > nausea
        'happy'
      elsif nausea > happiness
        'sad'
      else
        '¯\_(ツ)_/¯'
      end
    end
  end

end
