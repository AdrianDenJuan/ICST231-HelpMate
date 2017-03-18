/*-------------------PREVENT TYPING INTO NUMBER INPUT-S------------------*/
$("[type='number']").keypress(function (evt) {
    evt.preventDefault();
});

/*---------------------------UPLOAD IMAGE--------------------------------*/
function readURL(input)
{
   if (input.files && input.files[0])
	{
      var reader = new FileReader();

      reader.onload = function (e)
		{
         $('#uplded-img').css('background', 'transparent url('+ e.target.result +') no-repeat');
      };

      reader.readAsDataURL(input.files[0]);
   }
}

/*-------------------IF STUDENT'S CIVIL STATUS IS MARRIED-----------------*/
$(document).click(function(){
	if ($("#mrrd").is(":checked"))
		{$('#marriage').fadeIn('fast');}
	else
		{$('#marriage').fadeOut('fast');}
});

/*----------------IF STUDENT'S CIVIL STATUS IS NOT AN OPTION-------------*/
$(document).click(function(){
	if ($("#civ-other").is(":checked"))
		{$('#specific-civ').fadeIn('fast');}
	else
		{$('#specific-civ').fadeOut('fast');}
});

/*--------------------------IF STUDENT IS EMPLOYED-----------------------*/
$(document).click(function(){
	if ($("#emplyd").is(":checked"))
		{$('#emplyr-info').fadeIn('fast');}
	else
		{$('#emplyr-info').fadeOut('fast');}
});


var plus = "+";
var minus = "-";
/*----------------------------ADD SIBLINGS-------------------------------*/
var sibnum = 2;
function addSib(me)
{
	document.getElementById('newsib').innerHTML += '<div class="row" id="sibnum"><div class="input-group col-3"><button type="button" id="sib-add" value="" onclick="addSib(this.value);">+</button><input type="text" name="sib-nm" id="sib-nm" class="form-control"  aria-describedby="basic-addon1"></div><div class="input-group col-1"><input type="text" name="sib-age" id="sib-age" class="form-control"  aria-describedby="basic-addon1"></div><div class="input-group col-2"><input type="text" name="sib-civstat" id="sib-civstat" class="form-control"  aria-describedby="basic-addon1"></div><div class="input-group col-3"><input type="text" name="sib-yrlvl-occ" id="sib-yrlvl-occ" class="form-control"  aria-describedby="basic-addon1"></div><div class="input-group col-3"><input type="text" name="sib-schl-emplyr" id="sib-schl-emplyr" class="form-control"  aria-describedby="basic-addon1"></div></div>';
	document.getElementById('sibnum').setAttribute("id", "sibnum" + sibnum);
	document.getElementById('sib-add').setAttribute("id", "sib-add" + sibnum);
	document.getElementById('sib-add' + sibnum).setAttribute("value", sibnum);

	document.getElementById('sib-nm').setAttribute("name", "sib-nm" + sibnum);
	document.getElementById('sib-nm').setAttribute("id", "sib-nm" + sibnum);

	document.getElementById('sib-age').setAttribute("name", "sib-age" + sibnum);
	document.getElementById('sib-age').setAttribute("id", "sib-age" + sibnum);

	document.getElementById('sib-civstat').setAttribute("name", "sib-civstat" + sibnum);
	document.getElementById('sib-civstat').setAttribute("id", "sib-civstat" + sibnum);

	document.getElementById('sib-yrlvl-occ').setAttribute("name", "sib-yrlvl-occ" + sibnum);
	document.getElementById('sib-yrlvl-occ').setAttribute("id", "sib-yrlvl-occ" + sibnum);

	document.getElementById('sib-schl-emplyr').setAttribute("name", "sib-schl-emplyr" + sibnum);
	document.getElementById('sib-schl-emplyr').setAttribute("id", "sib-schl-emplyr" + sibnum);

	sibnum += 1;
	document.getElementById('sib-add' + me).innerHTML = minus;
	document.getElementById('sib-add' + me).setAttribute("onclick", "delSib(this.value);");
}

function delSib(me)
{
	var elem = document.getElementById('sibnum' + me);
   elem.parentNode.removeChild(elem);
}

