class ContatoPage 
    set_url '/index.php?controller=contact'
    element :select_subject_heading, "select[name='id_contact']"
    element :input_email, "input[id='email']"
    element :input_order_reference, "input[name='id_order']"
    element :upload_file, "input[id=fileUpload]"
    element :textarea_message, "textarea[name='message']"
    element :button_send, ""


