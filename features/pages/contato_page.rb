class ContatoPage 
    set_url '/index.php?controller=contact'
    element :select_subject_heading, "select[name='id_contact']"
    element :input_email, "input[id='email']"
    element :input_order_reference, "input[name='id_order']"
    element :upload_file, "input[id=fileUpload]"
    element :textarea_message, "textarea[name='message']"
    element :button_send, "button[id='submitMessage']"


    def preencher_formulario_contato(subject, email, order, file)
        select_subject_heading(subject)
        input_email.send_keys(email)
        input_order_reference.send_keys(order)
        upload_file.upload(file)
        button_send 'Send'
    end
end


#CONTATO PAGE. PADRÃO PAGE OBJECTS. 