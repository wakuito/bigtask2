module XclonesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_xclones_path
    elsif action_name == 'edit'
      xclone_path
    end
  end
end
