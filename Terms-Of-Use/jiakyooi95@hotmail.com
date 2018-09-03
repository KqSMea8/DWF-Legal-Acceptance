Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2247020otd;
        Mon, 3 Sep 2018 00:23:17 -0700 (PDT)
X-Google-Smtp-Source: ANB0VdaPOiJ50ol9Yqix5Dwd2yHBiNb7IGKDQtpd/xCe/1IedegrdpN96H4C9dVivxFeikL+bVve
X-Received: by 2002:a1c:8f50:: with SMTP id r77-v6mr4526822wmd.44.1535959397465;
        Mon, 03 Sep 2018 00:23:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1535959397; cv=none;
        d=google.com; s=arc-20160816;
        b=IZiQU/MVZktsjwJcEmmssA3+8w4CJYN6DJpt/djyV7UONcfLR/Ih8c4XepqasLMOWq
         TYfRIcxLW6wBOwtiNmDFirJWm/RTN33Uiib5uRADGQFQ9Sc04j9bLjwQGx1/1zlfnF0a
         JMIgMf27CwW35v1/nZ/hlmMceu2HbFL4ovrHwpY2pPBQ8UBd5NajgiAbpt4Y6zNWpdbL
         9rjNMVW0ZnepIrkPa1YnsP5KNV6FhMIUfKeNZp/Hb9qwbfqhdvyM9/282XY2O/dtGJhZ
         uofceGXiGcmhoOBUepZVAHZEvBP4/OaNAkDfodhpm2YfClL9tKeJvmlHkIq6Q+3CcOsF
         ZVUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:to
         :from:dkim-signature;
        bh=ZtbPFIfvfanBuLGdt9Z9bCE58Nq9RW/nUlhV7OhzdBc=;
        b=qwDX2aALoKR6uUjh3wj9T+sEEHrutIcruEylgkkiDiQlE91o4oZJcMgn+6J1ahrLb6
         bOuy3hHxj2GEBiGLZwyadu5/je/Rx3loJ/7pksQeIEfsjdpId2BFCeTK6AxsxKK1LcMt
         EcCK1zZtTOs65Qk5dh3WsGtDc2fQqLTyQunwg6LWaiOPxB96leneUmb0r2qz2Oo6ltUo
         ssz3QrNNazltOY539y1+uNG2TWF/sp2Srd8nOm7GtvL96iHE6y0DgRbvez0O2f1KI0Gv
         MWhhsNHu7Y48orZ1CN/XxFZVihP+oSpfvR41CWUmJoR9uITbOR6XSFkWuj+/NC9VSC0Y
         OjVQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b="J/ekXR/H";
       spf=pass (google.com: domain of jiakyooi95@hotmail.com designates 40.92.255.109 as permitted sender) smtp.mailfrom=jiakyooi95@hotmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=hotmail.com
Return-Path: <jiakyooi95@hotmail.com>
Received: from APC01-HK2-obe.outbound.protection.outlook.com (mail-oln040092255109.outbound.protection.outlook.com. [40.92.255.109])
        by mx.google.com with ESMTPS id k67-v6si8356720wmk.78.2018.09.03.00.23.15
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 03 Sep 2018 00:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiakyooi95@hotmail.com designates 40.92.255.109 as permitted sender) client-ip=40.92.255.109;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b="J/ekXR/H";
       spf=pass (google.com: domain of jiakyooi95@hotmail.com designates 40.92.255.109 as permitted sender) smtp.mailfrom=jiakyooi95@hotmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=hotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZtbPFIfvfanBuLGdt9Z9bCE58Nq9RW/nUlhV7OhzdBc=;
 b=J/ekXR/HKQYoifxXEZ4YUQwYr22TKOqfwobYFxxkvJntlKOROqYAIjpYrXHRucSRM/kAzufMAiISYz99N90DoER2tmIBOi8MumJg/kzSe5gl4MQ3kzSdn0CnmGYgD8q7jj4fVX6XMk2g0RmLx1md28C735dcwAEgMhoBi6lvHLhsMR5LymkXgIBv7o5iFbG/NwKrJ6O9v2fgwLSmgYlQ2dGAuhE2tlNpFgIVmGTd+Fh0IDtt3/689kwzdSWldX/8f39aCeXtv9QfLtjiGl07TW3lmdmEv5FgHB6ZS672OSnU69gY2+9WvLnQfGH+pO/N0esxMlR/UHob/MJ9SIZbxA==
