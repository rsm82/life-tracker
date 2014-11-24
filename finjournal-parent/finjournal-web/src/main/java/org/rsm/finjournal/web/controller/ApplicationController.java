package org.rsm.finjournal.web.controller;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ApplicationController {

	private static final Logger logger = Logger
			.getLogger(ApplicationController.class);
			
	@RequestMapping("/finJournal")
	public String setAuth(@RequestParam("loginId") String loginId,
			String workstationId, HttpServletRequest request,
			HttpServletResponse response) {

		logger.info(loginId);
		logger.info(workstationId);

		String accessView = null;
		try {
			if (StringUtils.isNotBlank(loginId)
					&& StringUtils.isNotBlank(workstationId)) {

					accessView = "main";

			} else {
				logger.warn("noaccess");
				accessView = "noaccess";
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return accessView;
	}
		
}