class ChangeTeamMemberStatusToBeBooleanInTrainers < ActiveRecord::Migration[6.0]
  def change
    change_column :trainers, :team_member_status, :boolean,
                  using: 'team_member_status::boolean'
  end
end
