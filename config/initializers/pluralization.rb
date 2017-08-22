require "i18n/backend/pluralization"

I18n.backend.class.send(:include, I18n::Backend::Pluralization)
