<?php
 
class ControllerProductProjects extends Controller { 
	public function index() {  
		 
		$this->load->language('product/product');
		$this->load->model('catalog/project');
		$this->load->model('tool/image');
		
		$data = array();
		$data['text_projects_with_product'] = $this->language->get('text_projects_with_product'); 
		
		if (isset($this->request->get['product_id'])) {  
			$product_id = (int)$this->request->get['product_id'];
		} else {
			$product_id = 0;
		} 
		
		if($product_id == 0) {
			
		$projects = $this->model_catalog_project->getProjects();  

		foreach($projects as $project) {  
		
			$data['projects'][] = array(
				'project_id'=>$project['project_id'],
				'name'=>$project['name'],
				'image'=>$this->model_tool_image->resize($project['image'], 500, 500),
				'description'=>$project['description']
			);
			
		}
		
		return $this->load->view('common/projects', $data);
		
		}else{
			
		$projects = $this->model_catalog_project->getProjects();  

		foreach($projects as $project) {  
		
			$data['projects'][] = array(
				'project_id'=>$project['project_id'],
				'name'=>$project['name'],
				'image'=>$this->model_tool_image->resize($project['image'], 500, 500),
				'description'=>$project['description']
			);
			
		}
		
		return $this->load->view('product/projects', $data);
		
		}
	}	
	
	public function all() { 
		$this->load->language('product/category'); 
	
		$data = array();
		 
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header'); 
			 
			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
			
			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/projects/all', 'sort=p.sort_order&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/projects/all', 'sort=pd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/projects/all', 'sort=pd.name&order=DESC' . $url)
			); 
			
			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/projects/all', 'sort=p.price&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/projects/all', 'sort=p.price&order=DESC' . $url)
			);
			
		$this->load->model('catalog/project');
		
		foreach($this->model_catalog_project->getProjects() as $project) {
			
			$data['projects'][] = array(
				'project_id'=>$project['project_id'],
				'name'=>$project['name'],
				'image'=>$this->model_tool_image->resize($project['image'], 500, 500),
				'description'=>$project['description']
			);
		}
			 
		$this->response->setOutput($this->load->view('product/projects_all', $data));
		
	}	
}