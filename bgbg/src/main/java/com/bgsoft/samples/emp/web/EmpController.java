/*
 * Copyright 2014 MOSPA(Ministry of Security and Public Administration).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.bgsoft.samples.emp.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bgsoft.samples.emp.service.EmpService;
import com.bgsoft.samples.emp.service.EmpVO;

/**
 * 사원정보 CRUD 요청을 처리하는 Controller 클래스
 * 
 * @author Daniela Kwon
 * @since 2014.01.24
 * @version 3.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *   
 *   수정일			수정자				수정내용
 *  ---------------------------------------------------------------------------------
 *   2014.04.07	Daniela Kwon		최초생성
 * 
 * </pre>
 */

@Controller
public class EmpController {

	@Resource(name = "empService")
	private EmpService empService;

	/** 
	 *사원목록을 조회한다.
	 * @param empVO 검색조건
	 * @param model
	 * @return "emp/list"
	 * @throws Exception
	 */
	@RequestMapping(value="/emp/retrieveEmployeeList", method=RequestMethod.GET)
	public String retrieveEmpList(@ModelAttribute("emp") EmpVO empVO, ModelMap model) throws Exception {

		int totCnt = empService.retrieveEmpListTotCnt(empVO);

		// 검색조건과 키워드로 사원목록조회
		List<EmpVO> resultEmployeeList = empService.retrieveEmpList(empVO);
		model.addAttribute("resultList", resultEmployeeList);
		return "emp/list";
	}

	/**
	 * 사원상세조회 화면으로 이동한다.
	 * @param empNo 사원번호
	 * @return "emp/detail"
	 * @throws Exception
	 */
	@RequestMapping(value = "/emp/retrieveEmployee.do")
	public String retrieveEmp(@RequestParam("empNo") String empNo, ModelMap model) throws Exception {

		// 사원번호로 사원정보 조회
		EmpVO empVO = new EmpVO();
		empVO.setEmpNo(empNo);

		EmpVO resultEmployee = empService.retrieveEmp(empVO);
		model.addAttribute("emp", resultEmployee);

		return "emp/detail";
	}

	/**
	 * 사원정보 등록 화면으로 이동한다.
	 * @param empVO
	 * @param model
	 * @return "emp/form"
	 * @throws Exception
	 */
	@RequestMapping(value = "/emp/retrieveEmployeeNewForm.do")
	public String retrieveEmpNewForm(@ModelAttribute("emp") EmpVO empVO, ModelMap model) throws Exception {
		return "emp/form";
	}

	/**
	 * 사원정보 등록하고 목록조회 화면으로 이동한다.
	 * @param empVO 사원정보
	 * @param model
	 * @return "redirect:/emp/retrieveEmployeeList.do"
	 * @throws Exception
	 */
	@RequestMapping(value = "/emp/insertEmployee.do")
	public String insertEmp(@ModelAttribute("emp") EmpVO empVO, ModelMap model) throws Exception {

		empService.insertEmp(empVO);
		return "redirect:/emp/retrieveEmployeeList.do";
	}

	/**
	 * 사원정보 수정 화면으로 이동한다.
	 * @param empVO 사원정보(사원번호 empNo)
	 * @param model
	 * @return "emp/form"
	 * @throws Exception
	 */
	@RequestMapping(value = "/emp/retrieveEmployeeForm.do")
	public String retrieveEmpForm(@ModelAttribute("emp") EmpVO empVO, ModelMap model) throws Exception {

		// 사원번호로 사원정보 조회
		EmpVO resultEmployee = empService.retrieveEmp(empVO);
		model.addAttribute("emp", resultEmployee);

		return "emp/form";
	}

	/** 
	 * 사원정보 수정하고 목록조회 화면으로 이동한다.
	 * @param empVO 사원정보
	 * @param model
	 * @return "forward:/emp/retrieveEmployee.do"
	 * @throws Exception
	 */
	@RequestMapping(value = "/emp/updateEmployee.do")
	public String updateEmp(@ModelAttribute("emp") EmpVO empVO, ModelMap model) throws Exception {
		System.out.println("**********" + empVO.getSearchCondition() + "keyword= " + empVO.getSearchKeyword() + "pageindex= " + empVO.getPageIndex());
		empService.updateEmp(empVO);
		return "forward:/emp/retrieveEmployee.do";
	}

	/**
	 * 사원정보 삭제 후 목록조회 화면으로 이동한다.
	 * @param empVO 사원정보
	 * @return "redirect:/emp/retrieveEmployeeList.do"
	 * @throws Exception
	 */
	@RequestMapping(value = "/emp/deleteEmployee.do")
	public String deleteEmp(@ModelAttribute("emp") EmpVO empVO, ModelMap model) throws Exception {

		empService.deleteEmp(empVO);
		return "redirect:/emp/retrieveEmployeeList.do";
	}
}
