Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp10552603otc;
        Thu, 6 Dec 2018 00:34:21 -0800 (PST)
X-Google-Smtp-Source: AFSGD/WFk9lum58Z05kR0xlltPjYGV5vlIsP1bmp2kIjmjJAnQ5cnCVNMcl71N2wE8MZy6LKehxB
X-Received: by 2002:a1c:cbca:: with SMTP id b193mr16845129wmg.64.1544085261515;
        Thu, 06 Dec 2018 00:34:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544085261; cv=none;
        d=google.com; s=arc-20160816;
        b=YiBqHb7IETTB6YTsV496Ev3/Jhxa6ti5VaHwuhQWoFsRLwITk/l/fbmH8s6jf7XNIt
         kH8tur3jXHZB+tEI4PdgfZ6D525f2lelA/s4WEwhM2ys/m63JBChiIcd88fz8ooi3he5
         5wTB+j6sA0OfpxcGFK/eAFFe+hgEZ+A9cs3wQuNXwTNLo50JjeGk0PmEsznyYOWnZNJk
         BZGyXUuhdMhxUpUXHItWqjLxElfKJs7h67XTG8MtMjYw5YaV9STD6d8utPnOmVRbKzlY
         xjgQ8Zm74Pt+6KbrCxS6uiNDif+IBHJhOY6PvTThB5k754nKRiZn0GUjsasKuXk1GbBz
         iJgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:spamdiagnosticmetadata:spamdiagnosticoutput
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:from:dkim-signature;
        bh=rZXxl0rusATGODz3Fvq0TnngAr7c+/3e0U3y43AhWIU=;
        b=hJZ1zBQMZOweCmzmEammmhGb7+Z5OQf6DDPJRASlD/u9SrUAg40pU/0w008DWYb12Z
         3LuBLnsyVQbR+CqT+/Jq5wCMDXOB9cCD8lS1NhIMCYg7vyJJX+wF/4RmFFiSbFmZ5JMr
         MtlmrmcoZv9FW6aQITZ35TOatHwD9tXHj/jZAarctFizUUiCF0uYr4mtqt2NXU6kmAfb
         96htUG8BMs4VQA6qSIPijxC1f0S9UgDuKuFWgpZPWb0MOFvaYEIq5ohIX4h/xuJTL/2P
         l7TPVNCH0CJcfSL0rPu/MoKGksVi7CcHgUioUzcQw0bzuRuCd4O6c6K9R1dj3IHgEVzF
         XMqA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@appcheck.onmicrosoft.com header.s=selector1-appcheckng-com02b header.b=Uz7rCPLb;
       spf=pass (google.com: domain of nickb@appcheck-ng.com designates 40.107.10.126 as permitted sender) smtp.mailfrom=nickb@appcheck-ng.com
Return-Path: <nickb@appcheck-ng.com>
Received: from GBR01-LO2-obe.outbound.protection.outlook.com (mail-eopbgr100126.outbound.protection.outlook.com. [40.107.10.126])
        by mx.google.com with ESMTPS id h204-v6si39388wmh.45.2018.12.06.00.34.21
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Dec 2018 00:34:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nickb@appcheck-ng.com designates 40.107.10.126 as permitted sender) client-ip=40.107.10.126;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@appcheck.onmicrosoft.com header.s=selector1-appcheckng-com02b header.b=Uz7rCPLb;
       spf=pass (google.com: domain of nickb@appcheck-ng.com designates 40.107.10.126 as permitted sender) smtp.mailfrom=nickb@appcheck-ng.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=appcheck.onmicrosoft.com; s=selector1-appcheckng-com02b;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rZXxl0rusATGODz3Fvq0TnngAr7c+/3e0U3y43AhWIU=;
 b=Uz7rCPLbKAWKKx9lyxlo657oFUZ7PYgZBdlp2V/Yd0Pb4B161PJG8ljfYp6dncnST2QfEJ+Vi40tK8zSdUGz1conKYxh6hrbTWpUtAdEWlBXXNsOkIUhPdTfLujEUQhwzFN8gkXzYOAaTJeAmV6P6iDHk92kXwKW1hedA131R5U=
