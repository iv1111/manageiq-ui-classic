class ApplicationHelper::Toolbar::HostCloudServiceCenter < ApplicationHelper::Toolbar::Basic
  button_group('host_cloud_services_vmdb', [select(
    :host_cloud_services_choice,
    nil,
    t = N_('Cloud Service Configuration'),
    t,
    :items => [
      button(
        :host_cloud_service_scheduling_toggle,
        'pficon pficon-edit fa-lg',
        N_('Toggle Scheduling'),
        N_('Toggle Scheduling'),
        :confirm      => N_("Toggle Scheduling for this Cloud Service?"),
        :url_parms    => "main_div",
        :send_checked => true,
        :enabled      => true),
    ]),
  ])
end
