<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KocaeliWebForm.aspx.cs" Inherits="Proje_ödevi_1.KocaeliWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kocaeli Bilet </title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel='stylesheet' href='assets/css/bootstrap.min.css' type='text/css' media='all'/>
<link rel='stylesheet' href='assets/css/animate.min.css' type='text/css' media='all'/>
<link rel='stylesheet' href='style.css' type='text/css' media='all'/>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans%3A300italic%2C400italic%2C700italic%2C300%2C400%2C700%2C800%7CMontserrat%3A300italic%2C400italic%2C700italic%2C300%2C400%2C700%7CDosis%3A400%2C700&#038;ver=4.5' type='text/css' media='all'/>
<link rel='stylesheet' href='icons/elegantline/style.css' type='text/css' media='all'/>
<link rel='stylesheet' href='assets/css/font-awesome.min.css' type='text/css' media='all' />
<link rel='stylesheet' href='assets/css/flexslider.css' type='text/css' media='all'/>
</head>
<body>
	<form runat="server">
		
	
   <div class="page-loader">
	<img src="assets/img/loader.gif" alt="loader">
</div>

<!-- Header
================================================== -->
<header id="header">
<div id="mega-menu" class="header header2 header-sticky primary-menu icons-no default-skin zoomIn align-right">
	<nav class="navbar navbar-default redq">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">
			<img id="logo" src="assets/img/kırp.png" alt="f">
			</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar">
			<a class="mobile-menu-close"><i class="fa fa-close"></i></a>
			<div class="menu-top-menu-container">
				<ul id="menu-top-menu" class="nav navbar-nav nav-list">
					<li><a href="#home">Anasayfa</a></li>
					<li><a href="#about">Hakkımda</a></li>
					<li><a href="#services">Sahneler</a></li>
					<li><a href="#pricing">Fiyat</a></li>
					<li><a href="#blog">Blog</a></li>
					<li><a href="#contact">İletişim</a></li>
					<li style="background: rgba(255, 255, 0, 0.51);"><a target="_blank" href="https://tiyatro.kocaeli.bel.tr/">AİLEMİZ</a></li>
				</ul>
			</div>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
	</nav>
</div>
</header>	

<!-- INTRO
================================================== -->
<section id="home" style="padding:160px 0;background-image: url(http://i.internethaber.com/uploads/content/tiyatrojpgPndABqmN.jpg?v=1522061264); background-position: center; background-repeat: no-repeat;background-size: cover;background-attachment:fixed;">
	<div class="container">
		<div class="textwidget">
			<h1 class="toptitle">YENİ DENEYİMLER İÇİN <br/> BUGÜN PLANINIZ YOKSA SAHNEMİZE GELİN <br/><br/><i class="fa fa-star roundicon"></i>
			</h1>								
			<div class="contactstyle topform">										
				<form method="post" action="contact/topcontact.php" id="topcontactform">
					<div class="form">
						<input type="text" name="name" placeholder="İsim *"/>
						<input type="text" name="email" placeholder="E-mail *"/>
						<input type="text" name="phone" placeholder="Telefon *"/>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Oyun_Adı" DataValueField="Oyun_Adı"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:OyunBilgileriConnectionString %>' SelectCommand="SELECT [Oyun Adı] AS Oyun_Adı, [Tarihi], [Salon Hacmi] AS Salon_Hacmi, [Fiyat] FROM [OyunBilgileri]"></asp:SqlDataSource>

                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Tarihi" DataValueField="Tarihi"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:OyunBilgileriConnectionString %>' SelectCommand="SELECT [Tarihi] FROM [OyunBilgileri]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Fiyat" DataValueField="Fiyat"></asp:DropDownList>

                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:OyunBilgileriConnectionString %>' SelectCommand="SELECT [Fiyat] FROM [OyunBilgileri]"></asp:SqlDataSource>
						<asp:Button ID="Button2" runat="server" Text="Randevu Al" />
                    </div>
				</form>
				<div class="done">
					<div class="alert alert-success">
						<button type="button" class="close" data-dismiss="alert">×</button>
						Your message has been sent. Thank you!
					</div>
				</div>
			</div>								
		</div>
		</div>
</section>

