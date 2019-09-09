<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		// GetIP
		if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
			$client_ip = $_SERVER['HTTP_CLIENT_IP'];
		} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			$client_ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		} else {
			$client_ip = $_SERVER['REMOTE_ADDR'];
		}

		$ipwhois = file_get_contents('http://free.ipwhois.io/json/' . $client_ip . '?lang=ru');
		$result = json_decode($ipwhois, true);
		
		// session_start();
		if ($result['city'] && empty($_SESSION["city"])) {
			$_SESSION["city"] = $result['city'];
		}

		if (isset($this->request->get['city'])) {
			$_SESSION["city"] = $this->request->get['city'];
		}

		if ($_SESSION["city"]) {
			$data['current_city'] = $_SESSION["city"];
		} else {
			$data['current_city'] = 'Выберите город';
		}

		// Custom Fields
		$data['cities'] = array();
		
		$this->load->model('account/custom_field');

		$custom_fields = $this->model_account_custom_field->getCustomFields($this->config->get('config_customer_group_id'));

		foreach ($custom_fields as $custom_field) {
			if ($custom_field['custom_field_id'] == '4') {
				$data['cities'] = $custom_field["custom_field_value"];
			}
		}
		// GetIP

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', true);
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['tracking'] = $this->url->link('information/tracking');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', true);
		$data['affiliate'] = $this->url->link('affiliate/login', '', true);
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['newsletter'] = $this->url->link('account/newsletter', '', true);

		$data['powered'] = $this->config->get('config_name');
		$data['year'] = date('Y', time());

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = ($this->request->server['HTTPS'] ? 'https://' : 'http://') . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		$data['scripts'] = $this->document->getScripts('footer');

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}
		$data['telephone'] = $this->config->get('config_telephone');
		$data['config_comment'] = $this->config->get('config_comment');
		$data['config_open'] = $this->config->get('config_open');
		
		return $this->load->view('common/footer', $data);
	}
}