Received: from SG2APC01FT012.eop-APC01.prod.protection.outlook.com
 (10.152.250.51) by SG2APC01HT061.eop-APC01.prod.protection.outlook.com
 (10.152.251.56) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.1122.11; Mon, 3
 Sep 2018 07:23:12 +0000
Received: from PS1PR03MB3416.apcprd03.prod.outlook.com (10.152.250.54) by
 SG2APC01FT012.mail.protection.outlook.com (10.152.250.184) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.1122.11 via
 Frontend Transport; Mon, 3 Sep 2018 07:23:12 +0000
Received: from PS1PR03MB3416.apcprd03.prod.outlook.com
 ([fe80::e0b2:488d:29a1:6851]) by PS1PR03MB3416.apcprd03.prod.outlook.com
 ([fe80::e0b2:488d:29a1:6851%5]) with mapi id 15.20.1122.009; Mon, 3 Sep 2018
 07:23:12 +0000
From: Jiaky Ooi <jiakyooi95@hotmail.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 jiakyooi95@hotmail.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 jiakyooi95@hotmail.com
Thread-Index: AQHUQyEugruNhoDyOUGCycqTvREHq6TeJ5t1
Date: Mon, 3 Sep 2018 07:23:12 +0000
Message-ID: <PS1PR03MB3416F8D2FD77DC3864AB0E9BDA0C0@PS1PR03MB3416.apcprd03.prod.outlook.com>
References: <20180903005805.6662.80305@shiny-2.local>
In-Reply-To: <20180903005805.6662.80305@shiny-2.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-incomingtopheadermarker: OriginalChecksum:1C11C36FED499E891D3E50962FA5B44AEEE30723CA68778EEDCD47A8D1104115;UpperCasedChecksum:90D59C3D9E2FC39F06CBA4E50F060FCDE94BB4F801473235273EE92BE6078145;SizeAsReceived:7041;Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [xolYQtZ1Szw9fekGFbYs7lEBu9rnA+oX]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1;SG2APC01HT061;6:Adsz2sjex84Vdc/lqdJorpCmCWwjg/t2J0Yd6pGucpC/H0M0y6XrvkggKDEvJyATepK9hXWZTcZNea3UQv4u+0JoP6pVxMauGdt78KLP6URrH8kE1BTqmj/BipJnjXqiCuThDuT59SqsIh0wVooEydRtwhUogS7O1XM5BZA06UgHoqgcasINCYM8SXH3FarAktyRmbh8F24jV4uINt36R9WL1PgzPx9rcmn+x5TDbGE57OVjsdH/FIqYmzzDOn+ZD6m+KbPzvQYIbIDyQ79jmpOuFqvcyv7L8Oqj7JVZWU6Rzqktq9cBms0nb/Tcj9BiOJaHkJHJ33NkozbVz6TdiYqmbT5/FuTykX/yvtgxRxnQ2VaSSVhWQ0YvqIvfpLSZvmv1RNVfP+LJ1SomLAPRpSZW3h3P1Tke8SmhF0G6ah6vhzLgaHpIWOkp35VjdWzprnirhr/KMty69bhtN0zhLw==;5:ob3QVI+T56iE+rI7kATHW5saBOSHDRgge1Nt8sYbSE8z7JJADr6vfKmcpH8/AAMGHLDVPdRGme/zA19j7DABvh6isLGaTsuEdukcARl3rXAZwoKEeTaxhiY9RlHOm04flTf3prNWLJbBfaWD/1OjAUqRbrh9IF7c2amqZoWPpzE=;7:rSAABvOtn5KKh8W1SYeQGzwuj3ybd2+Nd/SECblLp2kZRj0kgQVIGFwKICGSZJ0S/5kQzRKowO+INVnfYKdKyQUG0ykAdzJKGoa5KjcYGsfcNWl4mDVv3Ck8PXsbje1+3iWuWBI1Nxa69W0p9+JZ7yIPBu6D/QBbjvNEXOA8Q8Ypde4DomW6VKTGS09hb9cNLvhZWqqtzhn6ArWHwn1P2v7qYFi2O63qpAvu1BV2SCU7/P8ad4xVU63AucYJ3p84
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);SRVR:SG2APC01HT061;
x-ms-traffictypediagnostic: SG2APC01HT061:
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(4566010)(82015058);SRVR:SG2APC01HT061;BCL:0;PCL:0;RULEID:;SRVR:SG2APC01HT061;
x-forefront-prvs: 0784C803FD
x-forefront-antispam-report: SFV:NSPM;SFS:(7070007)(47550400004)(199004)(38564003)(189003)(28244002)(13624006)(8676002)(56003)(74316002)(5180700001)(97736004)(1015004)(256004)(5250100002)(14444005)(76176011)(606006)(14454004)(7696005)(99286004)(86362001)(6916009)(486006)(575784001)(5660300001)(73972006)(222073003)(2900100001)(68736007)(229853002)(105586002)(11346002)(6346003)(33656002)(20460500001)(19627405001)(26005)(106356001)(104016004)(966005)(81156014)(1730700003)(83332001)(6606003)(476003)(6506007)(2351001)(53546011)(8936002)(102836004)(2501003)(5640700003)(236005)(55016002)(6246003)(6436002)(25786009)(87572001)(6306002)(9686003)(45080400002)(446003)(54896002)(82202002)(15852004)(221513004);DIR:OUT;SFP:1901;SCL:1;SRVR:SG2APC01HT061;H:PS1PR03MB3416.apcprd03.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: hotmail.com does not designate
 permitted sender hosts)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jiakyooi95@hotmail.com; 
