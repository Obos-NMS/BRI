<?xml version="1.0" encoding="UTF-8"?>
<WebElementEntity>
   <description></description>
   <name>html_iBBIZ BRIkatalonfont-familymonospacefo_5c5662</name>
   <tag></tag>
   <elementGuidId>e1b69e18-de2f-4629-8a31-b6381b4dde50</elementGuidId>
   <selectorCollection>
      <entry>
         <key>XPATH</key>
         <value>//*/text()[normalize-space(.)='']/parent::*</value>
      </entry>
      <entry>
         <key>CSS</key>
         <value>html</value>
      </entry>
   </selectorCollection>
   <selectorMethod>XPATH</selectorMethod>
   <useRalativeImagePath>true</useRalativeImagePath>
   <webElementProperties>
      <isSelected>false</isSelected>
      <matchCondition>equals</matchCondition>
      <name>tag</name>
      <type>Main</type>
      <value>html</value>
   </webElementProperties>
   <webElementProperties>
      <isSelected>true</isSelected>
      <matchCondition>equals</matchCondition>
      <name>text</name>
      <type>Main</type>
      <value>
	iBBIZ BRI
	
	
	
	
#katalon{font-family:monospace;font-size:13px;background-color:rgba(0,0,0,.7);position:fixed;top:0;left:0;right:0;display:block;z-index:999999999;line-height: normal} #katalon div{padding:0;margin:0;color:#fff;} #katalon kbd{display:inline-block;padding:3px 5px;font:13px Consolas,&quot;Liberation Mono&quot;,Menlo,Courier,monospace;line-height:10px;color:#555;vertical-align:middle;background-color:#fcfcfc;border:1px solid #ccc;border-bottom-color:#bbb;border-radius:3px;box-shadow:inset 0 -1px 0 #bbb;font-weight: bold} div#katalon-spy_elementInfoDiv {color: lightblue; padding: 0px 5px 5px} div#katalon-spy_instructionDiv {padding: 5px 5px 2.5px}

	
		
			
				
			
			
				
			

			
				
					BERANDA (current)TRANSFER
					Transfer Antar BRITransfer Antar BankKliringRTGSKredit MasalInformasi TransferPEMBAYARAN &amp; PEMBELIAN
					PLNTelkomSelulerDO PertaminaBrivaKartu KreditBPJS KesehatanUang ElektronikDO SemenInformasi PembayaranPENGELOLA TAGIHAN
					Aktivasi Billing ManagementINFO REKENING (current)
					
					 
				
					Naomi maker  
					
						Edit Profil
						Logout
					
				
			
		
		

		
		
			
				
					
						Logout
						
							×
						
					
					
						Apakah anda yakin ingin logout?
					
					
						Ya
						Tidak

					
				
			
		
		

		
			
			
		
	
	
    


    


    
		
			
				
			
		
	

	
		
			
				
			
		
	






	var divs = document.getElementsByClassName('div-toggle');

	function toggle(id) {
		for (var i = 0; i &lt; divs.length; i++) {
			var div = divs[i];
			if (div.id == id)
				div.style.display = 'block';
			else
				div.style.display = 'none';
		}
	}


	var htmlY = document.documentElement.offsetHeight; /* html height */
	console.log(htmlY);
	var windowY = window.innerHeight; /* window height*/
	var scrollY = htmlY - windowY; /* scroll height */

	var buttonUp = document.getElementById(&quot;scroll-up&quot;);
	var buttonDown = document.getElementById(&quot;scroll-down&quot;);
	var y = windowY;

	// buttonUp.addEventListener(&quot;click&quot;,function(){
	// 	window.scroll(0, y);
	// 	if(y &lt;= (scrollY)) {
	// 		y -= y; /* go to top */
	// 	}
	// },false);

	// GO TO BOTTOM ---!
	var btnDown = $('#scroll-down');
	$(window).scroll(function() {
		if ($(window).scrollTop() > 300) {
			btnDown.removeClass(&quot;showDown-btn-floating&quot;);
		} else {
			if (htmlY > windowY){
				btnDown.removeClass(&quot;showDown-btn-floating&quot;);
			} else {
				btnDown.addClass(&quot;showDown-btn-floating&quot;);
			}
		}
	});

	buttonDown.addEventListener('click',function(){
		window.scroll(0, y);
		if(y &lt;= (scrollY)) {
			y += windowY; /* go to bottom */
		}
	},false);
	// END GO TO BOTTOM ---!

	// GO TO TOP ---!
	var btnUp = $('#scroll-up');
	$(window).scroll(function() {
		if ($(window).scrollTop() > 300) {
			btnUp.addClass(&quot;showUp-btn-floating&quot;);
		} else {
			btnUp.removeClass(&quot;showUp-btn-floating&quot;);
		}
	});

	btnUp.on('click', function(e) {
		e.preventDefault();
		$('html, body').animate({scrollTop:0}, '300');
	});
	// END GO TO TOP ---!




	// -- hover navbar --!
	const $dropdown = $(&quot;.dropdown&quot;);
	const $dropdownToggle = $(&quot;.dropdown-toggle&quot;);
	const $dropdownMenu = $(&quot;.dropdown-menu&quot;);
	const showClass = &quot;show&quot;;
	
	$(window).on(&quot;load resize&quot;, function() {
	if (this.matchMedia(&quot;(min-width: 768px)&quot;).matches) {
		$dropdown.hover(
		function() {
			const $this = $(this);
			$this.addClass(showClass);
			$this.find($dropdownToggle).attr(&quot;aria-expanded&quot;, &quot;true&quot;);
			$this.find($dropdownMenu).addClass(showClass);
		},
		function() {
			const $this = $(this);
			$this.removeClass(showClass);
			$this.find($dropdownToggle).attr(&quot;aria-expanded&quot;, &quot;false&quot;);
			$this.find($dropdownMenu).removeClass(showClass);
		}
		);
	} else {
		$dropdown.off(&quot;mouseenter mouseleave&quot;);
	}
	});

	// -- add class active --!
	$(&quot;.nav-single&quot;).on(&quot;click&quot;, function(){
		$(&quot;.nav-item&quot;).find(&quot;.active&quot;).removeClass(&quot;active&quot;);
		$(&quot;.dropdown&quot;).find(&quot;.active&quot;).removeClass(&quot;active&quot;);
		$(this).addClass(&quot;active&quot;);
	});

	$(&quot;.dropdown-item-header&quot;).on(&quot;click&quot;, function(){
		$(&quot;.nav-item&quot;).find(&quot;.active&quot;).removeClass(&quot;active&quot;);
		$(&quot;.dropdown&quot;).find(&quot;.active&quot;).removeClass(&quot;active&quot;);
		$(this).addClass(&quot;active&quot;);
		$(this).parent().parent().find(&quot;.dropdown-toggle&quot;).addClass(&quot;active&quot;);
	});

	$(&quot;.dropdown-item-profile&quot;).on(&quot;click&quot;, function(){
		$(&quot;.nav-item&quot;).find(&quot;.active&quot;).removeClass(&quot;active&quot;);
		$(&quot;.dropdown&quot;).find(&quot;.active&quot;).removeClass(&quot;active&quot;);
		$(this).addClass(&quot;active&quot;);
		$(this).parent().parent().find(&quot;.dropdown-toggle&quot;).addClass(&quot;active&quot;);
	});
/html[1]</value>
   </webElementProperties>
   <webElementProperties>
      <isSelected>false</isSelected>
      <matchCondition>equals</matchCondition>
      <name>xpath</name>
      <type>Main</type>
      <value>/html[1]</value>
   </webElementProperties>
   <webElementXpaths>
      <isSelected>true</isSelected>
      <matchCondition>equals</matchCondition>
      <name>xpath:neighbor</name>
      <type>Main</type>
      <value>//*/text()[normalize-space(.)='']/parent::*</value>
   </webElementXpaths>
   <webElementXpaths>
      <isSelected>false</isSelected>
      <matchCondition>equals</matchCondition>
      <name>xpath:position</name>
      <type>Main</type>
      <value>//html</value>
   </webElementXpaths>
</WebElementEntity>