Received: from LO2P265MB0910.GBRP265.PROD.OUTLOOK.COM (20.176.139.12) by
 LO2P265MB0189.GBRP265.PROD.OUTLOOK.COM (10.166.98.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1404.21; Thu, 6 Dec 2018 08:34:20 +0000
Received: from LO2P265MB0910.GBRP265.PROD.OUTLOOK.COM
 ([fe80::a5d1:b471:fa44:fbf]) by LO2P265MB0910.GBRP265.PROD.OUTLOOK.COM
 ([fe80::a5d1:b471:fa44:fbf%3]) with mapi id 15.20.1404.020; Thu, 6 Dec 2018
 08:34:20 +0000
From: Nick Blundell <nickb@appcheck-ng.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 nickb@appcheck-ng.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 nickb@appcheck-ng.com
Thread-Index: AQHUjN5SB0N7eknay0GbrhX46+Z2QqVxYzBh
Date: Thu, 6 Dec 2018 08:34:20 +0000
Message-ID:
 <LO2P265MB0910EC11DFD1F7FB12BD0780FBA90@LO2P265MB0910.GBRP265.PROD.OUTLOOK.COM>
References: <20181205210554.11686.26313@bigbox.local>
In-Reply-To: <20181205210554.11686.26313@bigbox.local>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nickb@appcheck-ng.com; 
x-originating-ip: [80.234.234.54]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics:
 1;LO2P265MB0189;6:4cIFbbSLp79V/8OoyESd5Iav7RxGn0Ti4aarfxmN5qgevcffR8T/cXYVJcanC/uAzeH4W/NB4fcjayECRGGeVo9Rc4MBdbfPrxVC4nUbXTrNjN1ggUnWyHl+HmU3wFR6WuJkDj9Dx+yi2Nsl3FlNtRGgJqTGP90jzn4Ga9klqyfl7hxdSj1Oqvs6sBiu5AFs32IozWqEvWWgC6whCHdFY9Kx+z4MPgR9B/xBT+brToSF8pteVgHzrjzPQmP6UwWYOjq3vK+kpTf6fCd6/UqshNTWJHbn+2dwR7PtjpQIJS+OeSrtoQLVgfniZhqnxU/+d44CRSpQvPfDq9wHx0ZU9VXgSH9z7TooZWdvaPOpBgYVZS6/reHohCtRGpV3q8c6r4SahMEaay8WbNrg/emANnSV4TA9knF+h5t44U/3mZTAr4hN7whnxTK5MKXkGu0+Bxdk5qFBbsRF3OmokSOsoA==;5:2Cf2iEkUdwKg7BL90A8et25PTDtNka0Axe5ZSuyQhh+O1YHu4P4qR4VxmgA88dSoFdX4/Waz0mgDGao9/Qe5Ey0Seqpqq9TVtGLIkBEZIcuHp4n/Wff7nta/cJ6C5oAr0IcfkELIV2Lt5youOhTTnw+0TlDwDwm6Mo9ZtsF7hHI=;7:nyG9+wiXfeWCNBoBvelCekl0OAji3/KeXfeeO6sdX6edDaH628z0kjWaFPSjwR/RbUoQW2RNfW88WRZYG7HL0Fx3MfLw6EInmHANMWPXXUsfPJrT8o9oP2BwVztcVH3dSiLwAtGv6bCJnspuijBlqQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 84411b11-5ba5-4b4b-b428-08d65b559e0f
x-microsoft-antispam:
 BCL:0;PCL:0;RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);SRVR:LO2P265MB0189;
x-ms-traffictypediagnostic: LO2P265MB0189:
x-microsoft-antispam-prvs:
 <LO2P265MB01897A2075DA162EA43011CDFBA90@LO2P265MB0189.GBRP265.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test:
 BCL:0;PCL:0;RULEID:(6040522)(2401047)(5005006)(8121501046)(3002001)(93006095)(93001095)(3231455)(999002)(944501520)(52105112)(10201501046)(148016)(149066)(150057)(6041310)(20161123558120)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(201708071742011)(7699051)(76991095);SRVR:LO2P265MB0189;BCL:0;PCL:0;RULEID:;SRVR:LO2P265MB0189;
