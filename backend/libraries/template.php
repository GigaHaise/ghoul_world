<?php
/* 
	Ghoul World - created by Anthony Moore aka Haise
	Copyright 2015 All Rights Reserved.
	Template Library
*/

require_once('twig/lib/Twig/Autoloader.php');
Twig_Autoloader::register();

class Template {
	private $loader;
	private $twig;
	private $content = '';
	public $elements = array();
	
	public function activate () 
	{
		$this->loader = new Twig_Loader_Filesystem('frontend/HTML/templates');
		$this->twig = new Twig_Environment($this->loader);
		
	}

	
	public function content ($template, $params)
	{
		$template = $this->twig->loadTemplate($template . '.phtml');
		$this->content = $template->render($params);
	
	}
	
	public function leftnav ()
	{
		/* This should probably load the leftnav function from the interface or UI libraries */
	}
	
	public function compile ($layout='', $mode='')
	{
		//Layout changes the master layout
		/* Mode changes whether to render just the content or render the content within 
		   the master layout. Useful for AJAX.
		*/
		if($mode == "single")
		{
			echo $this->content;
		}
		else
		{
				if($layout != '')
				{
					$template = $this->twig->loadTemplate($layout . '.phtml');
				}
				else 
				{
					$template = $this->twig->loadTemplate('home.phtml');
				}
			$elements["content"] = $this->content;
			$page = $template->render($elements);
			$page = html_entity_decode($page);
			echo $page;
		}
	
	}
	
	
	
}

?>