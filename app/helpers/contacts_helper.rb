module ContactsHelper
  def choose_new_or1_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_contacts_path
    elsif action_name == 'edit'
      contacts_path
    end
  end
end
