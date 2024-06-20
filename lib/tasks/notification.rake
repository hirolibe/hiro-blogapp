namespace :notification do
  desc '利用者にメールを送付する'

  task :send_emails_from_admin, ['msg'] => :environment do |task, args|
    msg = args['msg']
    if msg.present?
      NotificationFromAdminJob.perform_later(msg)
      puts '送信できたよ！'
    else
      puts "送信できませんでした。メッセージを入力してください。\nex. rails notification:send_emails_from_admin[こんにちは]"
    end
  end
end