// JavaScript Document

//event: click left menu or footer menu & reset top buttons

function resetButton(){
	document.getElementById('PNR').src='images/pnr_enq_normal.gif';
	document.getElementById('SetAvl').src='images/accmodation_normal.gif';
	document.getElementById('fare').src='images/fare_enq_normal.gif';
	document.getElementById('imgTrainBetweenStations').src='images/train_between_nomal.gif';
}

function resetFareEnc(){
	parent.document.getElementById('fare').src='images/fare_enq_normal.gif';
}

function resetBetweenStations(){
	parent.document.getElementById('imgTrainBetweenStations').src='images/train_between_nomal.gif';
}

function setFareEne(){
	parent.document.getElementById('PNR').src='images/pnr_enq_normal.gif';
	parent.document.getElementById('SetAvl').src='images/accmodation_normal.gif';
	parent.document.getElementById('fare').src='images/fare_enq_blue.gif';
	parent.document.getElementById('imgTrainBetweenStations').src='images/train_between_nomal.gif';
}

function resetButtonParent(){
	parent.document.getElementById('PNR').src='images/pnr_enq_normal.gif';
	parent.document.getElementById('SetAvl').src='images/accmodation_normal.gif';
	parent.document.getElementById('fare').src='images/fare_enq_normal.gif';
	parent.document.getElementById('imgTrainBetweenStations').src='images/train_between_nomal.gif';
}

function setSeaAvailibilityParent(){
	parent.document.getElementById('PNR').src='images/pnr_enq_normal.gif';
	parent.document.getElementById('SetAvl').src='images/accmodation_blue.gif';
	parent.document.getElementById('fare').src='images/fare_enq_normal.gif';
	parent.document.getElementById('imgTrainBetweenStations').src='images/train_between_nomal.gif';
}


function setPNRParent(){
	parent.document.getElementById('PNR').src='images/pnr_enq_blue.gif';
	parent.document.getElementById('SetAvl').src='images/accmodation_normal.gif';
	parent.document.getElementById('fare').src='images/fare_enq_normal.gif';
	parent.document.getElementById('imgTrainBetweenStations').src='images/train_between_nomal.gif';
}

function setBetweenImpStn(){
	parent.document.getElementById('PNR').src='images/pnr_enq_normal.gif';
	parent.document.getElementById('SetAvl').src='images/accmodation_normal.gif';
	parent.document.getElementById('fare').src='images/fare_enq_normal.gif';
	parent.document.getElementById('imgTrainBetweenStations').src='images/train_between_blue.gif';
}

function charMonthToIntMonth()
{
	var monthArrayShort = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
	var val=document.getElementById('lccp_month').value;
	var monthInt=0;
	for(var i=0;i<monthArrayShort.length-1;i++)
	{
		var temp=monthArrayShort[i];
		if(temp==val){
			monthInt=i + 1;		
			break;
		}
	}
	document.getElementById('lccp_chartmonth').value=monthInt;
}