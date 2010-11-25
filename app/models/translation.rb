class Translation < ActiveRecord::Base

  # These method shall mimik I18n::Backend::ActiveRecord::Translation
  # to demonstrate that 0001-873-simple-hack-fix-for-chained-scopes.patch
  # does not completely fix the chained scopes bug
  #
  # http://groups.google.com/group/hobousers/browse_thread/thread/b18aa93951df0a0c
  # https://hobo.lighthouseapp.com/projects/8324-hobo/tickets/873-chained-scopes-break-with-hobo-rails-239
  #
  class << self
    def locale(locale)
      scoped(:conditions => { :locale => locale.to_s })
    end

    def key(key)
      scoped(:conditions => { :key => key })
    end
  end

end
