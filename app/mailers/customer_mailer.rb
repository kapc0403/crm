class CustomerMailer < ApplicationMailer
    default from: "from@example.com"
    layout 'mailer'
    def factura_email(a)
        @empresacliente = Empresacliente.find(6)
        mail(to: "kedwin85@hotmail.com", subject: 'Propuesta de venta - Evolusie Ltda')
    end
end
