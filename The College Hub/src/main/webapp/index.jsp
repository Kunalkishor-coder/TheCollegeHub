<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Nalanda College - Bihar Sharif</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="photos/nalanda-logo.png" type="image">
</head>
<body onload="slider()">

<jsp:include page="Header.jsp"/>

<!-- -----slider------- -->

<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="photos/mba.jpg" class="d-block" alt="MBA-Department"style="width:100%;height:450px;">
      <div class="carousel-caption d-none d-md-block">
        <div class="display-6 slider-tagline-bg text-white fw-bold">Empowering Minds, Enriching Futures: Unlock Your Potential with MBA Excellence!</div>
        <lead class="bg-primary text-white p-1">Department of MBA</lead>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="photos/zoology.png" class="d-block" alt="Zoology-Department"style="width:100%;height:450px;">
      <div class="carousel-caption d-none d-md-block">
       <div class="display-6 slider-tagline-bg text-white fw-bold">Discover the Wonders of the Animal Kingdom: Unleash Your Passion in Zoology!</div>
        <lead class="bg-primary text-white p-1">Department of Zoology</lead>
      </div>
    </div>
    <div class="carousel-item">
      <img src="photos/B.ed.jpg" class="d-block" alt="B.Ed-Department"style="width:100%;height:450px;">
      <div class="carousel-caption d-none d-md-block">
       <div class="display-6 slider-tagline-bg text-white fw-bold">Nurture Minds, Ignite Futures: Embrace the Journey of Teaching with B.Ed!</div>
        <lead class="bg-primary text-white p-1">Department of Education</lead>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-----------collegeMessage------------->

<div class="container pt-5">
	<div class="row">
		<ul class="fs-3 list-unstyled lead">
			<li class="p-3 pt-2 pb-2 float-start mission rounded-2"onclick="change1();">Mission</li>
			<li class="p-3 pt-2 pb-2 float-start objective"onclick="change2();">Objective</li>
		</ul>
	</div>
	<div class="fs-5 p-3 mt-2 p-lg-5 bg-light lead shadow">
		<div class="row">
			<div class="col-3"style="display: flex;justify-content: center; align-items: center">
				<img src="photos/nalanda-logo.png"width="140px">
			</div>
			<div class="message col-9">
						Inspiring minds, empowering futures. Our college is committed to providing a transformative education that sparks curiosity, fosters critical thinking, and nurtures personal growth. We strive to create a vibrant and inclusive learning community, equipping students with the skills, knowledge, and values needed to succeed in their chosen paths. Through our dedication to excellence and innovation, we aim to shape confident, well-rounded individuals who can make a positive impact in a rapidly changing world.
			</div>
		</div>
	</div>
</div>


<!-- ---------research & innovation panel--- -->

<div class="container-fluid pt-5 pb-5 mt-5">
	<div class="row">
		<div class="col-lg text-center">
			<figure>
				<img src="photos/R&W-main.png"alt="R&W-IMAGE"class="max-width">
					<figcaption class="lead fs-3 pt-5"><font class="researchTitle rounded-3 border border-dark ps-5 pe-5 pt-2 pb-2">Research & Innovation</font></figcaption>
			</figure>
		</div>
		<div class="col-lg">
				<figure class="text-center">
					<img src="photos/inno-1.png"id="img"class="max-width bg-light shadow">
						<figcaption class="mt-2"><font class="lead fs-3 inno-head">Media Player</font><br><p class="p-5 pt-0 pb-0 lead fs-6 researchPara">A cutting-edge media player created by talented college students. With sleek design and intuitive features</p></figcaption>
				</figure>
				<span class="d-flex justify-content-center mt-5">
					<div>
						<button class="verdana btn btn-secondary btn-lg"onclick="changeLeft();changeMessage();"><i class="bi bi-arrow-left-circle fs-3"></i></button>
						<button class="verdana btn btn-secondary btn-lg ps-2"onclick="changeRight();changeMessage();"><i class="bi bi-arrow-right-circle fs-3"></i></button>
					</div>
				</span>
		</div>
	</div>
</div>


<!-- -----------F&Q ?-------------- -->