x-forefront-prvs: 087894CD3C
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10019020)(39840400004)(396003)(366004)(136003)(376002)(346002)(199004)(189003)(13624006)(38564003)(478600001)(229853002)(966005)(2501003)(74316002)(102836004)(5640700003)(6506007)(53546011)(76176011)(71190400001)(71200400001)(2351001)(606006)(1730700003)(81166006)(81156014)(53936002)(55016002)(5024004)(14444005)(256004)(236005)(106356001)(66574009)(9686003)(105586002)(2906002)(54896002)(8676002)(6306002)(186003)(6606003)(97736004)(6916009)(33656002)(6116002)(3846002)(486006)(7736002)(316002)(14454004)(446003)(26005)(476003)(11346002)(25786009)(6436002)(5660300001)(86362001)(68736007)(8936002)(66066001)(19627405001)(6246003)(7696005)(222073003)(99286004);DIR:OUT;SFP:1102;SCL:1;SRVR:LO2P265MB0189;H:LO2P265MB0910.GBRP265.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: appcheck-ng.com does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info:
 mEKKQPat9meCZJ9jSV+9ixBlq2ZZzVeaer0KgYqvXssBBT/B5Ic5AXpHSNJw5KzKPzH5QK7xZMID1qm8V9P5dKxSwBIn1df7uvXVo/SImZEWNS4kEOXFa0ULSW/QO2TYGRVDKocmpNo9Aba+LvpdIXteGEI9cxhvvIAw9Dt3gyT/wGA4xhV8W9fucAjyvo29eGD9bAWa1Jf3qRbhUN2nmJA3vArTxjabWi9DVuW7k46bDdrjzGESqBMq4xjVlYWGLGA93RVxg1F6z7WfuJbbuX/JO+UWbeVRp+Xa1YBP1qkIqoCIodAHV2+ezcpi+54Oox0biuCdzTrXYacT6Hqlpk3XFqS2V8/Hvi9JHyEJqnU=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_LO2P265MB0910EC11DFD1F7FB12BD0780FBA90LO2P265MB0910GBRP_"
MIME-Version: 1.0
X-OriginatorOrg: appcheck-ng.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84411b11-5ba5-4b4b-b428-08d65b559e0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2018 08:34:20.0743
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87c08eb6-7255-44cd-b440-1a6bd747cb92
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO2P265MB0189

--_000_LO2P265MB0910EC11DFD1F7FB12BD0780FBA90LO2P265MB0910GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I accept


DISCLAIMER:
This e-mail and any attached files are confidential and may also be legally=
 privileged. They are intended solely for the intended addressee. If you ar=
e not the addressee please e-mail it back to the sender and then immediatel=
y, permanently delete it. Do not read, print, re-transmit, store or act in =
reliance on it. This e-mail may be monitored by AppCheck Ltd in accordance =
with current regulations. This footnote also confirms that this e-mail mess=
age has been swept for the presence of computer viruses currently known to =
AppCheck Ltd. However, the recipient is responsible for virus-checking befo=
re opening this message and any attachment. Unless expressly stated to the =
contrary, any views expressed in this message are those of the individual s=
ender and may not necessarily reflect the views of AppCheck Ltd. Registered=
 address Unit 19, Pavilion Business Park, Royds Hall Road, Leeds LS12 6AJ. =
Registered Company No. 06888174. VAT No. 203 6663 27



If you wish to unsubscribe from these emails, please send an email to unsub=
scribe@appcheck-ng.com<mailto:unsubscribe@appcheck-ng.com>


________________________________
From: kurt@seifried.org <kurt@seifried.org>
Sent: 05 December 2018 21:05:54
To: Nick Blundell
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for nickb@appch=
eck-ng.com

This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and a=
ll CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, =
no-charge, royalty-free, irrevocable copyright license to reproduce, prepar=
e derivative works of, publicly display, publicly perform, sublicense, and =
distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BA=
SIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implie=
d, including, without limitation, any warranties or conditions of TITLE, NO=
N-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE??). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyrigh=
t designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE I=
NFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=
F MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.


