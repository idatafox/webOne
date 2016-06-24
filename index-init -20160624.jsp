<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.elearn007.mysqldb.*,java.sql.*,java.util.*,com.elearn007.usermg.*,com.ittrain.finance.loan.*,com.ittrain.user.information.*" %>
 <%@ taglib uri="/WEB-INF/news.tld"  prefix="ex" %>
<%@ include file="/head//mobileHub.jsp" %>
<!doctype html>
<html>
<head>
<script src="/14train/js/jquery-1.11.0.min.js"></script>
<script src="/learn/js/common.js"></script>
<script src="/js/login.js"></script>
<script src="/js/commonj.js"></script>
<script src="/js/jquerybackgroundsize.js"></script>
<script src="/chat/js/chat.js"></script>
<link href="/chat/css/chatVerOne.css" rel="stylesheet" type="text/css">
<link href="/css/index.css" rel="stylesheet" type="text/css">

<meta charset="utf-8">
<META content="IE=7.0000" http-equiv="X-UA-Compatible">
<title>数狐在线-做最好的在线学习社区java c# liferay jsp 99999</title>
</head>




<%!

  UserBasicInformation userinfo=null;
  String ifLand="";
  String userName="";
  String finalNumber="";
  String exitType="";
  String tvalue="";
  String srcIP=null;
	String userNameV="";
	
	 
    String cityName="";
    String lfp="";
 
%>




<%



   srcIP=request.getRemoteAddr();

  userinfo=(UserBasicInformation)session.getAttribute("userInformation");
   if(userinfo==null) 
	  {
	        userName="guest";
			finalNumber="0";
	  }
	 else
	  {
	      userName=userinfo.user_nake;
		  finalNumber=userinfo.user_finalNumber;
	  }

%>



<script>
			$(document).ready(function(){
				 initDate();
				 executeCheckNewNotes();
				 $.ajaxSetup({ cache: false });
				 coloseChatWindow();
				// $("#liferay").css({backgroundSize: "cover"});
				 
				
					checkIfLand();
					checkImg();  
				
				 
				
			  });
			  
			  // as registration action   reset Value.
			    function resetData(obj){
    	             obj.value="";
                 }

</script>




<body>


<jsp:include page="/head/top1.jsp"/>









<!-- top AD  -->

<div id="liferay">
			     <a id="hotAD1" href="/office/onlineAsk.jsp" target="_new">
			           	 
						  <img src="/images/20160331.gif" border="none" width="100%" height="400px"/>
                          
			      </a>
			      
</div>
	
	

<!--  handle Land and Registration Action -->