<!-- ABOUT
================================================== -->
<section id="about" class="whitetext" style="        padding: 60px;background-color: #3fb59f;" >
	<div class="container">
		<div class="so-widget-sow-headline">
			<div class="sow-headline">
				<h1 class="whitetext">1957 Den BERİ BURDAYIZ</h1>
			</div>
		</div>
		<br/>
		<div class="w960 text-center">
			<p>
				Tiyatro, bizi bize anlatan ve hayatımıza ayna tutan en önemli sanat dallarından biridir. Her eser, insan temellidir. Hayal dünyamızı, içimizdeki sesi, düşüncelerimizi, duygularımızı, daha da özü içimizdeki bizi yansıtır. Okul gibidir; muhakkak her sahnesinde bir ders verir.
				Bu özelliklerine istinaden Kocaeli Büyükşehir Belediyemiz de kuruluşundan bu yana Şehir Tiyatroları’na büyük önem vermiş, gelişimi noktasında hiçbir fedakârlıktan kaçınmamıştır. Bugün gerek fiziki şartları, gerek oyuncu kadrosu, gerekse evrensel nitelikli oyunlarıyla Şehir Tiyatrolarımız dünya standartlarını yakalamış, uluslararası arenaya çok kez adını yazdırmayı başarmıştır

				Birimler

				Geleneksel türk tiyatrosu

				Amaç: Türkiye’ de ilk kez Geleneksel Türk Tiyatrosu temelli bir tiyatro merkezi oluşturmak. Buraya bu anlayışta icralarını sürdüren kişileri, kurumları ve uzmanları davet etmek; söyleşiler düzenlemek; gösteriler sunmak, eğitimler vermek gibi çalışmaları hayata geçirmek. Çağdaş Türk Tiyatrosu’nun oluşumunda Geleneksel Türk Tiyatrosu’nun öneminin büyük olduğu gerçeğinden hareketle akademisyenlerin de katılımıyla ülke çapında bir hareketlilik sağlamak. Yapılan tüm çalışmaları belgeleyerek kalıcı hale getirmek.
				UNESCO tarafından Dünya Kültür Mirası listesine alınan Türk gölge Oyunu “ Karagöz’ü Geleneksel kukla oyunumuz “ İbiş” VE “İpli Kukla” geleneğimizi, unutulmaya yüz tutan Türk Seyirlik Oyunu, Ortaoyunu, Meddahlık, Mukallitlik vb. geleneklerimizi, akademisyenler ile yetkin ve az sayıda kalan usta ve eğitmenlerden faydalanarak tanıtmak, sevdirmek ve öğretmek.
				Modern eğitim yöntemleri ile uygulamalı olarak yeni bir usta-çırak modeli geliştirilerek
				çocuklara, gençlere ve yetişkinlere olmak üzere her yaştan ve her kesimden insanımıza aktarmaktır.
				Kukla Tiyatrosu Birimi

				*
				Geleneksel Türk ve Dünya Tiyatrolarının en önemli bileşenlerinden olan kukla ve gölge oyunları konusunda araştırmalar yapmak, bu konularda kullanılacak olan materyallerin imalatlarını gerçekleştirmek, imalat ve sunum süreçlerine dair bilgi ve yetiye sahip personeller yetiştirerek projeler üretmek amacıyla kurulmuştur.

				Sosyal Sorumluluk Projeleri Birimi

				Kocaeli Şehir Tiyatroları, bireylerin sanat yolu ile toplumsallaşmaları ve estetik duygularının geliştirilmesi amacıyla başta çocuklar, özürlüler ile diğer risk grupları olmak üzere tüm halkımıza yönelik eğitici ve sosyal etkinlikler gerçekleştirmektedir
			</p>
		<p>
		</p>
		<p>
		</p>
		</div>
							
	</div>
</section>

