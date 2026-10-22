Redmine::Plugin.register :redmine_calendar_events_daily do
  name 'Calendar Events Daily plugin'
  author 'ablida'
  description 'show issues on days between end and start date in calendar'
  version '0.0.4'
  requires_redmine version_or_higher: '7.0'
  url 'https://github.com/ablida/redmine_calendar_events_daily'
  author_url 'https://github.com/ablida'

  RedmineApp::Application.config.after_initialize do
    Redmine::Helpers::Calendar.prepend CalendarEventsDaily::CalendarHelperPatch
  end
end