<div id="topArticleList">
<!-- hidden fields -->
<div>
<input id="finalNumber" type="hidden" value="<%=finalNumber%>"/> 
<input id="userName" type="hidden" value="<%=userName%>"/> 
</div>


   <div id="DLand">
      <div id="lpic">
          登录－新的技能可以带给我们好运
      </div>
      <div id="arcContent">
           <div id="arcContent-left">用户名</div>
            <div id="arcContent-right"><input id="nake" type="text"  size="25" value=""/></div>
      </div>
       <div id="arcContent">
          <div id="arcContent-left">密&nbsp;&nbsp;&nbsp;码</div>
            <div id="arcContent-right"><input id="password" type="password"  size="25" value=""/></div>
      </div>
       <div id="arcContent">
          <div id="arcContent-left">验证码</div>
            <div id="arcContent-right"><input id="N1" type="text"  size="5" /></div>
           <div  id="bbb" style="float:left;padding-left:6px;padding-top:6px;width:100px;color:red;font-size:12px;">
             12345678
           </div>
      </div> 
      <div id="arcContent">
           <div id="arcContent-left"> <input type="button" value="登录" onclick="subDataOfNewVersion()"/></div>
            <div id="arcContent-right"></div>
      </div>
      
       <div id="arcContent">
          <a href="/office/newsSmall.jsp?courseid=admin2016-3-12%2015:27:0"  class="a4" target="_blank"> 
           加入数狐在线，我可以得到什么?</a>
      </div>
      
       <div id="arcContent">
         
      </div>
      
       <div id="arcContent">
         
      </div>
   
   </div>
   

   
     <div id="rightArc">
            
          
           <div id="lpic" style="background-color:RGB(183,53,45);">
            注册会员-30秒，接触最新最系统的的培训教程
          </div>
          
          <div id="arcContent-b">
               <div id="arcContent-left">登录名</div>
              <div id="arcContent-right"><input id="user_nake" name="user_nake" type="text"  size="25" value="仅支持英文"/></div>
              <div id="arcContent-left" style="margin-left:10px;">微信号</div>
              <div id="arcContent-right"><input id="user_weixin" name="user_weixin" type="text"  size="25"/></div>
          </div>
          
           <div id="arcContent-b">
              <div id="arcContent-left">密&nbsp;&nbsp;码</div>
              <div id="arcContent-right"><input id="user_password" name="user_password" type="password"  size="25"/></div>
              <div id="arcContent-left" style="margin-left:10px;">密码确认</div>
              <div id="arcContent-right"><input id="user_password_re" name="user_password_re" type="password"  size="25"/></div>
          </div>
          
           <div id="arcContent-b">
              <div id="arcContent-left">姓&nbsp;&nbsp;名</div>
              <div id="arcContent-right"><input id="user_name" name="user_name" type="text"  size="25"/></div>
              <div id="arcContent-left" style="margin-left:10px;">所在城市</div>
              <div id="arcContent-right"><input id="user_city" name="user_city" type="text"  size="25" value="精确省/市/县" onclick="resetData(this)"/></div>
          </div>
          
           <div id="arcContent-b">
             <div id="arcContent-left">学&nbsp;&nbsp;历</div>
              <div id="arcContent-right">
             
                   <select id="user_level" name="user_level">
                      <option>-------------</option>
		               <option>高中</option>
		               <option>中专</option>
		               <option>专科</option>
		               <option>本科</option>
		               <option>研究生</option>
		               <option>博士及以上</option>
                 </select>
              </div>
              <div id="arcContent-left" style="margin-left:72px;">QQ号</div>
              <div id="arcContent-right"><input id="user_qq" name="user_qq" size="25" value="正确填写" onclick="resetData(this)"/></div>
          </div>
          
             <div id="arcContent-b">
             <div id="arcContent-left">毕业学校</div>
              <div id="arcContent-right"><input id="user_school" name="user_school" type="text"  size="25"/></div>
              <div id="arcContent-left" style="margin-left:10px;">专业</div>
              <div id="arcContent-right"><input id="user_majority" name="user_majority" size="25" value="正确填写" onclick="resetData(this)"/></div>
          </div>
          
           <div id="arcContent-b">
             <div id="arcContent-left">毕业时间</div>
              <div id="arcContent-right"><input id="user_gradtime" name="user_gradtime" type="text"  size="25"/></div>
              <div id="arcContent-left" style="margin-left:10px;">职位</div>
              <div id="arcContent-right"><input id="user_position" name="user_position" size="25" value="正确填写" onclick="resetData(this)"/></div>
          </div>
          
          
            <div id="arcContent-b">
             <div id="arcContent-left">性别</div>
              <div id="arcContent-right">
            
              <select id="user_gender" name="user_gender">
		               <option>男</option>
		               <option>女</option>
              </select>
              </div>
              <div id="arcContent-left" style="margin-left:116px;">电子邮件</div>
              <div id="arcContent-right"><input id="user_email" name="user_email" size="25" value="正确填写" onclick="resetData(this)"/></div>
          </div>
          
           <div id="arcContent-b">
             
             <div id="arcContent-left">微信验证码</div>
              <div id="arcContent-right"><input id="vcode" type="text"  size="25"/></div>
                <div id="arcContent-left" style="margin-left:10px;">联系电话</div>
               <div id="arcContent-right"><input id="user_mobile" name="user_mobile" type="text"  size="25"/><input type="button" value="注册" onclick="addRecordNoneCommercial()"/></div>
          </div>
          
            
   
           <div id="arcContent-b">
             
           
              <div id="arcContent-right" style="padding-top:6px;">  &nbsp;&nbsp;关注微信公共号<font color=red>elearn007</font><br/>
              后向公共号发送yz+你的电话号码(yz186********)，即可得到验证码。
              </div>
          </div>
          
          
   
   
      </div>
   
   

</div>



	
	
	
	
	
	
	
	






<div id="excelad">
       <a  href="http://study.163.com/course/courseMain.htm?courseId=1467003" target="_new">
        <img src="/images/201602/excelad.gif" border="none" width="754px" height="225px" alt="MS Excel2016 零起步"/>
        </a>