/*----------------------------ADD CHILDREN-------------------------------*/
var childnum = 2;
function addChild(me)
{
	document.getElementById('newchild').innerHTML += '<div class="row col-12" id="childnum"><div class="col-7"><div class="input-group"><button type="button" name="child-add" id="child-add" value="" onclick="addChild(this.value);">+</button><input type="text" name="child-nm" id="child-nm" class="form-control" aria-describedby="basic-addon1"></div></div><div class="col"><div class="input-group"><input type="text" name="child-dob" id="child-dob" class="form-control" aria-describedby="basic-addon1"></div></div></div>';
	document.getElementById('childnum').setAttribute("id", "childnum" + childnum);
	document.getElementById('child-add').setAttribute("id", "child-add" + childnum);
	document.getElementById('child-add' + childnum).setAttribute("value", childnum);

	document.getElementById('child-nm').setAttribute("name", "child-nm" + childnum);
	document.getElementById('child-nm').setAttribute("id", "child-nm" + childnum);

	document.getElementById('child-dob').setAttribute("name", "child-dob" + childnum);
	document.getElementById('child-dob').setAttribute("id", "child-dob" + childnum);
	childnum += 1;

	document.getElementById('child-add' + me).innerHTML = minus;
	document.getElementById('child-add' + me).setAttribute("onclick", "delChild(this.value);");
}

function delChild(me)
{
	var elem = document.getElementById('childnum' + me);
   elem.parentNode.removeChild(elem);
}

/*----------------------------IF PARENTS ARE MARRIED-------------------------------*/
$(document).click(function(){
	if ($("#married").is(":checked"))
		{$('#sub1').fadeIn('fast');}
	else
		{$('#sub1').fadeOut('fast');}
});

/*----------------------------IF PARENTS ARE SEPARATED-------------------------------*/
$(document).click(function(){
	if ($("#separated").is(":checked"))
		{$('#sub2').fadeIn('fast');}
	else
		{$('#sub2').fadeOut('fast');}
});

/*----------------------------IF PARENTS IS SINGLE-------------------------------*/
$(document).click(function(){
	if ($("#single-prnt").is(":checked"))
		{$('#sub3').fadeIn('fast');}
	else
		{$('#sub3').fadeOut('fast');}
});

/*----------------------------IF PARENTS ARE DECEASED-------------------------------*/
$(document).click(function(){
	if ($("#deceased").is(":checked"))
		{$('#sub4').fadeIn('fast');}
	else
		{$('#sub4').fadeOut('fast');}
});

/*----------------------------IF PARENTS ARE OTHER-------------------------------*/
$(document).click(function(){
	if ($("#prnt-civ-other").is(":checked"))
		{$('#specific-prnt-civ').fadeIn('fast');}
	else
		{$('#specific-prnt-civ').fadeOut('fast');}
});

/*----------------------------IF GUARDIAN IS SINGLE-------------------------------*/
$(document).click(function(){
	if ($("#one-prnt").is(":checked"))
		{$('#sngl-guard').fadeIn('fast');}
	else
		{$('#sngl-guard').fadeOut('fast');}
});

/*----------------------------IF GUARDIAN IS A SIBLING-------------------------------*/
$(document).click(function(){
	if ($("#sblngs").is(":checked"))
		{$('#sblng-guard').fadeIn('fast');}
	else
		{$('#sblng-guard').fadeOut('fast');}
});

/*----------------------------IF GUARDIANS ARE OTHER-------------------------------*/
$(document).click(function(){
	if ($("#guard-other").is(":checked"))
		{$('#specific-guard').fadeIn('fast');}
	else
		{$('#specific-guard').fadeOut('fast');}
});

/*----------------------------ADD ILLNESS SINCE BIRTH-------------------------------*/
var illbirthnum = 2;
function addIllBirth(me)
{
	document.getElementById('new-ill-birth').innerHTML += '<div class="row" id="illbirthnum"><div class="col-11"><div class="input-group"><button type="button" id="illbirth-add" value="" onclick="addIllBirth(this.value);">+</button><input type="text" id="illbirth-nm" class="form-control"  aria-describedby="basic-addon1"></div></div></div>';
	document.getElementById('illbirthnum').setAttribute("id", "illbirthnum" + illbirthnum);

	document.getElementById('illbirth-add').setAttribute("id", "illbirth-add" + illbirthnum);
	document.getElementById('illbirth-add' + illbirthnum).setAttribute("value", illbirthnum);

	document.getElementById('illbirth-nm').setAttribute("id", "illbirth-nm" + illbirthnum);
	illbirthnum += 1;

	document.getElementById('illbirth-add' + me).innerHTML = minus;
	document.getElementById('illbirth-add' + me).setAttribute("onclick", "delIllBirth(this.value);");
}

function delIllBirth(me)
{
	var elem = document.getElementById('illbirthnum' + me);
   elem.parentNode.removeChild(elem);
}

