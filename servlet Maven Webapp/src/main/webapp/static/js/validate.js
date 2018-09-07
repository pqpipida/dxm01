jQuery.validator.addMethod("isDouble", function(value, element) {
	var dou = /^([+]?)((\d{1,3}(,\d{3})*)|(\d+))(\.\d{1,2})?$/ ;
	return this.optional(element) || (dou.test(value));  
}, "请填写合法的资金数");
//邮政编码验证     
jQuery.validator.addMethod("isZipCode", function(value, element) {     
    var tel = /^[0-9]{6}$/;  
    return this.optional(element) || (tel.test(value));  
}, "请正确填写您的邮政编码");  

//手机号码和电话验证
jQuery.validator.addMethod("isPhone", function(value, element) {
	var phone = /^(0|86|17951)?(13[0-9]|15[012356789]|18[0-9]|14[57])[0-9]{8}$/; 
	var tel = /^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/;
	return this.optional(element) || (tel.test(value)) || (phone.test(value));  
}, "请正确填写联系号码");
//手机号码验证
jQuery.validator.addMethod("isMobile", function(value, element) {
	var phone = /^(0|86|17951)?(13[0-9]|15[012356789]|18[0-9]|14[57])[0-9]{8}$/; 
	return this.optional(element) || (phone.test(value));  
}, "请正确填写手机号码");
//联系号码验证
jQuery.validator.addMethod("isTel", function(value, element) {
	var tel = /^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/;
	return this.optional(element) || (tel.test(value));  
}, "请正确填写联系方式");

//传真号码验证
jQuery.validator.addMethod("isFaxCode", function(value, element) {
	var fax= /^((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)/;
	 return this.optional(element) || (fax.test(value));
}, "请正确填写传真号码");
//开始、结束日期校验
jQuery.validator.addMethod("compareDate",function(value,element){
    var assigntime = $("#assigntime").val();
    var deadlinetime = $("#deadlinetime").val();
    var reg = new RegExp('-','g');
    assigntime = assigntime.replace(reg,'/');//正则替换
    deadlinetime = deadlinetime.replace(reg,'/');
    assigntime = new Date(parseInt(Date.parse(assigntime),10));
    deadlinetime = new Date(parseInt(Date.parse(deadlinetime),10));
    if(assigntime>deadlinetime){
        return false;
    }else{
        return true;
    }
},"结束日期必须大于开始日期");

//密码强度控制
jQuery.validator.addMethod("passStrength", function(value, element) {
//	var fax= /^((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)/;
//	 return this.optional(element) || (fax.test(value));
	CharMode(value);
}, "请正确填写传真号码");



function CharMode(iN) {
	   if (iN>=48 && iN <=57) //数字
	    return 1;
	   if (iN>=65 && iN <=90) //大写字母
	    return 2;
	   if (iN>=97 && iN <=122) //小写
	    return 4;
	   else
	    return 8; //特殊字符
	}

	//bitTotal函数
	//计算出当前密码当中一共有多少种模式
	function bitTotal(num) {
	   modes=0;
	   for (i=0;i<4;i++) {
	    if (num & 1) modes++;
	     num>>>=1;
	    }
	   return modes;
	}

	//checkStrong函数
	//返回密码的强度级别
	function checkStrong(sPW) {
	   if (sPW.length<=4)
	    return 0; //密码太短
	    Modes=0;
	    for (i=0;i<sPW.length;i++) {
	     //测试每一个字符的类别并统计一共有多少种模式
	     Modes|=CharMode(sPW.charCodeAt(i));
	   }
	   return bitTotal(Modes);
	}

	//pwStrength函数
	//当用户放开键盘或密码输入框失去焦点时,根据不同的级别显示不同的颜色

	function pwStrength(pwd) {
	   O_color="#eeeeee";
	   L_color="#FF0000";
	   M_color="#FF9900";
	   H_color="#33CC00";
	   if (pwd==null||pwd==''){
	    Lcolor=Mcolor=Hcolor=O_color;
	   }
	   else {
	    S_level=checkStrong(pwd);
	    switch(S_level) {
	    case 0:
	     Lcolor=Mcolor=Hcolor=O_color;
	    case 1:
	     Lcolor=L_color;
	     Mcolor=Hcolor=O_color;
	    break;
	    case 2:
	     Lcolor=Mcolor=M_color;
	     Hcolor=O_color;
	    break;
	    default:
	     Lcolor=Mcolor=Hcolor=H_color;
	    }
	   }
	   document.getElementById("strength_L").style.background=Lcolor;
	   document.getElementById("strength_M").style.background=Mcolor;
	   document.getElementById("strength_H").style.background=Hcolor;
	return;
}

//身份证验证     
jQuery.validator.addMethod("isIdentity", function(value, element) {     
     
	var area={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"}   
	var idcard,Y,JYM;  
	var S,M;  
	idcard=value;
	var idcard_array = new Array();  
    idcard_array = idcard.split("");
    //地区检验  
    if(area[parseInt(idcard.substr(0,2))]==null)   
        return false;//return Errors[4];  
    //身份号码位数及格式检验  
    switch(idcard.length)  
    {  
        case 15:  
	         if ( (parseInt(idcard.substr(6,2))+1900) % 4 == 0 || ((parseInt(idcard.substr(6,2))+1900) % 100 == 0 && (parseInt(idcard.substr(6,2))+1900) % 4 == 0 ))  
	         {  
	             //测试出生日期的合法性  
	             ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;  
	         }  
	         else   
	         {  
	             //测试出生日期的合法性  
	             ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;  
	         }  
	         if(ereg.test(idcard))   
	             return true;//return Errors[0];  
	         else  
	             return false;//return Errors[2];  
	     break;  
        case 18:  
            //18位身份号码检测  
            //出生日期的合法性检查   
            //闰年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))  
            //平年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))  
            if ( parseInt(idcard.substr(6,4)) % 4 == 0 || (parseInt(idcard.substr(6,4)) % 100 == 0 && parseInt(idcard.substr(6,4))%4 == 0 ))  
            {  
                //闰年出生日期的合法性正则表达式  
                ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;  
            }   
            else   
            {  
                //平年出生日期的合法性正则表达式  
                ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;  
            }  
            if(ereg.test(idcard))  
            {  
                //测试出生日期的合法性  
                //计算校验位  
                S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7  
                + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9  
                + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10  
                + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5  
                + (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8  
                + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4  
                + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2  
                + parseInt(idcard_array[7]) * 1   
                + parseInt(idcard_array[8]) * 6  
                + parseInt(idcard_array[9]) * 3 ;  
                Y = S % 11;  
                M = "F";  
                JYM = "10X98765432";  
                M = JYM.substr(Y,1);//判断校验位  
                if(M == idcard_array[17])   
                    return true;//return Errors[0]; //检测ID的校验位  
                else   
                    return false;//return Errors[3];  
            }  
            else   
                return false;//return Errors[2];  
        break;  
        default:  
            return false;//return Errors[1];  
        break;
    }
}, "请正确填写您的身份证号码"); 