<div class="container-fluid p-2 p-md-5">
	<div class="row">
		<div class="col-lg pb-5">
			<div class="row">
				<font class="display-6">F&Q <i class="bi bi-question-circle"></i></font>
			</div>
			<div class="row mt-4">
				<font class="text-secondary fs-5"><i class="bi bi-plus-circle fs-3 m-0 pe-2"onclick="showFq1()"></i> How to take admission in UG Program?</font>
			</div>
			<div class="row lead bg-light shadow mt-3 p-2"id="fq-box1">
				Completion of secondary education or equivalent qualification from a recognized board or institution.
			</div>
			
			
			<div class="row mt-4">
				<font class="text-secondary fs-5"><i class="bi bi-plus-circle fs-3 m-0 pe-2"onclick="showFq2()"></i> What extracurricular activities and clubs are available on campus?</font>
			</div>
			<div class="row lead bg-light shadow mt-3 p-2"id="fq-box2">
				The college offers a diverse range of extracurricular activities and clubs, including sports teams, cultural and performing arts groups, academic clubs, community service organizations, student government, special interest clubs (such as photography, debate, gaming, etc.), and more. 
			</div>
			
			
			<div class="row mt-4">
				<font class="text-secondary fs-5"><i class="bi bi-plus-circle fs-3 m-0 pe-2"onclick="showFq3()"></i> Are there opportunities for internships, co-op programs, or study abroad?</font>
			</div>
			<div class="row lead bg-light shadow mt-3 p-2"id="fq-box3">
				Yes, the college provides opportunities for internships, co-op programs, and study abroad.
			</div>
			
		</div>
		<div class="col-lg">
			<div class="row display-6 text-center">
				<span class="">Gallery</span>
			</div>
			
			<div class="row mt-4">
				<div class="col-md"><img src="photos/mba.jpg"class="border border-dark border-2 rounded-3 max-width"></div>
				<div class="col-md"><img src="photos/zoology.png"class="max-width border border-dark border-2 rounded-3"></div>
			</div>
			<div class="row mt-3">
				<div class="col-md"><img src="photos/B.ed.jpg"class="border border-dark border-2 rounded-3 max-width"></div>
				<div class="col-md"><img src="photos/zoology.png"class="border border-dark border-2 rounded-3 max-width"></div>
				<div class="col-md"><img src="photos/mba.jpg"class="border border-dark border-2 rounded-3 max-width"></div>
			</div>
			
			<div class="row mt-3">
				<div class="col-md"><img src="photos/inno-1.png"class="img-thumbnail max-width"></div>
				<div class="col-md"><img src="photos/inno-2.png"class="img-thumbnail max-width"></div>
				<div class="col-md"><img src="photos/inno-3.png"class="img-thumbnail max-width"></div>
			</div>
		</div>
	</div>
	
</div><!------------------------- --F&Q ---------------------------------------------->


<jsp:include page="Footer.jsp" />





<script>
	function change2(){
		var t=document.getElementsByClassName("objective")[0];
		t.style.background="#787487";
		t.style.color="white";
		t.style.borderRadius="3px";
		
		var n=document.getElementsByClassName("mission")[0];
		n.style.background="white";
		n.style.color="black";
		
		var m=document.getElementsByClassName("message")[0];
		m.innerText="Our objective is to provide quality education and holistic development to our students. We aim to cultivate a supportive and inclusive learning environment that promotes academic excellence, personal growth, and professional success. Through innovative teaching methods, practical experiences, and industry-relevant programs, we strive to prepare our students for the challenges of the real world. Our objective is to empower them with the skills, knowledge, and values necessary to thrive in their careers and contribute meaningfully to society.";
	}
	
	function change1(){
		var n=document.getElementsByClassName("mission")[0];
		n.style.background="#787487";
		n.style.color="white";
		
		var t=document.getElementsByClassName("objective")[0];
		t.style.background="#fff";
		t.style.color="black";
		
		var m=document.getElementsByClassName("message")[0];
		m.innerText="Inspiring minds, empowering futures. Our college is committed to providing a transformative education that sparks curiosity, fosters critical thinking, and nurtures personal growth. We strive to create a vibrant and inclusive learning community, equipping students with the skills, knowledge, and values needed to succeed in their chosen paths. Through our dedication to excellence and innovation, we aim to shape confident, well-rounded individuals who can make a positive impact in a rapidly changing world.";
	}
	
	
	
	var picture=['inno-1.png','inno-2.png','inno-3.png'];
	var count=0;
	function slider()
	{
		document.getElementById("img").src='photos/'+picture[count];
	}
	function changeRight()
	{
		if(count==2)
		{
			count=-1;
		}
		document.getElementById("img").src='photos/'+picture[++count];
		
	}
	function changeLeft()
	{
		if(count==0)
		{
			count=3;
		}
		
		if(count==-1)
		{
			count=2;
		}
		document.getElementById("img").src='photos/'+picture[--count];
	}
	
	var control=1;
	var headControl=1;
	
	function changeMessage(){
		++control;
		++headControl;
		if(control==2){
			var y=document.getElementsByClassName("researchPara")[0];
			y.innerText="HallaBol is an innovative chatting website that brings people together from all corners of the globe";
			var x=document.getElementsByClassName("inno-head")[0];
			x.innerText="Halla Bol";
		}
		
		if(control==3){
			var yy=document.getElementsByClassName("researchPara")[0];
			yy.innerText="Bharat is an fighting game developed by a talented team of MCA students";
			var xx=document.getElementsByClassName("inno-head")[0];
			xx.innerText="Battle Of Bharat";
			control=0;
			headControl=1;
		}
		
		if(control==1){
			var yyy=document.getElementsByClassName("researchPara")[0];
			yyy.innerText="A cutting-edge media player created by talented MCA students. With sleek design and intuitive features";
			var xxx=document.getElementsByClassName("inno-head")[0];
			xxx.innerText="Media Player";
		}
	}
	
	var flag1=true,flag2=true,flag3=true;
	
	function showFq1(){
		
		var x=document.getElementById("fq-box1");
		
		if(flag1){
			x.style.display="block";
			flag1=false;
		}else{
			x.style.display="none";
			flag1=true;
		}
	}
	
function showFq2(){
		
		var x=document.getElementById("fq-box2");
		
		if(flag2){
			x.style.display="block";
			flag2=false;
		}else{
			x.style.display="none";
			flag2=true;
		}
	}
	

function showFq3(){
	
	var x=document.getElementById("fq-box3");
	
	if(flag3){
		x.style.display="block";
		flag3=false;
	}else{
		x.style.display="none";
		flag3=true;
	}
}	
	
</script>

</body>
</html>