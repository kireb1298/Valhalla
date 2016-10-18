<?php

class PVP_Statistics extends MX_Controller
{
	function __construct()
	{
		//Call the constructor of MX_Controller
		parent::__construct();
		
		$this->load->model("data_model");
		$this->load->config('pvp_statistics/pvps_config');
	}
	
	public function index($RealmId = false)
	{
		$this->template->setTitle("Estadisticas PvP");
		
		$user_id = $this->user->getId();
		
		$data = array(
			'user_id' 			=> $user_id,
			'realms_count'		=> count($this->realms),
			'selected_realm'	=> $RealmId,
			'url' 				=> $this->template->page_url,
		);
		
		// Get the realms
		if (count($this->realms) > 0)
		{
			foreach ($this->realms->getRealms() as $realm)
			{
				//Set the first realm as realmid
				if (!$RealmId)
				{
					$RealmId = $realm->getId();
					$data['selected_realm']	= $RealmId;
				}
					
				$data['realms'][$realm->getId()] = array('name' => $realm->getName());
			}
		}
		
		//Set the realmid for the data model
		$this->data_model->setRealm($RealmId);
		
		//Get the top teams
		$data['Teams2'] = $this->data_model->getTeams($this->config->item("arena_teams_limit"), 2);
		$data['Teams3'] = $this->data_model->getTeams($this->config->item("arena_teams_limit"), 3);
		$data['Teams5'] = $this->data_model->getTeams($this->config->item("arena_teams_limit"), 5);
		
		//Get Top Honorable Kills Players
		$data['TopHK'] = $this->data_model->getTopHKPlayers($this->config->item("hk_players_limit"));
		
		$output = $this->template->loadPage("pvp_statistics.tpl", $data);

		$this->template->box("Estadisticas PvP", $output, true, "modules/pvp_statistics/css/style.css", "modules/pvp_statistics/js/scripts.js");
	}
}
