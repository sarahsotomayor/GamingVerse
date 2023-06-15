package com.soloproject.gamingverse.services;

import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import com.soloproject.gamingverse.models.Genre;



@Service
public class VideoGameService {
	
	public static Genre getGenres() {

	//API CODE FOR WEBFLUX/WEBCLIENT
			String url ="https://api.rawg.io/api/genres?key=19931bf02563464d928da47646d02acc";
			WebClient.Builder builder = WebClient.builder();
			//CALL BUILDER, BUILD IT, CALL GET METHOD, PASS URL, RETRIEVE DATA, DEFINE DATA TYPE, PLACE IT IN A BOX TO USE
			Genre genres = builder.build().get().uri(url).retrieve().bodyToMono(Genre.class).block();
			
			//Testing
			System.out.println("VideoGameService: Results");
			System.out.println(genres);
			
			
			return genres;
	}
}
