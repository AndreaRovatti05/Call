package Call.Call.Manager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

import java.net.URL;

import com.scorpio.scrubber.domain.model.CustomModel;

public class Simulation {

	public static String getRequest(URL url) throws IOException {
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		int status = con.getResponseCode();
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputLine = in.readLine();
		in.close();
		return inputLine.substring(inputLine.indexOf("["), (inputLine.lastIndexOf("]")+1));
	}
	
	
}
