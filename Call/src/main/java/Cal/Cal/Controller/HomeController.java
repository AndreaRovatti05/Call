package Cal.Cal.Controller;

import java.io.IOException;
import java.net.URL;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import Call.Call.Manager.Simulation;

@RestController
@RequestMapping("/Home")
public class HomeController {
	
	@RequestMapping(value="{id}",method=RequestMethod.GET)
	public String mapping(@PathVariable("id") Integer id) throws IOException {
		String stringUrl = "http://localhost:8080/Scrubber/api/VesselManager/CustomDtls/"+id.toString();
		URL url = new URL(stringUrl);
		return Simulation.getRequest(url);
		
	}

}