<!-- TEAM
================================================== -->
<section id="team" class="panel-grid">
	<div class="nopadding">
		<!-- #person1 -->
		<div class="col-md-4" style="background:#141414;">
			<div class="team-boxes">
				<div class="team-thumb overlay-image view-overlay">
					<img src="https://tiyatro.kocaeli.bel.tr/webfiles/userfiles/images/2019/2019_Aral%C4%B1k/2019_12_18/20191218_gununcorbasi6.jpg" alt="" class="img-responsive">
					<div class="clear">
					</div>
					<div class="mask team_quote">
						<div class="port-zoom-link">
							<p>
								Sahnemiz Sizsiz Olmaz....
							</p>
						</div>
					</div>
				</div>
				<div class="team-info">
					<h2>Günün Çorbası</h2>
					<p>
						Mine Özcan
					</p>
				</div>
				<div class="separator">
				</div>
				<div class="team-social">
					<a href="https://twitter.com/kocaelist"><i class="fa fa-twitter"></i></a>
					<a href="https://www.linkedin.com/company/kocaeli-b-y-k-ehir-belediyesi/"><i class="fa fa-linkedin"></i></a>
					<a href="https://tiyatro.kocaeli.bel.tr/"><i class="fa fa-google-plus"></i></a>
					<a href="#"><i class="fa fa-skype"></i></a>
				</div>
			</div>
		</div>
		<!-- #person2 -->
		<div class="col-md-4" style="background:#50dbc8;">
			<div class="team-boxes">
				<div class="team-thumb overlay-image view-overlay">
					<img src="https://te-www-kartalbakisi-com.cdn.vidyome.com/tebilisim/kartalbakisi-com/images/haberler/2016/05/bjk_tv_ye_buyuk_tepki_h14016_7eb6a.jpg" alt="" class="img-responsive">
					<div class="clear">
					</div>
					<div class="mask team_quote">
						<div class="port-zoom-link">
							<p>
								 Tiyatro bize verilen en büyük nimetlerden biridir.
								
																Sergen Yalçın
							</p>
						</div>
					</div>
				</div>
				<div class="team-info">
					<h2>Kara Kartalın Yükselişi</h2>
					<p>
						Yüce Beşiktaş Sahnesi
					</p>
				</div>
				<div class="separator">
				</div>
				<div class="team-social">
					<a href="https://www.linkedin.com/company/kocaeli-b-y-k-ehir-belediyesi/"><i class="fa fa-linkedin"></i></a>
					<a href="https://www.facebook.com/kocaelisehirtiyatrosu/"><i class="fa fa-facebook"></i></a>
					<a href="https://tiyatro.kocaeli.bel.tr/"><i class="fa fa-google-plus"></i></a>
					<a href="#"><i class="fa fa-skype"></i></a>
				</div>
			</div>	
		</div>
		<!-- #person3 -->
		<div class="col-md-4" style="background:#141414;">
			<div class="team-boxes">
				<div class="team-thumb overlay-image view-overlay">
					<img src="https://static.daktilo.com/sites/830/uploads/2020/02/08/23460-0.jpg" alt="" class="img-responsive">
					<div class="clear">
					</div>
					<div class="mask team_quote">
						<div class="port-zoom-link">
							<p>
								Sahnemiz Sizsiz Olmaz....
							</p>
						</div>
					</div>
				</div>
				<div class="team-info">
					<h2>BURUN</h2>
					<p>
						Kadir Ekinci
					</p>
				</div>
				<div class="separator">
				</div>
				<div class="team-social">
					<a href="https://twitter.com/kocaelist"><i class="fa fa-twitter"></i></a>
					<a href="https://www.linkedin.com/company/kocaeli-b-y-k-ehir-belediyesi/"><i class="fa fa-linkedin"></i></a>
					<a href="https://tiyatro.kocaeli.bel.tr/"><i class="fa fa-google-plus"></i></a>
					<a href="#"><i class="fa fa-skype"></i></a>
				</div>
			</div>
		</div>
		<!-- end #3 -->
		<div class="clearfix"></div>
	</div>
</section>

<!-- SERVICES
================================================== -->		
<section id="services" class="services margintop60">
	<div class="container">
		<div class="sow-headline">
			<h1>SAHNELERİMİZ</h1>
			<div class="decoration">
				<div class="decoration-inside">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<h3>SDKM BÜYÜK SAHNE</h3>
				Telefon	0262 311 59 00
				Fax	0262 311 59 15
				E-posta	sehirtiyatrosu@kocaeli.bel.tr
				Adres	Yahya Kaptan - İZMİT / KOCAELİ
				<h3>GÖLCÜK KERVANSARAY SAHNESİ</h3>
				Telefon	0262 422 09 09
				Fax
				E-posta
				Adres	İpekyolu Bulvarı No: 96, Şirinköy Mah. GÖLCÜK / KOCAELİ
				Gölcük Kazıklı Kervansaray Sahnesi 306 seyirci kapasitesi ile değerli kocaeli halkına Salı günleri hizmet vermektedir.
				<h3>SERGEN YALÇIN SAHNESİ</h3>
				Telefon	0262 1903 19 03
				Fax	0262 1903 19 03
				E-posta	sehirtiyatrosu@kocaeli.bel.tr
				Adres	Beşiktaşn - İZMİT / KOCAELİ
			</div>
			<div class="col-md-6">
				<h3>SDKM IŞIK SAHNESİ</h3>
				Telefon	0262 311 59 00
				Fax	0262 311 59 15
				E-posta	sehirtiyatrosu@kocaeli.bel.tr
				Adres	Yahya Kaptan - İZMİT / KOCAELİ
				<h3>SDKM TABİAT SAHNESİ</h3>
				Telefon	0262 311 59 00
				Fax	0262 311 59 15
				E-posta	sehirtiyatrosu@kocaeli.bel.tr
				Adres	Yahya Kaptan - İZMİT / KOCAELİ
				<h3>GEBZE OSMAN HAMDİBEY SAHNESİ</h3>
				Telefon	0262 644 81 96
				Fax
				E-posta
				Adres	Güzeller Mah. Bahar Cad. No:1 GEBZE - KOCAELİ
			</div>
		</div>
	</div>