</div>


<div id="lfad">
   <a id="hotAD" href="/learn/query/readCommonArticle.vm" target="_new">
    <img src="/images/201602/liferayad.gif" border="none" width="754px" height="225px" alt="liferay完全开发指南视频教程"/>
    </a>
</div>





<style>

   #mainArc{
	  float:left;
	  width:100%;
	  height:2000px; 
	  height:auto; 
   }
   #mainArc-item{
	  float:left;
	  width:60%;
	  height:2000px; 
	  height:auto; 
   }
   #mi-item{
	 float:left;
	 width:100px;
	 height:220px;
	 margin-left:100px;
     background-color:#Fff; 
	 margin-top:20px;
   }
   
   #mi-pic{
	   float:left;
	   margin-top:6px;
	   margin-left:4px;
	   width:20%;
	   height:200px;
	   background-color:#Fff; 
   }
   #mi-content{
	   
	  float:right;
	  margin-top:6px;
	  margin-left:6px;
	  margin-right:6px;
	  width:70%;
	  height:200px;
	  background-color:#fff; 
	     
   }
   #mi-title{
	 float:left;
	 font-size:18px;
	 height:30px;
	 width:380px;   
   }
   #michild-title{
	 float:left;
	 font-size:12px;
	 height:30px;
	 width:380px;  
	 margin-left:10px;  
   }
   
   #mi-txtbody{
	 float:left;
	 margin-top:6px;
	 font-size:12px;
	 height:30px;
	 width:380px;  
	   -ms-word-break: break-all;
	  word-break: break-all;
	  word-break: break-word;
	  word-wrap:break-word;
   }
   
    #mainArc-right{
	 float:right;
	 margin-top:20px;
	 width:20%;
	 height:200px; 
	
	 margin-right:100px;
     background-color:RGB(246,246,246); 
	}
   
   #mr-item{
	  float:right;
	  width:100%;
	  height:260px;
	  border-bottom:#F00 solid 0px;
	  background-color:#FFF;
	  color:#000;  
	  margin-right:0px;
	  margin-top:0px;
   }
   #mr-title{
	    float:left;
	    width:300px;
		height:60px;
	    background-color:RGB(99,178,52);
		color:#fff;
		text-align:center;
		padding-top:20px;   
   }
   #mr-arc{
	     float:left;
	     width:300px;
		 height:20px;
		 text-align:left;
		 padding-left:20px;
		 padding-top:6px;
		 font-size:14px;
   }
   
    #oLand{
	 float:left;
	 width:90%;
	 height:260px;
	 margin-left:100px;
     background-color:RGB(246,246,246);
	 margin-top:20px;
	 border-bottom:#FFF solid 2px;
   }
   .oTopTile{
     float:left;
	 width:90%;
	 height:80px;
	 height:auto;
	 margin-left:100px;
     background-color:RGB(15,68,97); 
	 margin-top:20px;
	 color:#fff;
	 font-size:18px;
	  padding-top:10px;
   }
   .oTopTile div:first-child{
    float:left;
    margin-left:20px;
    color:red;
   
    
   }
    .oTopTile div:last-child{
    
     float:right;
     
     margin-right:20px;
   }
   #oLand-title{
	 float:left;
	
	 height:100px;
	 height:auto;
	 line-height:32px;
	 width:100%;   
	 font-size:30px;
   }
    #oLand-childTitle{
	 float:left;
	 margin-top:10px;
	 font-size:12px;
	 height:20px;
	 width:70%;  
	 margin-left:10px;  
   }
   
   #oLand-txtBody{
	 float:left;
	 margin-top:6px;
	 font-size:18px;
	 height:30px;
	 width:100%;  
	   -ms-word-break: break-all;
	  word-break: break-all;
	  word-break: break-word;
	  word-wrap:break-word;
	  line-height:20px;
   }
    #oLand-pic{
	   float:left;
	   margin-top:0px;
	   margin-left:4px;
	   width:30%;
	   height:200px;
	   background-color:RGB(246,246,246);
   }
   #oLand-content{
	   
	  float:right;
	  margin-top:0px;
	  margin-left:6px;
	  margin-right:6px;
	  width:60%;
	  height:200px;
	  background-color:RGB(246,246,246);
	     
   }
