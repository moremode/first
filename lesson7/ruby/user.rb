require 'httparty'

class User

  def initializate

  end

  def register_request(username, user_password, email)
    url = "http://rubyboosters.herokuapp.com/halloffame"
    password = "tscve5MPGYbo"
    if (username.length > 3 && user_password.length > 6 && !have_usr(username))  #тут должны быть ещё проверки на корректность символов, но из-за нехватки времени моей лени я их опущу(да, этот текст мне писать было не лень))
      request = HTTParty.post(url, {body:{type: "register", password: password, name: username, user_password: user_password, email:email}})
      ans = JSON.parse{request.body};
      return ans;
    end
    return nil;
  end

  def login_request(username, user_password)
    url = "http://rubyboosters.herokuapp.com/halloffame"
    password = "tscve5MPGYbo"
    request = HTTParty.post(url, {body:{type: "login", password: password, name: username, user_password: user_password}})
    ans = JSON.parse{request.body};
    if (ans["answer"])
      #authmethod
    end
    return ans["answer"];
  end

  def have_usr(username)
    url = "http://rubyboosters.herokuapp.com/halloffame"
    password = "tscve5MPGYbo"
    request = HTTParty.post(url, {body:{type: "check", password: password, name: username}})
    ans = JSON.parse{request.body};
    return ans["answer"]
  end
end