x-microsoft-antispam-message-info: Q8zjBQikG7FyjtE+YKumBZPGUG8KKumjQ68THxsbvVZokaZT/HzbYfIZRIEKETmxr6iU+mPHYZ5+nhaVRrkmGGLHHI3xUj5+Rhfuau8ykMFezR8ZkydWHp4x2Ff6Yh68YXHUlMHfSLwpc9afXIAzjmfsdzbNsU8ynOt8vKnT+9cwTBOOWtXQ6YdCgSMSgdpeddTA+RbQrhGXksAKS645yvAFP+fY1aV+o7R3yiMULBQ=
Content-Type: multipart/alternative;
	boundary="_000_PS1PR03MB3416F8D2FD77DC3864AB0E9BDA0C0PS1PR03MB3416apcp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bd86c6e-c7ca-4f66-a36b-08d6116e1b99
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2018 07:23:12.5694
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT061

--_000_PS1PR03MB3416F8D2FD77DC3864AB0E9BDA0C0PS1PR03MB3416apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jiakyooi95@hotmail.c=
om


I accept


________________________________
From: kurt@seifried.org <kurt@seifried.org>
Sent: Monday, September 3, 2018 12:58 AM
To: jiakyooi95@hotmail.com
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jiakyooi95@=
hotmail.com

