package com.skilldistillery.lakes.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.lakes.LakeDAO;
import com.skilldistillery.lakes.entities.Lake;

@Controller
public class LakeController {

	@Autowired
	private LakeDAO dao;

	@RequestMapping(path = { "/", "home.do" }, method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(path = "find.do", method = RequestMethod.GET)
	public ModelAndView findById(Integer id) {
		ModelAndView mv = new ModelAndView();
		Lake lake = dao.find(id);

		mv.addObject("lake", lake);

		mv.setViewName("details");

		return mv;
	}

	@RequestMapping(path = "search.do", method = RequestMethod.GET)
	public ModelAndView findByKeyWord(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Lake> lakes = dao.search(keyword);

		if (lakes == null || lakes.size() == 0) {
			mv.setViewName("notFound");
			return mv;
		} else {
			mv.addObject("lakes", lakes);

			mv.setViewName("showAll");

			return mv;
		}
	}
		
		@RequestMapping(path = "searchFish.do", method = RequestMethod.GET)
		public ModelAndView findByFish(String keyword) {
			ModelAndView mv = new ModelAndView();
			List<Lake> lakes = dao.searchByFish(keyword);

			if (lakes == null || lakes.size() == 0) {
				mv.setViewName("notFound");
				return mv;
			} else {
				mv.addObject("lakes", lakes);

				mv.setViewName("showAll");

				return mv;
			}
	}

	@RequestMapping(path = "showAll.do", method = RequestMethod.GET)
	public ModelAndView showAll() {
		ModelAndView mv = new ModelAndView();
		List<Lake> lakes = dao.findAll();

		if (lakes == null || lakes.size() == 0) {
			mv.setViewName("notFound");
			return mv;
		} else {
			mv.addObject("lakes", lakes);

			mv.setViewName("showAll");

			return mv;
		}
	}

	@RequestMapping(path = "created.do", method = RequestMethod.POST)
	public ModelAndView create(Lake lake) {
		ModelAndView mv = new ModelAndView();
		Lake newLake = dao.create(lake);
		mv.addObject("lake", newLake);
		mv.setViewName("details");
		return mv;
	}

	@RequestMapping(path = "create.do", method = RequestMethod.GET)
	public String create() {
		return "create";
	}

	@RequestMapping(path = "update.do", method = RequestMethod.GET)
	public ModelAndView update(Integer id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("lake", dao.find(id));
		mv.setViewName("update");
		return mv;
	}

	@RequestMapping(path = "updated.do", method = RequestMethod.POST)
	public ModelAndView update(Lake lake) {
		System.out.println(lake);
		ModelAndView mv = new ModelAndView();
		Lake newLake = dao.update(lake);
		mv.addObject("lake", newLake);
		mv.setViewName("details");
		return mv;
	}

	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public ModelAndView delete(Integer id) {
		ModelAndView mv = new ModelAndView();
		boolean status = dao.delete(id);
		if (status == true) {
			mv.addObject("delete", status);
			mv.setViewName("home");

			return mv;
		} else {
			mv.setViewName("notFound");
			return mv;
		}
	}
}
