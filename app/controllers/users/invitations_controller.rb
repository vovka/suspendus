class Users::InvitationsController < Devise::InvitationsController
  private

    # this is called when creating invitation
    # should return an instance of resource class
    def invite_resource
      establishment = Establishment.find(params[:establishment_id])
      super do |user|
        establishment.users << user
        user.establishment_role = true
      end
    end

    def after_invite_path_for(inviter, invitee = nil)
      establishment_path(invitee.establishment)
    end
end