</style>
<div id="mainArc">
       
                 <div id="mainArc-item">
                 
                 
                   <div  class="oTopTile">
		                     <div>
		                         <a href='/learn/LearnListPage/commonArticleList.jsp?cityName=HOT' target='_blank' class='a5'>精彩随笔</a>
		                     </div>
		                     <div>
		                         <a href='/learn/LearnListPage/commonArticleList.jsp?cityName=HOT' target='_blank' class='a5'>更多</a>
		                     </div>
                   </div>
                        <ex:pictureNewsList  outerDiv="oLand" sqlText="select * from article where arc_type='HOT' order by DATE_FORMAT( arc_time,  '%Y-%m-%d %h:%i:%s' ) desc limit 9"
                      title="arc_title" childTitle="arc_author"  
                      childTitleSec="arc_time"
                      picturePath="arc_smallpic" 
                      txtBody="shorttxt"
                      queryListFile="/office/newsSmall.jsp?courseid="
                        />                                          
                    
                    
                        <%
	                        cityName=java.net.URLEncoder.encode("maven视频库初级");
      
	                    %>
                    
                      <div  class="oTopTile">
		                     <div>
		                         <a href='／learn/LearnListPage/vedioArticleList.jsp?cityName=<%=cityName%>' target='_blank' class='a5'>Maven学习教程视频</a>
		                     </div>
		                     <div>
		                          <a href='/learn/LearnListPage/vedioArticleList.jsp?cityName=<%=cityName%>' target='_blank' class='a5'>更多</a>
		                     </div>
                     </div>
                    
                    
                    <ex:pictureNewsList  outerDiv="oLand" sqlText="select * from chapterArticleInformation where chapterChildName='maven视频库初级' order by DATE_FORMAT( createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 9"
                      title="cArticleTitle" childTitle="cArticleAuthor"  
                      childTitleSec="createTime"
                      picturePath="cArticleSmallPic" 
                      txtBody="shorttxt"
                      queryListFile="/office/vedioCourseSmallPage.jsp?courseid="
                        />     
                        
                        
                          <%
	                        cityName=java.net.URLEncoder.encode("git视频库初级");
      
	                    %>
                    
                      <div  class="oTopTile">
		                     <div>
		                         <a href='／learn/LearnListPage/vedioArticleList.jsp?cityName=<%=cityName%>' target='_blank' class='a5'>Git学习教程视频</a>
		                     </div>
		                     <div>
		                          <a href='/learn/LearnListPage/vedioArticleList.jsp?cityName=<%=cityName%>' target='_blank' class='a5'>更多</a>
		                     </div>
                     </div>
                    
                        <ex:pictureNewsList  outerDiv="oLand" sqlText="select * from chapterArticleInformation where chapterChildName='git视频库初级' order by DATE_FORMAT( createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 9"
                      title="cArticleTitle" childTitle="cArticleAuthor"  
                      childTitleSec="createTime"
                      picturePath="cArticleSmallPic" 
                      txtBody="shorttxt"
                      queryListFile="/office/vedioCourseSmallPage.jsp?courseid="
                        />     
                    
                    
                    
                        <%
	                        cityName=java.net.URLEncoder.encode("theme开发视频课程");
      
	                    %>
                    
                      <div  class="oTopTile">
		                     <div>
		                         <a href='／learn/LearnListPage/vedioArticleList.jsp?cityName=<%=cityName%>' target='_blank' class='a5'>Liferay学习教程视频</a>
		                     </div>
		                     <div>
		                          <a href='/learn/LearnListPage/vedioArticleList.jsp?cityName=<%=cityName%>' target='_blank' class='a5'>更多</a>
		                     </div>
                     </div>
                    
                    
                     <ex:pictureNewsList  outerDiv="oLand" sqlText="select * from chapterArticleInformation where chapterChildName='theme开发视频课程' order by DATE_FORMAT( createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 9"
                      title="cArticleTitle" childTitle="cArticleAuthor"  
                      childTitleSec="createTime"
                      picturePath="cArticleSmallPic" 
                      txtBody="shorttxt"
                      queryListFile="/office/vedioCourseSmallPage.jsp?courseid="
                        />     
                    
                    
                       <%
	                        cityName=java.net.URLEncoder.encode("开发环境搭建");
      
	                    %>
                    
                      <div  class="oTopTile">
		                     <div>
		                         <a href='／learn/LearnListPage/vedioArticleList.jsp?cityName=<%=cityName%>' target='_blank' class='a5'>jsp学习教程视频</a>
		                     </div>
		                     <div>
		                          <a href='/learn/LearnListPage/vedioArticleList.jsp?cityName=<%=cityName%>' target='_blank' class='a5'>更多</a>
		                     </div>
                     </div>
                    
                      <ex:pictureNewsList  outerDiv="oLand" sqlText="select * from chapterArticleInformation where chapterChildName='开发环境搭建' order by DATE_FORMAT( createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 9"
                      title="cArticleTitle" childTitle="cArticleAuthor"  
                      childTitleSec="createTime"
                      picturePath="cArticleSmallPic" 
                      txtBody="shorttxt"
                      queryListFile="/office/vedioCourseSmallPage.jsp?courseid="
                        />           
                    
                    
                    
                  </div>
                
    
    
     <style>
  #myNew{
      float:left;
	  width:100%;
	  height:500px;
	  height:auto;
	  border-bottom:#F00 solid 0px;
	  background-color:#fff;
	  color:#fff;  
	  margin-left:0px;
	  margin-top:10px;
  }
  
  #myNew-lpic{
       float:left;
	    width:100%;
		height:60px;
	    background-color:RGB(102,102,102);
		color:#fff;
		text-align:center;
		padding-top:20px;
  }
  #myNew-arcContent{
         float:left;
	     width:100%;
		 height:40px;
		 text-align:left;
		 margin-left:0px;
		 padding-top:6px;
		 font-size:14px;
		 background-color:#FFF;
  }
  
  .arcContent1{
        float:left;
	     width:100%;
		 height:50px;
		 text-align:left;
		 padding-left:0px;
		 padding-top:6px;
		 font-size:20px;
		 
  }
  
 
    
    </style>  
                
                
   
      <%
	    cityName=java.net.URLEncoder.encode("北京");
        lfp="/office/listpage/listResumeInformation.jsp";
	 %>
                   
                 
                
                
                
                
                <div id="mainArc-right">
                
                
                <!-- 
                
                <ex:briefInformation objName="myNew" sqlText="select * from ResumeInformation order by DATE_FORMAT(Resume_pubtime,  '%Y-%m-%d %h:%i:%s' ) desc limit 10"
                      titleClassNameList="" lineClassNameList="arcContent" archClassNameList="a4"
                      detailFilePath="/office/resumeSmallPage.jsp?resume_id="
                      rowSum="10" titleName="优秀人才推荐" titleColName="resume_name" 
                      listLineClassName="a5" 
                       listFilePath="<%=lfp%>"
               />
               -->
         
               
                  <%
	    cityName=java.net.URLEncoder.encode("站内帮助");
        lfp="/learn/LearnListPage/commonArticleList.jsp?cityName="+cityName;
	 %>
                        
        <ex:briefInformation objName="myNew" sqlText="select * from article where arc_type='站内帮助' order by DATE_FORMAT( arc_time,  '%Y-%m-%d %h:%i:%s' ) desc limit 20"
                      titleClassNameList="" lineClassNameList="arcContent" archClassNameList="a2"
                      detailFilePath="/office/newsSmall.jsp?courseid="
                      rowSum="10" titleName="站内帮助" titleColName="arc_title" 
                      listLineClassName="a5" 
                       listFilePath="<%=lfp%>"
               />       
               
               
               
               
         
         
              
         
                
                
          <%
	    cityName=java.net.URLEncoder.encode("java入门预学习");
        lfp="/learn/LearnListPage/vedioArticleList.jsp?cityName="+cityName;
	 %>
                        
        <ex:briefInformation objName="myNew" sqlText="select * from chapterArticleInformation where chapterChildName='java入门预学习' order by DATE_FORMAT(createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 10"
                      titleClassNameList="" lineClassNameList="arcContent" archClassNameList="a2"
                      detailFilePath="/office/vedioCourseSmallPage.jsp?courseid="
                      rowSum="10" titleName="java入门预习" titleColName="cArticleTitle" 
                      listLineClassName="a3" 
                       listFilePath="<%=lfp%>"
               />     
               
                       
                       
                       
                       
                       
                       
                       
                <!--  
                   <div id="mr-item">
                       
                             
                               <div id="mr-title" style="background-color:RGB(102,102,102);">优秀毕业生</div>
                               <div id="mr-arc">
                                   在建栏目，敬请期待。
                               </div>
                               
                     
                   </div> 
                   -->
      
      
 
    
    
    
      
                   
                   

                   
                   
                   
                     <!-- 
                   
                      <div id="mr-item" style="margin-top:20px;">
                       
                             
                               <div id="mr-title" style="background-color:RGB(102,102,102);">精品项目推荐</div>
                               <div id="mr-arc">
                                  在建栏目，敬请期待。
                               </div>
                               
                     
                        </div> 
                     -->
                   
                   
                
      <%
	    cityName=java.net.URLEncoder.encode("集成Liferay IDE");
        lfp="/learn/LearnListPage/FormalArticleList.jsp?cityName="+cityName;
	 %>
                        
        <ex:briefInformation objName="myNew" sqlText="select * from chapterArticleInformation where chapterChildName='集成Liferay IDE' order by DATE_FORMAT(createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 10"
                      titleClassNameList="" lineClassNameList="arcContent" archClassNameList="a2"
                      detailFilePath="/office/newsSmallCourseArticle.jsp?courseid="
                      rowSum="10" titleName="集成Liferay IDE" titleColName="cArticleTitle" 
                      listLineClassName="a5" 
                       listFilePath="<%=lfp%>"
               />     
               
               
               
               
           <%
	    cityName=java.net.URLEncoder.encode("Theme初级");
        lfp="/learn/LearnListPage/FormalArticleList.jsp?cityName="+cityName;
	 %>
                        
        <ex:briefInformation objName="myNew" sqlText="select * from chapterArticleInformation where chapterChildName='Theme初级' order by DATE_FORMAT(createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 10"
                      titleClassNameList="" lineClassNameList="arcContent" archClassNameList="a2"
                      detailFilePath="/office/newsSmallCourseArticle.jsp?courseid="
                      rowSum="10" titleName="Liferay theme主题开发入门" titleColName="cArticleTitle" 
                      listLineClassName="a5" 
                       listFilePath="<%=lfp%>"
               />         
               
               
               
               
               <%
	    cityName=java.net.URLEncoder.encode("Axis2基础入门");
        lfp="/learn/LearnListPage/FormalArticleList.jsp?cityName="+cityName;
	 %>
                        
        <ex:briefInformation objName="myNew" sqlText="select * from chapterArticleInformation where chapterChildName='Axis2基础入门' order by DATE_FORMAT(createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 10"
                      titleClassNameList="" lineClassNameList="arcContent" archClassNameList="a2"
                      detailFilePath="/office/newsSmallCourseArticle.jsp?courseid="
                      rowSum="10" titleName="Axis2基础入门" titleColName="cArticleTitle" 
                      listLineClassName="a5" 
                       listFilePath="<%=lfp%>"
               />     
               
               
               
                    <%
	    cityName=java.net.URLEncoder.encode("vc热点文章");
        lfp="/learn/LearnListPage/FormalArticleList.jsp?cityName="+cityName;
	 %>
                        
        <ex:briefInformation objName="myNew" sqlText="select * from chapterArticleInformation where chapterChildName='vc热点文章' order by DATE_FORMAT(createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 10"
                      titleClassNameList="" lineClassNameList="arcContent" archClassNameList="a2"
                      detailFilePath="/office/newsSmallCourseArticle.jsp?courseid="
                      rowSum="10" titleName="vc热点文章" titleColName="cArticleTitle" 
                      listLineClassName="a5" 
                       listFilePath="<%=lfp%>"
               />     
                   
                   
                  <%
	    cityName=java.net.URLEncoder.encode("如何入门");
        lfp="/learn/LearnListPage/FormalArticleList.jsp?cityName="+cityName;
	 %>
                        
        <ex:briefInformation objName="myNew" sqlText="select * from chapterArticleInformation where chapterChildName='如何入门' order by DATE_FORMAT(createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 10"
                      titleClassNameList="" lineClassNameList="arcContent" archClassNameList="a2"
                      detailFilePath="/office/newsSmallCourseArticle.jsp?courseid="
                      rowSum="10" titleName="Hadoop文章" titleColName="cArticleTitle" 
                      listLineClassName="a5" 
                       listFilePath="<%=lfp%>"
               />     
                   
                
                  <%
	    cityName=java.net.URLEncoder.encode("unix编辑器使用");
        lfp="/learn/LearnListPage/FormalArticleList.jsp?cityName="+cityName;
	 %>
                        
        <ex:briefInformation objName="myNew" sqlText="select * from chapterArticleInformation where chapterChildName='unix编辑器使用' order by DATE_FORMAT(createTime,  '%Y-%m-%d %h:%i:%s' ) desc limit 10"
                      titleClassNameList="" lineClassNameList="arcContent" archClassNameList="a2"
                      detailFilePath="/office/newsSmallCourseArticle.jsp?courseid="
                      rowSum="10" titleName="unix下常用开发工具" titleColName="cArticleTitle" 
                      listLineClassName="a5" 
                       listFilePath="<%=lfp%>"
               />     
                
                
                
                
                
                </div>
        
 </div>


