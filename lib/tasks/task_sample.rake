require "date"

namespace :task_sample do
    desc "サンプルタスク"

    task :hello_world do
        day = Date.today
        puts "Hello World on #{day}"
    end
end
