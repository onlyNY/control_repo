node 'puppetagent-cent.lab' {
  notify { 'hello CENT':
  }
}

node 'puppetagent-mac.local' {
  notify { 'hello MAC':
  include role::edit_defualt
  }
}
