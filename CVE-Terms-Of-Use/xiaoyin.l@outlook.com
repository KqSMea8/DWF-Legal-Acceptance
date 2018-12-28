Delivered-To: kurt@seifried.org
Received: by 10.79.152.203 with SMTP id z72csp1678252ivg;
        Thu, 15 Mar 2018 09:27:56 -0700 (PDT)
X-Google-Smtp-Source: AG47ELv0GQYm92br787c6CE1XG5fq3ifspDx6gysVoiwB8w4gysR8genfSNf6iDs6TylmFxWrAip
X-Received: by 10.99.116.30 with SMTP id p30mr7258146pgc.60.1521131276778;
        Thu, 15 Mar 2018 09:27:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521131276; cv=none;
        d=google.com; s=arc-20160816;
        b=fGbdMfR8xtk1y/kmh2AcCwSsK88/8xM0y7kIWFpkszfa55zEIQ0tjFvAH09vqjRUsN
         ajhSlAJzrgITnBA3kN/Iqxdh2vgUSQh0yDD9F5Ua2xi47LjRujUR3YYkkXV0cutIUTod
         4LJAH6X6HnSVHvjxwKwM/mbAqQuyQ3OpAt8jSLQ2giXdmqHBS0JRgRB2ZCv2Wg3szBAd
         T9Xl8xvsR3vFOtursIQHOwP8TwvDDxTdsYRxTUQcS+vYFvzlnh+rpMDZPL53dDLPpOMb
         TWLH+8MrCQgqoWRTOqY5i61bWl/XXYLwhzYdJVlGnnczRG3UcypxWATQD64JlgsZHgUb
         UzIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:spamdiagnosticmetadata:spamdiagnosticoutput
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=3V03Iq2dy0uJwt7UkFZfkC5dGuB+druTKgUrbkQ24Yc=;
        b=LEimChRlV7hz0whhHxGnElzEEDsaVvqyY7SjB+jjdauB2BSuYcFzyD9muCWZuvhZrr
         M5oYWGDMwn3unr9ARTZgEzv19SBAu4+j47/KMW8f2J7QZHPj07tWOTesO3qQCRseRICj
         jSInCxKXySkKOr7+1WS4rRHuowj6yYVeLbOjwsYtmClWFiSIdKVtTmxoM/Ae0euSzfp2
         JR+by9/ZABKD3zeds9uJkazXcY/EaG7YcYLYOgsP92R4sCdeR2hqwCMVUJZVWoTY1esg
         esSvb5X2MZx65lW3+s+iAfRuRFrTscGA9EqIBV+cXNcZydi/8rnLaYzm+LX0ZR1kpTXE
         Wy6Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b=cjrxu/P7;
       spf=pass (google.com: domain of xiaoyin.l@outlook.com designates 40.92.8.79 as permitted sender) smtp.mailfrom=xiaoyin.l@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
Return-Path: <xiaoyin.l@outlook.com>
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (mail-oln040092008079.outbound.protection.outlook.com. [40.92.8.79])
        by mx.google.com with ESMTPS id a13si3985232pfn.314.2018.03.15.09.27.56
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 09:27:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of xiaoyin.l@outlook.com designates 40.92.8.79 as permitted sender) client-ip=40.92.8.79;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b=cjrxu/P7;
       spf=pass (google.com: domain of xiaoyin.l@outlook.com designates 40.92.8.79 as permitted sender) smtp.mailfrom=xiaoyin.l@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=3V03Iq2dy0uJwt7UkFZfkC5dGuB+druTKgUrbkQ24Yc=;
 b=cjrxu/P7B6z83gBsu3stPSmOKGb8FmUH1ay5q+8pIn5jJOpK4c69ISbGljQNlON/cHDAnqseHGQmM38zBC4WlvckGCFsseWqOK6bhJLRv7VQc8/1pwhOb8DoOS0bkxjM6LORsetuzwYHVPseI9Wx0BuhT0pGiDOSDd3noePrUMn6fCGsmwQ2DZnexhjS6JRYybhdbeuIBoqnoXlp+U3pTKLH8zA2tFgvB1oV82RjeYwsSUixe07VGjjN3/mFMFGVk+dJkKTyMGTr2rxAliJsPSv8nbDns62teb22m+KF0wqAsPY8VQ3QWArHFKmal1M9nZcWLcvaKpGMP7pB7wtldQ==
