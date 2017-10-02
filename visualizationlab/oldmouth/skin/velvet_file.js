// Example: obj = findObj("image1");
function findObj(theObj, theDoc){ 
var p, i, foundObj;
    if(!theDoc) theDoc = document; 
	if( (p = theObj.indexOf("?")) > 0 && parent.frames.length) 
	{   
		theDoc = parent.frames[theObj.substring(p+1)].document; 
		theObj = theObj.substring(0,p); 
	}  
	if(!(foundObj = theDoc[theObj]) && theDoc.all)
		foundObj = theDoc.all[theObj]; 
	for (i=0; !foundObj && i < theDoc.forms.length; i++)
		foundObj = theDoc.forms[i][theObj];
	for(i=0; !foundObj && theDoc.layers && i < theDoc.layers.length; i++) 
		foundObj = findObj(theObj,theDoc.layers[i].document);  
	if(!foundObj && document.getElementById) 
		foundObj = document.getElementById(theObj);   
	return foundObj;
}

//添加一个参与人填写行
function AddSignRow(){ //读取最后一行的行号，存放在txtTRLastIndex文本框中
 var txtTRLastIndex = findObj("txtTRLastIndex",document);
 var rowID = parseInt(txtTRLastIndex.value);
 
 var signFrame = findObj("SignFrame",document);
 //添加行
 var newTR = signFrame.insertRow(signFrame.rows.length);
 newTR.id = "SignItem" + rowID;
 
 //添加列:序号
 var newNameTD=newTR.insertCell(0);
 //添加列内容
 newNameTD.innerHTML = newTR.rowIndex.toString();
 
 //添加列:file_format
 var newNameTD=newTR.insertCell(1);
 //添加列内容
 newNameTD.innerHTML = "<select name=\"file_format" + rowID + "\"><option value=\"fasta\" SELECTED>fasta</option><option value=\"fastq\">fastq</option><option value=\"fasta.gz\">fasta.gz</option><option value=\"fastq.gz\">fastq.gz</option><option value=\"sam\">sam</option><option value=\"bam\">bam</option><option value=\"eland\">eland</option><option value=\"gerald\">gerald</option></select>";
 
 //添加列:read_type
 var newEmailTD=newTR.insertCell(2);
 //添加列内容
 newEmailTD.innerHTML = "<select name=\"read_type" + rowID +"\"><option value=\"short\" SELECTED>short</option><option value=\"shortPaired\">shortPaired</option><option value=\"short2\">short2</option><option value=\"shortPaired2\">shortPaired2</option><option value=\"long\">long</option><option value=\"longPaired\">longPaired</option></select>";
 
 //添加列:file
 var newTelTD=newTR.insertCell(3);
 //添加列内容
 newTelTD.innerHTML = " <input name=\"filename_of_velveth" + rowID + "\" type=\"text\" value=\"\" size=\"50\" />";
 
 
 
 //添加列:删除按钮
 var newDeleteTD=newTR.insertCell(4);
 //添加列内容
 newDeleteTD.innerHTML = "<div align='center' style='width:40px'><a href='javascript:;' onclick=\"DeleteSignRow('SignItem" + rowID + "')\">Delete</a></div>";
 
 //将行号推进下一行
 txtTRLastIndex.value = (rowID + 1).toString() ;
}
//删除指定行
function DeleteSignRow(rowid){
 var signFrame = findObj("SignFrame",document);
 var signItem = findObj(rowid,document);
 
 //获取将要删除的行的Index
 var rowIndex = signItem.rowIndex;
 
 //删除指定Index的行
 signFrame.deleteRow(rowIndex);
 
 // 重新排列序号，如果没有序号，这一步省略
 for(i=rowIndex;i<signFrame.rows.length;i++){
  signFrame.rows[i].cells[0].innerHTML = i.toString();
 }
}//清空列表
function ClearAllSign(){
 if(confirm('Do you want to clear all the files?')){
  var signFrame = findObj("SignFrame",document);
  var rowscount = signFrame.rows.length;
 
  //循环删除行,从最后一行往前删除
  for(i=rowscount - 1;i > 0; i--){
   signFrame.deleteRow(i);
  }
 
  //重置最后行号为1
  var txtTRLastIndex = findObj("txtTRLastIndex",document);
  txtTRLastIndex.value = "1";
 
  //预添加一行
  AddSignRow();
 }
}