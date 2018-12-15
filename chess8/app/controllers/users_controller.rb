class UsersController < ApplicationController

  def home
    result = params['result']
    if (result != nil)
      @result = result
    end
  end

  def form
    symbols = 'qwertyuiopasdfghjklzxcvbnm1234567890'
    symbolsRus = 'qwertyuiopasdfghjklzxcvbnmйцукенгшщзхъфывапролджэячсмитьбю1234567890'
    username = params['username']
    name = params['name']
    last_name = params['last_name']
    username = username.downcase

    #username
    if (username.length < 3)
      redirect_to '/register?result=Длина лоина меньше 3 символов'
      return
    end
    if (username.length > 20)
      redirect_to '/register?result=Длина лоина больше 20 символов'
      return
    end
    if (!contains username.downcase, symbols)
      redirect_to '/register?result=Логин содержит запрещённые символы'
      return
    end
    if (User.find_by_username(username) != nil)
      redirect_to '/register?result=Такой логин уже существует'
      return
    end

    #name
    if (name.length < 3)
      redirect_to '/register?result=Длина имени меньше 3'
      return
    end
    if (name.length > 20)
      redirect_to '/register?result=Длина имени больше 20 символов'
      return
    end
    if (!contains name.downcase, symbolsRus)
      redirect_to '/register?result=Имя содержит запрещённые символы'
      return
    end

    #last_name
    if (last_name.length < 3)
      redirect_to '/register?result=Длина фамилии меньше 3 символов'
      return
    end
    if (last_name.length > 20)
      redirect_to '/register?result=Длина фамилии больше 20 символов'
      return
    end
    if (!contains last_name.downcase, symbolsRus)
      redirect_to '/register?result=Фамилия содержит запрещённые символы'
      return
    end

    name = name.capitalize
    last_name = last_name.capitalize

    user = User.new
    user.username = username
    user.name = name
    user.last_name = last_name
    user.is_champion = false
    user.save

    redirect_to '/register?result=Успешно'
  end

  def user
    id = params['id']
    user = User.find(id)
    if (user == nil)
      redirect_to root_path
    end
    @user = user
    @all_name = user.name + ' ' + user.last_name
    @last_id = id.to_i - 1
    if (@last_id == 0)
      @last_id = User.all.last.id
    end
    @next_id = id.to_i + 1
    if (@next_id > User.all.last.id)
      @next_id = 1
    end
  end

  def contains(word, symbols)
    word.each_char do |x|
      if (!(symbols.include? x))
        return false
      end
    end
    return true
  end

  def generate

  end
end