--_000_LO2P265MB0910EC11DFD1F7FB12BD0780FBA90LO2P265MB0910GBRP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I accept</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"margin-top:0; margin-bottom:0"><span id=3D"ms-rterangepaste-sta=
rt"></span></p>
<p class=3D"x_MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<b><span style=3D"font-size:8pt; color:rgb(153,155,158); background-image:i=
nitial">DISCLAIMER:</span></b><span style=3D"font-size:9pt; color:rgb(31,73=
,125); background-image:initial"><br>
</span><span style=3D"font-size:8.5pt; color:rgb(153,155,158); background-i=
mage:initial">This e-mail and any attached files are confidential and may a=
lso be legally privileged. They are intended solely for the intended&nbsp;a=
ddressee. If you are not the addressee
 please e-mail it back to the sender and then immediately, permanently dele=
te it. Do&nbsp;not read, print, re-transmit, store or act in reliance on it=
. This e-mail may be monitored by AppCheck Ltd in accordance with&nbsp;curr=
ent regulations. This footnote also confirms
 that this e-mail message has been swept for the presence of computer virus=
es&nbsp;currently known to AppCheck Ltd. However, the recipient is responsi=
ble for virus-checking before opening this message and&nbsp;any attachment.=
 Unless expressly stated to the contrary,
 any views expressed in this message are those of the individual sender&nbs=
p;and may not necessarily reflect the views of AppCheck Ltd. Registered add=
ress Unit 19, Pavilion Business Park, Royds Hall Road, Leeds LS12 6AJ. Regi=
stered Company No. 06888174. VAT No.
 203 6663 27</span></p>
<p class=3D"x_MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<span style=3D"font-size:8.5pt; color:rgb(153,155,158); background-image:in=
itial">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<span style=3D"font-size:8.5pt; color:rgb(153,155,158); background-image:in=
itial">If you wish to unsubscribe from these emails, please send an email t=
o&nbsp;<a href=3D"mailto:unsubscribe@appcheck-ng.com" target=3D"_blank" rel=
=3D"noopener noreferrer" id=3D"LPNoLP"><span style=3D"color:rgb(5,99,193)">=
unsubscribe@appcheck-ng.com</span></a></span></p>
<span id=3D"ms-rterangepaste-end"></span><br>
<p></p>
</div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> kurt@seifried.org &lt=
;kurt@seifried.org&gt;<br>
<b>Sent:</b> 05 December 2018 21:05:54<br>
<b>To:</b> Nick Blundell<br>
<b>Subject:</b> DWF/CVE - Acceptance of MITRE Terms of Use for CVE for nick=
b@appcheck-ng.com</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">This is a confirmation email sent from CVE request=
 form at
<a href=3D"https://iwantacve.org/">https://iwantacve.org/</a> asking you to=
 accept the MITRE CVE Terms of Use (assuming you filled out the CVE form an=
d want one, we can't use the data until you accept the MITRE CVE Terms of U=
se).
<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at
<a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptanc=
e/tree/master/Terms-Of-Use">
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mast=
er/Terms-Of-Use</a><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.
<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with &quot;unsubscribe&quot; or &quot;D=
ON'T SEND ME THIS EMAIL EVER AGAIN&quot; and I'll add
 your email address to the block list so we don't spam you with these, plea=
se note that this will prevent you from being able to accept the MITRE CVE =
Terms of Use via the DWF automatically in future (you'll have to manually a=
sk). But again, if you have no idea
 what a CVE is then you can ignore this/ask to be added to the block list w=
ith no problems.
<br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and a=
ll CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, =
no-charge, royalty-free, irrevocable
 copyright license to reproduce, prepare derivative works of, publicly disp=
lay, publicly perform, sublicense, and distribute such materials and deriva=
tive works. Unless required by applicable law or agreed to in writing, you =
provide such materials on an &quot;AS
 IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expre=
ss or implied, including, without limitation, any warranties or conditions =
of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PU=
RPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities
 and Exposures (CVE??). Any copy you make for such purposes is authorized p=
rovided that you reproduce MITRE's copyright designation and this license i=
n any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES,
 DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO =
ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY =
RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTIC=
ULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md">
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mast=
er/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.
<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_LO2P265MB0910EC11DFD1F7FB12BD0780FBA90LO2P265MB0910GBRP_--
