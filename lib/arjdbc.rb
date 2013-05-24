warn "callling #{__LINE__} in #{__FILE__}"
if defined?(JRUBY_VERSION)
warn "callling #{__LINE__} in #{__FILE__}"
  begin
warn "callling #{__LINE__} in #{__FILE__}"
    require 'active_record/version'
warn "callling #{__LINE__} in #{__FILE__}"
    if ActiveRecord::VERSION::MAJOR < 2
      if defined?(RAILS_CONNECTION_ADAPTERS)
        RAILS_CONNECTION_ADAPTERS << %q(jdbc)
      else
        RAILS_CONNECTION_ADAPTERS = %w(jdbc)
      end
    else
      require 'active_record'
    end
warn "callling #{__LINE__} in #{__FILE__}"
  rescue LoadError => e
    warn "activerecord-jdbc-adapter requires ActiveRecord at runtime"
    raise e
  end
warn "callling #{__LINE__} in #{__FILE__}"
  require 'arjdbc/jdbc'
  begin
    require 'arjdbc/railtie'
  rescue LoadError => e
    warn "activerecord-jdbc-adapter failed to load railtie: #{e.inspect}"
  end if defined?(Rails) && ActiveRecord::VERSION::MAJOR >= 3
else
  warn "activerecord-jdbc-adapter is for use with JRuby only"
end

require 'arjdbc/version'
