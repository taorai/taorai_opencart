<?php
class ControllerModuleMagikplatina extends Controller {
    private $error = array(); // This is used to set the errors, if any.
 
    public function index() {
        // Loading the language file of magikplatina
        $this->load->language('module/magikplatina'); 
     
        // Set the title of the page to the heading title in the Language file i.e., Hello World
        $this->document->setTitle(strip_tags($this->language->get('heading_title')));
     
        // Load the Setting Model  (All of the OpenCart Module & General Settings are saved using this Model )
        $this->load->model('setting/setting');
     
        // Start If: Validates and check if data is coming by save (POST) method
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

            // Parse all the coming data to Setting Model to save it in database.

            $this->model_setting_setting->editSetting('magikplatina', $this->request->post);
     
            // To display the success text on data save
            $this->session->data['success'] = $this->language->get('text_success');
     
            // Redirect to the Module Listing
            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }
     
        // Assign the language data for parsing it to view
        $data['heading_title'] = $this->language->get('heading_title');
     
        $data['text_edit']    = $this->language->get('text_edit');
        $data['text_yes']    = $this->language->get('text_yes');
        $data['text_no']    = $this->language->get('text_no');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_content_top'] = $this->language->get('text_content_top');
        $data['text_content_bottom'] = $this->language->get('text_content_bottom');      
        $data['text_column_left'] = $this->language->get('text_column_left');
        $data['text_column_right'] = $this->language->get('text_column_right');
     
        $data['entry_code'] = $this->language->get('entry_code');
        $data['entry_layout'] = $this->language->get('entry_layout');
        $data['entry_position'] = $this->language->get('entry_position');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');
     
        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['button_add_module'] = $this->language->get('button_add_module');
        $data['button_remove'] = $this->language->get('button_remove');
         
        // This Block returns the warning if any
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }
     
        // This Block returns the error code if any
        if (isset($this->error['code'])) {
            $data['error_code'] = $this->error['code'];
        } else {
            $data['error_code'] = '';
        }     
     
        // Making of Breadcrumbs to be displayed on site
        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/magikplatina', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
          
        $data['action'] = $this->url->link('module/magikplatina', 'token=' . $this->session->data['token'], 'SSL'); // URL to be directed when the save button is pressed
     
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'); // URL to be redirected when cancel button is pressed
              
        // This block checks, if the hello world text field is set it parses it to view otherwise get the default 
        // hello world text field from the database and parse it
        
$config_data = array(
        
        'magikplatina_address',
        'magikplatina_phone',
        'magikplatina_email',
        'magikplatina_fb',
        'magikplatina_twitter',
        'magikplatina_gglplus',
        'magikplatina_rss',
        'magikplatina_pinterest',
        'magikplatina_linkedin',
        'magikplatina_youtube',
        'magikplatina_powerby',
        'magikplatina_home_option',
        'magikplatina_scroll_totop',
        'magikplatina_sale_label',
        'magikplatina_sale_labeltitle',
        'magikplatina_sale_labelcolor',
        'magikplatina_menubar_cb',
        'magikplatina_menubar_cbtitle',
        'magikplatina_menubar_cbcontent',
        'magikplatina_product_ct',
        'magikplatina_product_cttitle',
        'magikplatina_product_ctcontent',
        'magikplatina_product_ct2',
        'magikplatina_product_ct2title',
        'magikplatina_product_ct2content',
        'magikplatina_newsletter',
        'magikplatina_newslettercontent',
        'magikplatina_footer_cb',
        'magikplatina_footer_cbcontent',
        'magikplatina_body_bg',
        'magikplatina_body_bg_ed',
        'magikplatina_fontcolor',
        'magikplatina_fontcolor_ed',
        'magikplatina_linkcolor',
        'magikplatina_linkcolor_ed',
        'magikplatina_linkhovercolor',
        'magikplatina_linkhovercolor_ed',
        'magikplatina_headerbg',
        'magikplatina_headerbg_ed',
        'magikplatina_headerlinkcolor',
        'magikplatina_headerlinkcolor_ed',
        'magikplatina_headerlinkhovercolor',
        'magikplatina_headerlinkhovercolor_ed',
        'magikplatina_headerclcolor',
        'magikplatina_headerclcolor_ed',
        'magikplatina_mmbgcolor',
        'magikplatina_mmbgcolor_ed',
        'magikplatina_mmlinkscolor',
        'magikplatina_mmlinkscolor_ed',
        'magikplatina_mmlinkshovercolor',
        'magikplatina_mmlinkshovercolor_ed',
        'magikplatina_mmslinkscolor',
        'magikplatina_mmslinkscolor_ed',
        'magikplatina_mmslinkshovercolor',
        'magikplatina_mmslinkshovercolor_ed',
        'magikplatina_buttoncolor',
        'magikplatina_buttoncolor_ed',
        'magikplatina_buttonhovercolor',
        'magikplatina_buttonhovercolor_ed',
        'magikplatina_pricecolor',
        'magikplatina_pricecolor_ed',
        'magikplatina_oldpricecolor',
        'magikplatina_oldpricecolor_ed',
        'magikplatina_newpricecolor',
        'magikplatina_newpricecolor_ed',
        'magikplatina_footerbg',
        'magikplatina_footerbg_ed',
        'magikplatina_footerlinkcolor',
        'magikplatina_footerlinkcolor_ed',
        'magikplatina_footerlinkhovercolor',
        'magikplatina_footerlinkhovercolor_ed',
        'magikplatina_powerbycolor',
        'magikplatina_powerbycolor_ed',
        'magikplatina_fonttransform',
        'magikplatina_footer_fb',
        'magikplatina_footer_fbcontent',
        'magikplatina_animation_effect'
        );

foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $data[$conf] = $this->request->post[$conf];
                
            } else {
                $data[$conf] = $this->config->get($conf);

            }
        } 

 
   
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/magikplatina.tpl', $data));

    }

    /* Function that validates the data when Save Button is pressed */
    protected function validate() {
 
        // Block to check the user permission to manipulate the module
        if (!$this->user->hasPermission('modify', 'module/magikplatina')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
 
        /* End Block*/
 
        // Block returns true if no error is found, else false if any error detected
        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
}