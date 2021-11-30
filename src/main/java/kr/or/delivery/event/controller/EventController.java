package kr.or.delivery.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {

		@RequestMapping(value = "/eventList.do")
		public String eventList() {
			return "event/eventList";
		}
}