</section>
	
<!-- COUNTERS
================================================== -->
<section id="counters" class="margintop60 paddingtop100 paddingbottom100" style="background-image:url(https://gezginnerede.com/wp-content/uploads/2017/04/tiyatro.jpg);background-size:cover;background-attachment:fixed;">
	<div class="container">	
		<!-- #1 -->
		<div class="col-md-4">
			<div class="funfacts text-center">
				<div class="icon">
					<span class="sow-icon-elegantline" data-sow-icon=""></span>
				</div>
				<h2 class="counter" style="color: #ffffff">2523</h2>
				<h4>Sahnelenme Sayısı</h4>
			</div>
		</div>	
		<!-- #2 -->
		<div class="col-md-4">
			<div class="funfacts text-center">
				<div class="icon">
					<span class="sow-icon-elegantline" data-sow-icon=""></span>
				</div>
				<h2 class="counter" style="color: #ffffff">117</h2>
				<h4>Ödüller</h4>
			</div>
		</div>	
		<!-- #3 -->
		<div class="col-md-4">
			<div class="funfacts text-center">
				<div class="icon">
					<span class="sow-icon-elegantline" data-sow-icon=""></span>
				</div>
				<h2 class="counter" style="color: #ffffff">17500</h2>
				<h4>Beğenileriniz</h4>
			</div>
		</div>	
		<!-- #end3 -->
	</div>			
</section>

<!-- PRICING
================================================== -->
<section id="pricing" class="margintop60 ow-pt-columns-atom" style="left: 2px; top: 5px">
	<div class="container">
		<div class="sow-headline">
			<h1><b>FİYAT</b></h1>
		</div>
		<br/>			
		<!-- #1 -->
		<div class="col-md-4 ow-pt-column ow-pt-first ow-pt-even">
			<div class="ow-pt-title">
				 YETİŞKİN BİLET
				<div class="ow-pt-subtitle">
					Tek Sefer
				</div>
			</div>
			<div class="ow-pt-details">
				<div class="ow-pt-price">
					$35
				</div>
				<div class="ow-pt-per">
					+18 Yaş
				</div>
			</div>
			<div class="ow-pt-features">
				<div class="ow-pt-feature ow-pt-feature-even">
					<span class="sow-icon-fontawesome" data-sow-icon="&#xf00c;"></span>
					<p>
						 Standart Sahne
					</p>
				</div>
				<div class="ow-pt-feature ow-pt-feature-odd">
					<span class="sow-icon-fontawesome" data-sow-icon="&#xf00c;"></span>
					<p>
						 Tek Sefer Kullanım
					</p>
				</div>
				<div class="ow-pt-feature ow-pt-feature-even">
					<span class="sow-icon-fontawesome" data-sow-icon="&#xf00c;"></span>
					<p>
						 İade hakkı vardır
					</p>
				</div>
			</div>
			<%--<div class="ow-pt-button">
				<a href='https://www.wowthemes.net/themes/expertum/' class="ow-pt-link">Satın Al</a>
			</div>--%>
		</div>
		
		<!-- #2 -->
		<div class="col-md-4 ow-pt-column ow-pt-featured ow-pt-odd">
			<div class="ow-pt-title">
				 YILLIK ABONELİK
				<div class="ow-pt-subtitle">
					365 Gün (Yıllık)
				</div>
			</div>
			<div class="ow-pt-details">
				<div class="ow-pt-price">
					$960
				</div>
				<div class="ow-pt-per">
					Full Sahne
				</div>
			</div>
			<div class="ow-pt-features">
				<div class="ow-pt-feature ow-pt-feature-even">
					<span class="sow-icon-fontawesome" data-sow-icon="&#xf00c;"></span>
					<p>
						 Yıllık Sınırsız
					</p>
				</div>
				<div class="ow-pt-feature ow-pt-feature-odd">
					<span class="sow-icon-fontawesome" data-sow-icon="&#xf00c;"></span>
					<p>
						 Koltuk Seçimi
					</p>
				</div>
				<div class="ow-pt-feature ow-pt-feature-even">
					<span class="sow-icon-fontawesome" data-sow-icon="&#xf00c;"></span>
					<p>
						 İade Hakkı 
					</p>
				</div>
				<div class="ow-pt-feature ow-pt-feature-odd">
					<span class="sow-icon-fontawesome" data-sow-icon="&#xf00c;"></span>
					<p>
						 Ekstra Sahneler Ücretsiz
					</p>
				</div>
			</div>
		<%--	<div class="ow-pt-button">
				<a target="_blank" href='https://www.wowthemes.net/themes/all-themes-package/' class="ow-pt-link">Bize Katılın</a>
			</div>--%>
		</div>
		
		<!-- #3 -->
		<div class="col-md-4 ow-pt-column ow-pt-last ow-pt-even">
		<div class="ow-pt-title">
				ÖĞRENCİ
				<div class="ow-pt-subtitle">
					Tek Sefer
				</div>
			</div>
			<div class="ow-pt-details">
				<div class="ow-pt-price">
					$19,03
				</div>
				<div class="ow-pt-per">
					Standart Sahne
				</div>
			</div>
			<div class="ow-pt-features">
				<div class="ow-pt-feature ow-pt-feature-even">
					<span class="sow-icon-fontawesome" data-sow-icon="&#xf00c;"></span>
					<p>
						 +15
					</p>
				</div>
				<div class="ow-pt-feature ow-pt-feature-odd">
					<span class="sow-icon-fontawesome" data-sow-icon="&#xf00c;"></span>
					<p>
						 Tek Sefer Kullanım 
					</p>
				</div>
				<div class="ow-pt-feature ow-pt-feature-even">
					<span class="sow-icon-fontawesome" data-sow-icon="&#xf00c;"></span>
					<p>
						İade Hakkı varıdr
					</p>
				</div>
			</div>
		<%--	<div class="ow-pt-button">
				<a href='https://www.wowthemes.net/themes/expertum/' class="ow-pt-link">Satın Al</a>
			</div>--%>
		</div>
	</div>
