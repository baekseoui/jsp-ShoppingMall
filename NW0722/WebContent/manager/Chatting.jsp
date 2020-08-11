<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>

	<meta charset="UTF-8">
	
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.12.1/jquery-ui.js"></script>
    
    <style>
   	#messageWindow{
   	
   		padding-left:10px;
   		width: 275px;
   		height:340px;
   		line-height:20px;
   		resize:none;
   		outline: none;
   		border:0px;
   		background-color: #fafbfc;
   	}
   	#inputMessage{
   		width: 227px;
   		height:25px;
   		
   	}
   	#submit_btn{
   		width: 40px;
   		height:30px;
   	}
   	fieldset{
   	margin-top:10px;
   	margin-left:7px;
   		border:0px;
   	}
   	
    </style>
</head>
<body>
    <fieldset onkeydown="key(event.keyCode)">
        <textarea id="messageWindow" readonly></textarea>
        <br/>
        <input id="inputMessage" type="text"/>
        <input id="submit_btn" type="submit" value="전송" onclick="send()" />
    </fieldset>
</body>
    <script type="text/javascript">
    var nick = '${login_Name}';
    var textarea = document.getElementById("messageWindow");
    var webSocket = new WebSocket('ws://localhost:8086/NW0720/Chatting');
    var inputMessage = document.getElementById('inputMessage');
    
    
    

    function key(e){
    	if(e==13){
    		send();
    	}
    }
   
    
    webSocket.onerror = function(event) {
		onError(event)
    };

    webSocket.onopen = function(event) {
		onOpen(event)
    };

    webSocket.onmessage = function(event) {
		onMessage(event)
    };

    function onMessage(event) {
    	textarea.value += event.data + "\n";
    	document.getElementById("messageWindow").scrollTop =
        	document.getElementById("messageWindow").scrollHeight;
    }

    function onOpen(event) {
   		
        $.ajax({
			url: 'Chat_Select.do',
			dataType: 'text',
			success: function(data){
			    $(data).find('chat').each(function(){
			    	var count = $('chat_Article', this).text();
			    	
			    	textarea.value += count;
			    	document.getElementById("messageWindow").scrollTop =
			        	document.getElementById("messageWindow").scrollHeight;
			    })
			}
    	})
    }

    function onError(event) {
		alert(event.data);
    }

    function send() {
    	if(inputMessage.value!=""){
	        textarea.value += nick+": "+ inputMessage.value + "\n";
	        webSocket.send(nick+": "+inputMessage.value);
	        inputMessage.value = "";
	        document.getElementById("messageWindow").scrollTop =
	        	document.getElementById("messageWindow").scrollHeight;
    	}
    }
  </script>
</html>