SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :dashboard,      'Dashboard',      root_path,           { icon: 'fa-dashboard' }
    primary.item :visualizations, 'Visualizations', visualizations_path, { icon: 'fa-pie-chart'}
    primary.item :users,          'Users',          users_path,          { icon: 'fa-users'}
  end
end