</section>
		

<!-- TESTIMONIAL
================================================== -->
<!-- GEREKSİZ SİL
	<section id="testimonial" class="margintop60 paddingtop100 paddingbottom100" style="background-image:url(https://unsplash.it/1400/600?random=5);background-size:cover;background-attachment:fixed;">
	<div class="container">
		<div class="sow-testimonials">
			<div class="flexslider testimonials-wrapper text-center">
				<ul class="slides">
					<li>
					<div class="sow-round-image-frame" style="background-image: url(https://unsplash.it/120/120?random=6); width:120px; height:120px">
					</div>
					<p>
						Phosfluorescently engage worldwide methodologies with web-enabled technology. Interactively coordinate proactive e-commerce via process-centric "outside the box" thinking. Completely pursue scalable customer service through sustainable potentialities.
					</p>
					<strong class="signature">- Chad Sugg, <a>Monsters Under Your Head</a></strong>
					</li>
					<li>
					<div class="sow-round-image-frame" style="background-image: url(https://unsplash.it/120/120?random=7); width:120px; height:120px">
					</div>
					<p>
						Collaboratively administrate turnkey channels whereas virtual e-tailers. Objectively seize scalable metrics whereas proactive e-services. Seamlessly empower fully researched growth strategies and interoperable internal or "organic" sources.
					</p>
					<strong class="signature">- William W. Purkey, <a></a></strong>
					</li>
				</ul>
			</div>
		</div>
		<br/>
		<div class="text-center whitetext">
			<h1>BECOME OUR NEXT CLIENT</h1>
			<h2 style="margin-top:10px;">Call Us - (088) 347 281</h2>
		</div>
	</div>
</section>
	-->