This is a confirmation email sent from CVE request form at https://nam04.sa=
felinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fiwantacve.org%2F&amp;da=
ta=3D02%7C01%7C%7C02851ae36347420f48ff08d611384f6d%7C84df9e7fe9f640afb435aa=
aaaaaaaaaa%7C1%7C0%7C636715330884310534&amp;sdata=3Dmhlo%2BQnUi9lHgajXF%2F2=
ZovzwXq8wySEOghnq%2FBmjRYA%3D&amp;reserved=3D0 asking you to accept the MIT=
RE CVE Terms of Use (assuming you filled out the CVE form and want one, we =
can't use the data until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at https://nam04.safelinks.protectio=
n.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fdistributedweaknessfiling%2=
FDWF-Legal-Acceptance%2Ftree%2Fmaster%2FTerms-Of-Use&amp;data=3D02%7C01%7C%=
7C02851ae36347420f48ff08d611384f6d%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7=
C0%7C636715330884310534&amp;sdata=3Dztc4%2Fz%2BEMRXbAQ8bCLO7RhFoaXXMcFhjT8s=
4ol7zbeM%3D&amp;reserved=3D0

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

A copy is available at https://nam04.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Fgithub.com%2Fdistributedweaknessfiling%2FDWF-Legal-Accepta=
nce%2Fblob%2Fmaster%2FTerms-Of-Use.md&amp;data=3D02%7C01%7C%7C02851ae363474=
20f48ff08d611384f6d%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C6367153308=
84310534&amp;sdata=3DHkTQhJAQqlNJoG1YCdB0G%2F0mGN88l03%2Fsgneenwo%2Bpo%3D&a=
mp;reserved=3D0

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.


--_000_PS1PR03MB3416F8D2FD77DC3864AB0E9BDA0C0PS1PR03MB3416apcp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"><span>DWF/CVE - Acceptance of MIT=
RE Terms of Use for CVE for jiakyooi95@hotmail.com</span><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>I accept</span></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> kurt@seifried.org &lt=
;kurt@seifried.org&gt;<br>
<b>Sent:</b> Monday, September 3, 2018 12:58 AM<br>
<b>To:</b> jiakyooi95@hotmail.com<br>
<b>Subject:</b> DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jiak=
yooi95@hotmail.com</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">This is a confirmation email sent from CVE request=
 form at
<a href=3D"https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Fiwantacve.org%2F&amp;amp;data=3D02%7C01%7C%7C02851ae36347420f48ff08d611=
384f6d%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C636715330884310534&amp;=
amp;sdata=3Dmhlo%2BQnUi9lHgajXF%2F2ZovzwXq8wySEOghnq%2FBmjRYA%3D&amp;amp;re=
served=3D0" id=3D"LPlnk998208" class=3D"OWAAutoLink" previewremoved=3D"true=
">
https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fiwantac=
ve.org%2F&amp;amp;data=3D02%7C01%7C%7C02851ae36347420f48ff08d611384f6d%7C84=
df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C636715330884310534&amp;amp;sdata=
=3Dmhlo%2BQnUi9lHgajXF%2F2ZovzwXq8wySEOghnq%2FBmjRYA%3D&amp;amp;reserved=3D=
0</a>
 asking you to accept the MITRE CVE Terms of Use (assuming you filled out t=
he CVE form and want one, we can't use the data until you accept the MITRE =
CVE Terms of Use).
<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at
<a href=3D"https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Fgithub.com%2Fdistributedweaknessfiling%2FDWF-Legal-Acceptance%2Ftree%2F=
master%2FTerms-Of-Use&amp;amp;data=3D02%7C01%7C%7C02851ae36347420f48ff08d61=
1384f6d%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C636715330884310534&amp=
;amp;sdata=3Dztc4%2Fz%2BEMRXbAQ8bCLO7RhFoaXXMcFhjT8s4ol7zbeM%3D&amp;amp;res=
erved=3D0" id=3D"LPlnk915752" class=3D"OWAAutoLink" previewremoved=3D"true"=
>
https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.=
com%2Fdistributedweaknessfiling%2FDWF-Legal-Acceptance%2Ftree%2Fmaster%2FTe=
rms-Of-Use&amp;amp;data=3D02%7C01%7C%7C02851ae36347420f48ff08d611384f6d%7C8=
4df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C636715330884310534&amp;amp;sdata=
=3Dztc4%2Fz%2BEMRXbAQ8bCLO7RhFoaXXMcFhjT8s4ol7zbeM%3D&amp;amp;reserved=3D0<=
/a><br>
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
A copy is available at <a href=3D"https://nam04.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fgithub.com%2Fdistributedweaknessfiling%2FDWF-Leg=
al-Acceptance%2Fblob%2Fmaster%2FTerms-Of-Use.md&amp;amp;data=3D02%7C01%7C%7=
C02851ae36347420f48ff08d611384f6d%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C=
0%7C636715330884310534&amp;amp;sdata=3DHkTQhJAQqlNJoG1YCdB0G%2F0mGN88l03%2F=
sgneenwo%2Bpo%3D&amp;amp;reserved=3D0" id=3D"LPlnk634327" class=3D"OWAAutoL=
ink" previewremoved=3D"true">
https://nam04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithub.=
com%2Fdistributedweaknessfiling%2FDWF-Legal-Acceptance%2Fblob%2Fmaster%2FTe=
rms-Of-Use.md&amp;amp;data=3D02%7C01%7C%7C02851ae36347420f48ff08d611384f6d%=
7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C636715330884310534&amp;amp;sda=
ta=3DHkTQhJAQqlNJoG1YCdB0G%2F0mGN88l03%2Fsgneenwo%2Bpo%3D&amp;amp;reserved=
=3D0</a><br>
<br>
To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.
<br>
<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_PS1PR03MB3416F8D2FD77DC3864AB0E9BDA0C0PS1PR03MB3416apcp_--
