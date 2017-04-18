package hello;

import hello.storage.StorageFileNotFoundException;
import hello.storage.StorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.condition.ConditionalOnResource;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.util.stream.Collectors;

import javax.validation.Valid;

import com.springmvc.model.Document;
import com.springmvc.service.DocumentService;

@Controller
@SpringBootApplication
@ComponentScan(basePackages = {"com.springmvc.service", "com.springmvc.dao","com.springmvc.model","com.springmvc.configuration","com.springmvc.util"})
public class FileUploadController {

    private final StorageService storageService;

    @Autowired
    
    public FileUploadController( StorageService storageService) {
        this.storageService = storageService;
    }
  
    @Autowired
    DocumentService documentService;

    @RequestMapping(value = { "/" }, method = RequestMethod.GET)
    public String index(Model model){
    	Document index= documentService.findById(19);
    	Document sidebar= documentService.findById(21);
    	model.addAttribute("index",index);
    	model.addAttribute("sidebar",sidebar);
		return "tags/index";    	
    }
  

    @GetMapping("/files/{filename:.+}")
    @ResponseBody
    public ResponseEntity<Resource> serveFile(@PathVariable String filename) {

        Resource file = storageService.loadAsResource(filename);
        return ResponseEntity
                .ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\""+file.getFilename()+"\"")
                .body(file);
    }
    @GetMapping("/search")
    public String handleFileSearch(@RequestParam("query") String query, Model model){
    	model.addAttribute("driveAPISearchData", storageService.driveAPISearch(query));    	
    	return "test";
    }
    @PostMapping("/")
    public String handleFileUpload(@RequestParam("file") MultipartFile file,
                                   RedirectAttributes redirectAttributes) {

        storageService.store(file);
        redirectAttributes.addFlashAttribute("message",
                "You successfully uploaded " + file.getOriginalFilename() + "!");

        return "redirect:/";
    }
    @RequestMapping(value = { "/submission" }, method = RequestMethod.GET)
    public String submission(Model model){
    	Document submission= documentService.findById(15);
    	Document sidebar= documentService.findById(21);
    	model.addAttribute("sidebar",sidebar);
    	model.addAttribute("submission",submission);
		return "tags/SubmissionPage";    	
    }
    @RequestMapping(value = { "/callpaper" }, method = RequestMethod.GET)
    public String callpaper(Model model){
    
    	Document callpaper=documentService.findById(10);
    	model.addAttribute("callpaper",callpaper);
    	Document sidebar= documentService.findById(21);
    	model.addAttribute("sidebar",sidebar);
		return "tags/CallForPapersPage";
    }
    @RequestMapping(value = { "/registation" }, method = RequestMethod.GET)
    public String registation(Model model)
    {
    	
    	Document registration=documentService.findById(16);
    	model.addAttribute("registration",registration);
    	Document sidebar= documentService.findById(21);
    	model.addAttribute("sidebar",sidebar);
		return "tags/RegistrationPage";	
    }
    
    @RequestMapping(value = { "/keynotespeaker" }, method = RequestMethod.GET)
    public String keynotespeaker(Model model){
    	Document keynotespeaker=documentService.findById(17);
    	model.addAttribute("keynotespeaker",keynotespeaker);
    	Document sidebar= documentService.findById(21);
    	model.addAttribute("sidebar",sidebar);
		return "tags/KeyNotePage";	
    }
    
    @RequestMapping(value = { "/venuehotel" }, method = RequestMethod.GET)
    public String hotelmapping(Model model){
    	Document venuehotel=documentService.findById(18);
    	model.addAttribute("venuehotel",venuehotel);
    	Document sidebar= documentService.findById(21);
    	model.addAttribute("sidebar",sidebar);
		return "tags/Venue_Hotel";	
    }
    
    @RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
    public String contact(Model model){
    	Document contact=documentService.findById(20);
    	model.addAttribute("contact",contact);
    	Document sidebar= documentService.findById(21);
    	model.addAttribute("sidebar",sidebar);
		return "tags/ContactPage";	
    }
    
    @RequestMapping(value = { "/edit-{pageID}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable String pageID, ModelMap model) {
		int id=Integer.parseInt(pageID);
		Document editDocument = documentService.findById(id);
		model.addAttribute("webInfo", editDocument);
		return "tags/EditPage";
	}
    
    @RequestMapping(value = { "/edit-{pageID}" }, method = RequestMethod.POST)
	public String updateUser(@Valid Document webInfo, 
			ModelMap model, @PathVariable int pageID) {

		   documentService.updateDocument(webInfo);

		
		return "redirect:/";
	}
    
  
    @ExceptionHandler(StorageFileNotFoundException.class)
    public ResponseEntity handleStorageFileNotFound(StorageFileNotFoundException exc) {
        return ResponseEntity.notFound().build();
    }
}
