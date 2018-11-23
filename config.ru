require 'rack'
class MiPrimeraWebApp
  def call(env)
    @url = env['REQUEST_PATH']
    if @url == '/index'
        [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en el Index! </h1>']]
      if @url == '/otro'
        [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en otro landing! </h1>']]
      end
      if @url == '/hola'
        [404, { 'Content-Type' => 'text/html' }, [File.read('404.html')]]
      end
    end
  end
end
run MiPrimeraWebApp.new