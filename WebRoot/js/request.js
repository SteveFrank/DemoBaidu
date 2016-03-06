function httpRequest(reqType,url,async,resFun,parameter){	
	var request = null;
	var arrSignatures = ["Msxml2.XMLHTTP", "Microsoft.XMLHTTP", "Microsoft.XMLHTTP", "MSXML2.XMLHTTP.5.0", "MSXML2.XMLHTTP.4.0", "MSXML2.XMLHTTP.3.0", "MSXML2.XMLHTTP"];
	if( window.XMLHttpRequest ){		//非IE浏览器，创建XMLHttpRequest对象
		request = new XMLHttpRequest();
	}else if( window.ActiveXObject ){	//IE浏览器，创建XMLHttpRequest对象
				
		for( var i = 0; i < arrSignatures.length; i++ ){
			request = new ActiveXObject( arrSignatures[i] );
			if( request || typeof( request ) == "object" )
				break;
		}
	}
	if( request || typeof( request ) == "object" ){
		if(reqType.toLowerCase()=="post"){		//以POST方式提交
			request.open(reqType, url, true);	//打开服务器连接
			//设置MIME类型
			request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			request.onreadystatechange = resFun;//设置处理响应的回调函数
			parameter = encodeURI(parameter);	//将参数字符串进行编码
			request.send(parameter);			//发送请求
		}
		else{									//以GET方式提交
			url = url+"?"+parameter;			//重新设置URL，GET方式需要在URL中附带请求参数
			request.open(reqType, url, true);	//打开服务器连接
			request.onreadystatechange = resFun;//响应回调函数
			request.send(null);					//发送请求
		}
	}
	else{
		alert( "该浏览器不支持Ajax！" );
	}	
	return request;
}