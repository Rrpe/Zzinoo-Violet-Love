<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<style>
body{
  
}

</style>

</head>

<body>
<center>
<div class="row flex-nowrap justify-content-between align-items-center">
<h2>-������ �̼� �Դϴ�-</h2>
</div>
</center>
</body>
	
<script type="text/javascript" class="row flex-nowrap justify-content-between align-items-center">
	
var myTest = new Array('������ ��� ������', '�Ǽ��̿��� ��������', '�Ҷ��� �Ȱ��������', '��ȫ�̿��� �ֻ���Ա�', 'ȫ���̿��� �̻ڴٰ� ���ֱ�', '�ؼ����� �ݼ������ ���');
document.write(randomItem(myTest), '<br />');

// �־��� �迭���� ��� 1���� �����ϰ� ��� ��ȯ�ϴ� �Լ�
function randomItem(a) {
  return a[Math.floor(Math.random() * a.length)];
}
</script>
</html>