<!--  static view information for managing web site -->
<%!
  String pageUrl="";
%>
<%
 pageUrl=java.net.URLEncoder.encode("求职论坛首页","utf-8");

%>
<jsp:include page="/learn/head/addVisitRecordLine.jsp">
 <jsp:param  name="pageUrl" value="<%=pageUrl%>"/>
</jsp:include>


<style>
   #footDiv{
	 float:left;
     height:300px;
	 width:100%;
	 margin-left:0px;
	 margin-top:100px;
	 background-color:RGB(18,86,153);
	 -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=70)";
    filter: alpha(opacity=70);
    opacity:.7; 
   
   
  background-color:#000;
  color:#F06;
   }
   
   
   #bcleft{
	float:left;
	padding-top:10px;
	padding-left:30px;
	height:200px;
	width:300px;
	color:#fff;
}


#bccenter{
	float:left;
	padding-top:10px;
	padding-left:200px;
	height:200px;
	width:300px;
	color:#fff;
}

#bcright{
	float:left;
	padding-top:10px;
	padding-left:100px;
	height:200px;
	width:300px;
	color:#fff;
}
.commonDes{
	font-size:12px;
	margin-top:6px;
}
   
   
</style>
<div id="footDiv">
   
   
    <div id="bottomContainer"><!-- bottomContainer.begin-->
 
     <!--{-bcleft.begin  -->
                <div id="bcleft">
                      <div>公司栏目</div>
                      <div class="commonDes">
                      <a href="/office/newsSmall.jsp?courseid=admin2015-2-15%2011:23:13" target="_new" class="a3">
                       关于数狐在线
                       </a>
                       </div>
                       <div class="commonDes">
                         <a href="/office/newsSmall.jsp?courseid=admin2015-2-15%2011:49:42" target="_new" class="a3">
                       加入数狐在线团队
                        </a>
                       </div>
                       <div class="commonDes"><a href="www.miitbeian.gov.cn" class="a3">沪ICP备14021500号-1</a></div>
                </div>
      <!---bcleft.end}-->
      
      <!-- bccenter.begin-->
                <div id="bccenter">
                       <div>商务合作</div>
                      <div class="commonDes">  </div>
                      <div class="commonDes"> </div>
                       <div class="commonDes">
                           <a href="/office/newsSmall.jsp?courseid=admin2015-2-15%2012:5:34" target="_new" class="a3">
                           在线营销培训合作
                          </a>
                       </div>
                </div>
       <!-- bccenter.end-->
       
       
        <!-- bccenter.begin-->
                <div id="bcright">
                       <div>合作企业</div>
                      <div class="commonDes"></div>
                      <div class="commonDes"></div>
                       <div class="commonDes"></div>
                </div>
       <!-- bccenter.end-->
      
      
      
      
</div> <!--bottomContainer.end-->

   
   
   
</div>


<!--  
   save static file on server for replacing jsp file format. 
   input values:
      newFileName - replace jsp file as static html file format.
-->


<div id="aaa" style="float:left;margin-top:200px;width:1204px;height:600px;background-color:#ccc">

  <div> 
         <input type="button" onclick="convertHtml()" value="生成静态页面"/>
   
   </div>
    <div>
          <textarea id="logx" rows="100" cols="150"></textarea>
   </div>

   
 
</div>





</body>
</html>