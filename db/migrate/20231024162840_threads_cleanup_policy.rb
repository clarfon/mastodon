# frozen_string_literal: true

class ThreadsCleanupPolicy < ActiveRecord::Migration[7.1]
  def change
    change_table 'account_statuses_cleanup_policies' do |t|
      t.boolean 'keep_self_parents', default: true, null: false
      t.boolean 'keep_self_children', default: true, null: false
    end
  end
end
