package com.soloproject.gamingverse.services;

import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import com.soloproject.gamingverse.models.Genre;
import com.soloproject.gamingverse.models.GenreResults;



@Service
public class VideoGameService {
	
	public static Genre getGenres() {

	//API CODE FOR WEBFLUX/WEBCLIENT
			String url ="https://api.rawg.io/api/genres?key=19931bf02563464d928da47646d02acc";
			WebClient.Builder builder = WebClient.builder();
			//CALL BUILDER, BUILD IT, CALL GET METHOD, PASS URL, RETRIEVE DATA, DEFINE DATA TYPE, PLACE IT IN A BOX TO USE
			
			System.out.println(builder.build().get().uri(url).retrieve());
			
			Genre genres = builder.build().get().uri(url).retrieve().bodyToMono(Genre.class).block();
			
			System.out.println("in video game service");
			System.out.println(genres);
			/*for(GenreResults e :genres.getGenreResults()) {
				System.out.println(e);
			}
			*/
			System.out.println(genres.getGenreResults());
			return genres;
	}
}