<!-- BLOG
================================================== -->
<section id="blog" class="margintop60">
	<div class="container">			
		<div class="sow-headline">
			<h1><b>BLOG</b></h1>
		</div>
		<br/>
		<div class="so-widget-sow-post-carousel so-widget-sow-post-carousel-base">
			<ul class="tline-holder">
				<!-- tline ITEM-->
				<li>
				<div class="tline-item-content">
					<a href="#">
					<div class="date-icon fa fa-link">
					</div>
					</a>
					<div class="tline-item-txt">
						<div class="meta">
							 Aralık 22, 2016
						</div>
						<h3><a href="#">Haluk Bilginer</a></h3>
						<p>
							 Oyunculuk yaptığım bunca zaman , geçirdiğim vakit ve edindiğim dostluklar.... Kocaeli Şehir Tiyatroloru olmasa hiç bir şey olmazdı herhalde.
						</p>
					</div>
				</div>
				</li>
				<!-- /tline-->
				<!-- tline ITEM-->
				<li>
				<div class="tline-item-content">
					<a href="#">
					<div class="date-icon fa fa-link">
					</div>
					</a>
					<div class="tline-item-txt">
						<div class="meta">
							 Nisan 23, 2019
						</div>
						<h3><a href="#">Demet Akbağ</a></h3>
						<p>
							 şimdi bu sahneye bakınca geçnlerin ve oyuncuların muhteşem sahne performanslarını görüyorum kapadığımda ise kendi sahnelerimi....
						</p>
					</div>
				</div>
				</li>
				<!-- /tline-->
				<!-- tline ITEM-->
				<li>
				<div class="tline-item-content">
					<a href="#">
					<div class="date-icon fa fa-link">
					</div>
					</a>
					<div class="tline-item-txt">
						<div class="meta">
							 Ocak 03, 2019
						</div>
						<h3><a href="#">Sergen Yalçın</a></h3>
						<p>
							 Onlarca Sahne gördüm ve oyun izledim ama Kocaeli'nin oyunları beni bile heycanlandırdı... 
						</p>
					</div>
				</div>
				</li>
				<!-- /tline-->
				<li class="tline-start">
				<div class="tline-start-content">
					<div class="tline-start-icon">
					</div>
					<a href="#" class="btn btn-inverse wow zoomIn">Daha Fazla</a>
				</div>
				</li>
			</ul>
		</div>
	</div>
</section>
		
<!-- CONTACT
================================================== -->
<section id="contact" class="margintop60 nopadding" style="background:#292929;">
		<div class="col-md-6 whitetext" style="padding: 60px;">
			<div class="textwidget">
				<div class="bookarea">
					 İLETİŞİM<br>
					<span class="bordered">Yahya Kaptan - İZMİT / KOCAELİ </span><br>
					<span class="call">(0262) 311 59 00</span>
				</div>
			</div>
		</div>
		<div class="col-md-6 whitetext" style="padding: 60px; background-color: #50dcc9;">
			
			
			<div class="textwidget">
				<h2 class="box">Say <b>Hello</b></h2>						
				<div class="bottomform">						
					</a>
					 <!--<form method="post" action="https://xdwe718@gmail.com" />
						<div class="form">
							<div class="row">
								<span class="col-md-6"> -->
									<input type="text" name="namebottom" placeholder="Ad *"/>
								</span>
								
								<span class="col-md-6">
									<input type="text" name="emailbottom" placeholder="E-mail *"/>
								</span>
									
							</div>
							<div class="clearfix"></div>
							<textarea name="comment" rows="7" placeholder="Mesaj *"></textarea>
							<!--input type="submit" id="submit2" class="clearfix btn" value="Gönder"/-->
							<a href=mailto:xdwe718@gmail.com target="_blank">
                        <asp:Button ID="Button3" runat="server" Text="Gönder" />

						</div>
					</form>
					<div class="done2">
						<div class="alert alert-success">
							<button type="button" class="close" data-dismiss="alert">×</button>
							Your message has been sent. Thank you!
						</div>
					</div>
				</div>						
			</div>
		</div>
	<div class="clearfix"></div>



</section>
<!-- THE END OF SECTIONS -->	
	
<!-- FOOTER
================================================== -->
<footer id="footer" class="footer2">
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<small>
					&copy; <a href="https://tiyatro.kocaeli.bel.tr/">
							 Kocaeli Şehir Tiyatroları 
							</a>
					</small>
				</div>
				<div class="col-md-6 text-right">
					<div class="footer-menu">
						<ul id="menu-footer-links" class="menu">
							<li><a href="https://www.facebook.com/kocaelisehirtiyatrosu/"><i class="fa fa-facebook"></i> Like us on Facebook</a></li>
							<li><a href="https://twitter.com/kocaelist"><i class="fa fa-twitter"></i> Follow us on Twitter</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
</form>
<!-- SCRIPTS
================================================== -->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/plugins.js"></script>
<script src="contact/topvalidate.js"></script>
<script src="contact/bottomvalidate.js"></script>

</body>
</html>