Received: from BY2NAM03FT037.eop-NAM03.prod.protection.outlook.com
 (10.152.84.54) by BY2NAM03HT116.eop-NAM03.prod.protection.outlook.com
 (10.152.85.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.567.18; Thu, 15 Mar
 2018 16:27:55 +0000
Received: from SN1PR15MB0254.namprd15.prod.outlook.com (10.152.84.57) by
 BY2NAM03FT037.mail.protection.outlook.com (10.152.84.188) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.567.18 via Frontend Transport; Thu, 15 Mar 2018 16:27:55 +0000
Received: from SN1PR15MB0254.namprd15.prod.outlook.com
 ([fe80::b9ee:3f2c:76d2:89fb]) by SN1PR15MB0254.namprd15.prod.outlook.com
 ([fe80::b9ee:3f2c:76d2:89fb%13]) with mapi id 15.20.0548.021; Thu, 15 Mar
 2018 16:27:55 +0000
From: Xiaoyin Liu <xiaoyin.l@outlook.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 xiaoyin.l@outlook.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 xiaoyin.l@outlook.com
Thread-Index: AQHTvHpCddZp9AUjvk+F2n7W8O+Lv6PRe/8O
Date: Thu, 15 Mar 2018 16:27:55 +0000
Message-ID: <SN1PR15MB02543A99EF7687C46E2522F2FFD00@SN1PR15MB0254.namprd15.prod.outlook.com>
References: <20180315162536.57356.68866@slab.local>
In-Reply-To: <20180315162536.57356.68866@slab.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-incomingtopheadermarker: OriginalChecksum:68C957C764C2A18BA260AF34006307465BC89DCC16D5914354755BBB234A01B2;UpperCasedChecksum:0BBF2C9D3C63E67DD1DD93241B1E7633EECA81984079042C7F46EA08FAEC8357;SizeAsReceived:7153;Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [GqrizubC4aLWyM/emCx2xCMSRHBlyHi6Q/ef3Fck0dQU8rzS42gfMHkxlz6pw+go]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;BY2NAM03HT116;6:bSdXWqp9Tg9krhh/VEdWBVcL8+JWhxsgTx7iRUfqGEV2YetfnOcNupTdUQsIJH2VFS+Ist0m7pWBbFKsHvrbVM1UFsZcDwfQgXcM6HQU81JoOXs6qeKa5/j0XcvIzcuB2Z1HwNQP8JbcdzErtgjTsQBxQQ155Q6L45Ea2RIReEYU88mmKKu24QDNOHBaNvF4gRtn1KUGNIh1+aKadVk9F4FkK2jGgM+IvLRvemEyJzKr53Q2fMm+CXEoABUwh7cGc6jvntvv2YOvQ2wnTpyA8HPJxzdYR+q2Hi1RztYhWCP/CJSemaFzeG3w4T0LYJ7XC2tIfBJSc35ACNNW0HHrncoYy77f2LmV22MgPdcQa3k=;5:qSXU4QF2MJZJOUEv4TNseWSzM0y+PF5Kk0N72wTk52Hml6qeHBxodR+Zie+t0ovhWmX3+ryH8nnJB9jxVyM/9wI1ZkIhCpwwUytLCEAxHo0Bs73oIGmQU7vvlEtbF9rr5J474RWEcShoDKfGbGkHPdlr6XxqLsD3kvSr5nTmVMk=;24:jOQcOLnl25QMaOwDRJnaENhaMQtVvHFuW1p+4i7JGLbH3NtWTSWOzemLIW4/cV/BWNc843Pmu03FS03H5Ofdl/6dFwzWEWPbdzi7dtJu3KI=;7:l4sx8ZfELhwcyfSxXQlA1NRWRL6q6B8x8kySZPYuaIAk2BIRRmGTETsvFjjudw4Vchqebjh8p0D6BL6nUvYDX0XLWxAtkEogmQA0TSfHv9/PMpdzKUSCpX3vaFkTbaEM3kPEKMW6eNdIXFaKgelU0n0pcZCa7sEe1n1Zs2HuV0QUFgWHK9qa0trWoc5lr/QTgdlpzLEVmCb1bF4Fj1vVP/7rcpkn9ujAx467Wq452H7Oemvu1SOet9ceUn8Odj8H
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);SRVR:BY2NAM03HT116;
x-ms-traffictypediagnostic: BY2NAM03HT116:
x-ms-office365-filtering-correlation-id: 620c8988-cadf-4293-4395-08d58a91b4d3
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(444000031);SRVR:BY2NAM03HT116;BCL:0;PCL:0;RULEID:;SRVR:BY2NAM03HT116;
x-forefront-prvs: 0612E553B4
x-forefront-antispam-report: SFV:NSPM;SFS:(7070007)(98901004);DIR:OUT;SFP:1901;SCL:1;SRVR:BY2NAM03HT116;H:SN1PR15MB0254.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:;
x-microsoft-antispam-message-info: fauNA6z56JlF9wBzjR3zs1O2i61YfhpE02kRdlIvsNDE8c3RTAdQ+8yzZsmyAlL1GxBnyBHBpQRrqLw1YBpeX9YhOtUiGrP++HiLBH8L+Cj92LTqv3m7ty9CYXwE3EPQkDsQ5qGEUdtRREusJfw2gEjTr7BQvyAFTTG4qhkL+odXY35Ot/16hAM2GIg/rhJy
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_SN1PR15MB02543A99EF7687C46E2522F2FFD00SN1PR15MB0254namp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 620c8988-cadf-4293-4395-08d58a91b4d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2018 16:27:55.0959
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2NAM03HT116

--_000_SN1PR15MB02543A99EF7687C46E2522F2FFD00SN1PR15MB0254namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I accept

From: kurt@seifried.org<mailto:kurt@seifried.org>
Sent: Thursday, March 15, 2018 9:25 AM
To: xiaoyin.l@outlook.com<mailto:xiaoyin.l@outlook.com>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for xiaoyin.l@o=
utlook.com

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


--_000_SN1PR15MB02543A99EF7687C46E2522F2FFD00SN1PR15MB0254namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I accept</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-top:solid #E1E=
1E1 1.0pt;padding:3.0pt 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"border:none;padding:0in"><b>From: </b><a hr=
ef=3D"mailto:kurt@seifried.org">kurt@seifried.org</a><br>
<b>Sent: </b>Thursday, March 15, 2018 9:25 AM<br>
<b>To: </b><a href=3D"mailto:xiaoyin.l@outlook.com">xiaoyin.l@outlook.com</=
a><br>
<b>Subject: </b>DWF/CVE - Acceptance of MITRE Terms of Use for CVE for xiao=
yin.l@outlook.com</p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">This is a confirmatio=
n email sent from CVE request form at
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
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SN1PR15MB02543A99EF7687C46E2522F2FFD00SN1PR15MB0254namp_--
