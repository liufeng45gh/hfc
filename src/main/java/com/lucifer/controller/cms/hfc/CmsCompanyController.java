package com.lucifer.controller.cms.hfc;

import com.lucifer.dao.hfc.ArtistDao;
import com.lucifer.dao.hfc.CompanyDao;
import com.lucifer.model.hfc.Artist;
import com.lucifer.model.hfc.Company;
import com.lucifer.service.hfc.ArtistService;
import com.lucifer.utils.Constant;
import com.lucifer.utils.PageUtil;
import com.lucifer.utils.Result;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by liufx on 2017/5/25.
 */

@Controller
@RequestMapping("/cms/company")
public class CmsCompanyController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    private CompanyDao companyDao;



    @RequestMapping(value="/list",method = RequestMethod.GET)
    public String companyList(HttpServletRequest request, @RequestParam(value = "name",required=false,defaultValue="") String name,
                             @RequestParam(value = "page",required=false,defaultValue="1")Integer page){
        Integer pageSize = Constant.PAGESIZE;
        Integer offset = (page-1) * pageSize;
        List<Company> companyList = companyDao.companyList(name,offset,pageSize);
        request.setAttribute("companyList",companyList);
        Integer matchRecordCount=companyDao.matchRecordCount(name);
        Integer totalPageCount= PageUtil.getTotalPageCount(matchRecordCount, pageSize);
        PageUtil pageUtil = new PageUtil(request);
        String pageDiv = pageUtil.willPaginate(totalPageCount,  "pages_bar",new String []{"page","msg"});
        request.setAttribute("pageDiv",pageDiv);
        request.setAttribute("name",name);
        return "/cms/company/list";
    }

    @RequestMapping(value="/add",method = RequestMethod.GET)
    public String companyAddInput(HttpServletRequest request){
        Company company = new Company();
        company.setLogo("/images/artist_default_avatar.jpg");
        request.setAttribute("company",company);
        return "/cms/company/add";
    }

    @RequestMapping(value="/add",method = RequestMethod.POST)
    @ResponseBody
    public Result companyAddSubmit(Company company) throws BadHanyuPinyinOutputFormatCombination {
        companyDao.insertCompany(company);
        return Result.ok();
    }

    @RequestMapping(value="/{id}/update",method = RequestMethod.GET)
    public String companyUpdateInput(HttpServletRequest request,@PathVariable Long id){
        Company company = companyDao.getCompany(id);
        request.setAttribute("company",company);

        return "/cms/company/update";
    }
    @RequestMapping(value="/update",method = RequestMethod.POST)
    public Result companyUpdateSubmit(Company company) throws BadHanyuPinyinOutputFormatCombination {
        companyDao.updateCompany(company);
        return Result.ok();
    }

    @RequestMapping(value="/{id}/delete",method = RequestMethod.POST)
    @ResponseBody
    public Result companyDelete(@PathVariable Long id){
        companyDao.deleteCompany(id);
        return Result.ok();
    }
}
