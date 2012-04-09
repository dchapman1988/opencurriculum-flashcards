# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :home, t('nav.home'), root_path
    primary.item :decks, t('nav.decks'), decks_path

    primary.dom_class = 'nav primary-nav'
  end
end
