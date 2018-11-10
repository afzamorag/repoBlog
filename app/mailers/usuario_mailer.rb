class UsuarioMailer < ApplicationMailer
  def bienvenidos_email
    @user = params[:usuario]
    @url = 'http://example.com/login'
    attachments['filename.jpg'] = File.read('/path/to/imagen.jpg')
    mail(to: @user.mail, subject: 'Bienvenido')
  end
end