/*----------------------------ADD RECENT ILLNESS-------------------------------*/
var illcurrnum = 2;
function addIllCurr(me)
{
	document.getElementById('new-ill-curr').innerHTML += '<div class="row" id="illcurrnum"><div class="col-11"><div class="input-group"><button type="button" id="illcurr-add" value="" onclick="addIllCurr(this.value);">+</button><input type="text" id="illcurr-nm" class="form-control"  aria-describedby="basic-addon1"></div></div></div>';
	document.getElementById('illcurrnum').setAttribute("id", "illcurrnum" + illcurrnum);

	document.getElementById('illcurr-add').setAttribute("id", "illcurr-add" + illcurrnum);
	document.getElementById('illcurr-add' + illcurrnum).setAttribute("value", illcurrnum);

	document.getElementById('illcurr-nm').setAttribute("id", "illcurr-nm" + illcurrnum);
	illcurrnum += 1;

	document.getElementById('illcurr-add' + me).innerHTML = minus;
	document.getElementById('illcurr-add' + me).setAttribute("onclick", "delIllCurr(this.value);");
}

function delIllCurr(me)
{
	var elem = document.getElementById('illcurrnum' + me);
   elem.parentNode.removeChild(elem);
}

/*----------------------------ADD AFFILIATION-------------------------------*/
var afflnum = 2;
function addAffl(me)
{
	document.getElementById('new-affl').innerHTML += '<div class="row" id="afflnum"><div class="input-group col-6"><button type="button" id="affl-add" value="" onclick="addAffl(this.value);">+</button><input type="text" id="affl-nm" class="form-control"  aria-describedby="basic-addon1"></div><div class="input-group col-6"><input type="text" id="affl-post" class="form-control"  aria-describedby="basic-addon1"></div></div>';
	document.getElementById('afflnum').setAttribute("id", "afflnum" + afflnum);

	document.getElementById('affl-add').setAttribute("id", "affl-add" + afflnum);
	document.getElementById('affl-add' + afflnum).setAttribute("value", afflnum);

	document.getElementById('affl-nm').setAttribute("id", "affl-nm" + afflnum);
	document.getElementById('affl-post').setAttribute("id", "affl-post" + afflnum);
	afflnum += 1;

	document.getElementById('affl-add' + me).innerHTML = minus;
	document.getElementById('affl-add' + me).setAttribute("onclick", "delAffl(this.value);");
}

function delAffl(me)
{
	var elem = document.getElementById('afflnum' + me);
   elem.parentNode.removeChild(elem);
}

/*----------------------------ADD SKILL-------------------------------*/
var skillnum = 2;
function addSkill(me)
{
	document.getElementById('newskill').innerHTML += '<div class="input-group" id="skillnum"><button type="button" id="skill-add" value="" onclick="addSkill(this.value);">+</button><input type="text" id="skill-nm" class="form-control"  aria-describedby="basic-addon1"></div>';
	document.getElementById('skillnum').setAttribute("id", "skillnum" + skillnum);
	document.getElementById('skill-add').setAttribute("id", "skill-add" + skillnum);
	document.getElementById('skill-add' + skillnum).setAttribute("value", skillnum);

	document.getElementById('skill-nm').setAttribute("id", "skill-nm" + skillnum);
	afflnum += 1;

	document.getElementById('skill-add' + me).innerHTML = minus;
	document.getElementById('skill-add' + me).setAttribute("onclick", "delSkill(this.value);");
}

function delSkill(me)
{
	var elem = document.getElementById('skillnum' + me);
   elem.parentNode.removeChild(elem);
}

/*----------------------------ADD HOBBY-------------------------------*/
var hobbynum = 2;
function addHobby(me)
{
	document.getElementById('newhobby').innerHTML += '<div class="input-group" id="hobbynum"><button type="button" id="hobby-add" value="" onclick="addHobby(this.value);">+</button><input type="text" id="hobby-nm" class="form-control"  aria-describedby="basic-addon1"></div>';
	document.getElementById('hobbynum').setAttribute("id", "hobbynum" + hobbynum);
	document.getElementById('hobby-add').setAttribute("id", "hobby-add" + hobbynum);
	document.getElementById('hobby-add' + hobbynum).setAttribute("value", hobbynum);

	document.getElementById('hobby-nm').setAttribute("id", "hobby-nm" + hobbynum);
	afflnum += 1;

	document.getElementById('hobby-add' + me).innerHTML = minus;
	document.getElementById('hobby-add' + me).setAttribute("onclick", "delHobby(this.value);");
}

function delHobby(me)
{
	var elem = document.getElementById('hobbynum' + me);
   elem.parentNode.removeChild(elem);
}
