Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp227626vkh;
        Wed, 5 Oct 2016 09:44:27 -0700 (PDT)
X-Received: by 10.157.42.202 with SMTP id e68mr6111009otb.233.1475685866977;
        Wed, 05 Oct 2016 09:44:26 -0700 (PDT)
Return-Path: <jfolkins@threathound.com>
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (mail-sn1nam01on0053.outbound.protection.outlook.com. [104.47.32.53])
        by mx.google.com with ESMTPS id 16si10230323otm.38.2016.10.05.09.44.26
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 05 Oct 2016 09:44:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jfolkins@threathound.com designates 104.47.32.53 as permitted sender) client-ip=104.47.32.53;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@10MISSISSIPPILLC088.onmicrosoft.com;
       spf=pass (google.com: domain of jfolkins@threathound.com designates 104.47.32.53 as permitted sender) smtp.mailfrom=jfolkins@threathound.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=10MISSISSIPPILLC088.onmicrosoft.com; s=selector1-threathound-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=PEApNv+Yp4AuT1HPz2jpmihO1YJ5doqrAiWx+LBI3gc=;
 b=ZgMpONJCwrfTb67HDk9eRzbPBUvALWcuIo95cHwRllergpU0CbDGPtEGyiEuP3704f+0wkAPB8jk/QvaYcFaOBXhQgDp6fmdezWMhj1RjTzqiIFzrJBFEb1uFTuYZCzfjS5WdyLnSv5pIAsHTB5CXmCHZo7X2Jza8u9GaL1DpAY=
Received: from CY1PR15MB0858.namprd15.prod.outlook.com (10.169.22.136) by
 CY1PR15MB0857.namprd15.prod.outlook.com (10.169.22.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.639.5; Wed, 5 Oct 2016 16:44:23 +0000
Received: from CY1PR15MB0858.namprd15.prod.outlook.com ([10.169.22.136]) by
 CY1PR15MB0858.namprd15.prod.outlook.com ([10.169.22.136]) with mapi id
 15.01.0639.015; Wed, 5 Oct 2016 16:44:23 +0000
From: Jared Folkins <jfolkins@threathound.com>
To: Kurt Seifried <kurt@seifried.org>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
Thread-Topic: CVE - Acceptance of MITRE Terms of Use for CVE
Thread-Index: AQHSHydXEvAUt084ukW8KSkqnHQs4KCaENuU
Date: Wed, 5 Oct 2016 16:44:23 +0000
Message-ID: <CY1PR15MB08583C3A884078F68C60D898C3C40@CY1PR15MB0858.namprd15.prod.outlook.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jfolkins@threathound.com; 
x-originating-ip: [25.164.65.132]
x-ms-office365-filtering-correlation-id: 15b506e2-2392-4d29-6dcd-08d3ed3edcd7
x-microsoft-exchange-diagnostics: 1;CY1PR15MB0857;6:RISdHXMXsKKsX9W+mTOQoQk0RXC1qb3RrIt4oGsFCSF4nBpesD533H1Semv2XSBhJoH/xxXnurqDD4X5cJD+6CfmxJBoFX+vJEzRORXp2dgRXp8jQxiDcMVqAZ5OtfkSTydkIHtrsKa2e6FaBOEHzMn4Q9pFAxi29dBp3D0moZGfGFSN2XGr/IsdH3L+4pHPZkA8CastveHsg/Capw6Z0O6Ots0lhmOJSXxyL4ThrIytNdJmOUSJ1zwwqdeVx7lJXYHmk10kVqeAQkZJu70JWys6+BAahOnuOrrsvFhM37Bc0e9y+29bkN1uG0hmRtQD;5:V0duDToeiP9LuIslIl31im1tG+DuPmO584THtPC2qNQjlpwSLvKoNRal9g78L99VDjH7ShfXH1ZADe2JEupIZj1OCdWb6Lh9hnig6ICP5N4qWLTftU672QGHUe0L97kJ3eowkVzwuy49fn+ym71Rug==;24:jzRtgwQLG0X/kVDa11z6IGND9lZuSbA0qG0Ql+Cb4tRfLpmCn1Fr5G0CplrLeXJqL2EP4KDUAR276a1L5ZsYof9Vq+Djhgrz67T8icJr0NI=;7:gmx4fuNeurP2yx32IQrPP4+JmyoTlj3Zz3CememsCpdqZltoPAawG5pevQKNY4FGB+orkjvpmUe4XW0+PcX3qq0l6Yh2CzURxeYrZQwFL69a/BJaY+AOWE4/SsZ5zc818uR8nx8sPv29JXHf2j1l0w3aHGiEZf6SwGbj2ZyZ/+STQfzzVuHyFyQU92lA0nL+ABo20LyUJQb2xSO7SQPxHG9H7BHvj81Q+/EdqpeEsU7Se8j8AucoC5KsVdoa+llQWcigS0rRsq2qUTHoZGyHFCi38chhXEDgjQYu2sJ9pYgSuTZSgXedK95yilNID55l
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR15MB0857;
x-microsoft-antispam-prvs: <CY1PR15MB0857533F371175B147E0D29CC3C40@CY1PR15MB0857.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6043046)(6042046);SRVR:CY1PR15MB0857;BCL:0;PCL:0;RULEID:;SRVR:CY1PR15MB0857;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(7916002)(51694002)(28244002)(38564003)(377454003)(189002)(199003)(13624006)(450100001)(16236675004)(33656002)(122556002)(81166006)(81156014)(106116001)(7846002)(8676002)(68736007)(7906003)(87936001)(2906002)(6116002)(66066001)(586003)(74316002)(19627405001)(107886002)(9686002)(102836003)(76576001)(11100500001)(3846002)(10400500002)(189998001)(2950100002)(2900100001)(110136003)(3660700001)(3280700002)(19580405001)(105586002)(7736002)(99286002)(7696004)(19617315012)(97736004)(77096005)(19625215002)(15975445007)(19580395003)(8936002)(5660300001)(101416001)(5002640100001)(6916009)(106356001)(92566002)(86362001)(76176999)(50986999)(54356999);DIR:OUT;SFP:1101;SCL:1;SRVR:CY1PR15MB0857;H:CY1PR15MB0858.namprd15.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;LANG:en;
received-spf: None (protection.outlook.com: threathound.com does not designate
 permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_CY1PR15MB08583C3A884078F68C60D898C3C40CY1PR15MB0858namp_"
MIME-Version: 1.0
X-OriginatorOrg: threathound.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2016 16:44:23.6851
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd6eb525-d04b-46e6-9e9f-04ffc7b3fb3d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR15MB0857

--_000_CY1PR15MB08583C3A884078F68C60D898C3C40CY1PR15MB0858namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

"I accept"


I realize this part of your job probably isn't fun. Just wanted to say than=
ks for your work Kurt.


Laterz,

Jared

________________________________
From: Kurt Seifried <kurt@seifried.org>
Sent: Wednesday, October 5, 2016 4:41:32 PM
To: Kurt Seifried
Subject: CVE - Acceptance of MITRE Terms of Use for CVE


Hi, I need to confirm that you have accepted the MITRE Terms of Use for CVE=
, available at:

https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Terms=
OfUse.md

and quoted below, please reply with "I accept" and I'll be able to process =
your CVE request. Thanks!

Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE(r)), you hereby grant to The MITRE Corporation (MITRE) and =
all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applica=
ble law or agreed to in writing, you provide such materials on an "AS IS" B=
ASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or impli=
ed, including, without limitation, any warranties or conditions of TITLE, N=
ON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE(r)). Any copy you make =
for such purposes is authorized provided that you reproduce MITRE's copyrig=
ht designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE I=
NFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=
F MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

--
Kurt Seifried
kurt@seifried.org<mailto:kurt@seifried.org>

--_000_CY1PR15MB08583C3A884078F68C60D898C3C40CY1PR15MB0858namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>&quot;I accept&quot;</p>
<p><br>
</p>
<p>I realize this part of your job probably isn't fun. Just wanted to say t=
hanks for your work Kurt.</p>
<p><br>
</p>
<p>Laterz,</p>
<p>Jared</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Kurt Seifried &lt;kur=
t@seifried.org&gt;<br>
<b>Sent:</b> Wednesday, October 5, 2016 4:41:32 PM<br>
<b>To:</b> Kurt Seifried<br>
<b>Subject:</b> CVE - Acceptance of MITRE Terms of Use for CVE</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"=
><span class=3D"gmail-m_-323732369566349682gmail-s1">Hi, I need to confirm =
that you have accepted the MITRE&nbsp;<span class=3D"gmail-il">Terms</span>=
&nbsp;of&nbsp;<span class=3D"gmail-il">Use</span>&nbsp;for&nbsp;<span class=
=3D"gmail-il">CVE</span>,
 available at:</span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
><a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/=
master/TermsOfUse.md" target=3D"_blank">https://github.com/<wbr>distributed=
weaknessfiling/DWF-<wbr>Database/blob/master/<wbr>TermsOfUse.md</a><br>
<span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
>and quoted below, please reply with &quot;I accept&quot; and I'll be able =
to process your&nbsp;<span class=3D"gmail-il">CVE</span>&nbsp;request. Than=
ks!<br>
<span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
><span class=3D"gmail-il">Terms</span>&nbsp;of&nbsp;<span class=3D"gmail-il=
">Use</span><br>
<span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
>LICENSE<br>
<span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"=
><span class=3D"gmail-m_-323732369566349682gmail-s1">Submissions: For all m=
aterials you submit to the Common Vulnerabilities and Exposures (<span clas=
s=3D"gmail-il">CVE</span>&reg;), you hereby
 grant to The MITRE Corporation (MITRE) and all&nbsp;<span class=3D"gmail-i=
l">CVE</span>&nbsp;Numbering Authorities (CNAs) a perpetual, worldwide, non=
-exclusive, no-charge, royalty-free, irrevocable copyright license to repro=
duce, prepare derivative works of, publicly
 display, publicly perform, sublicense, and distribute such materials and d=
erivative works. Unless required by applicable law or agreed to in writing,=
 you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTI=
ES OR CONDITIONS OF ANY KIND, either express
 or implied, including, without limitation, any warranties or conditions of=
 TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURP=
OSE.</span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"=
><span class=3D"gmail-m_-323732369566349682gmail-s1"><span class=3D"gmail-i=
l">CVE</span>&nbsp;Usage: MITRE hereby grants you a perpetual, worldwide, n=
on-exclusive, no-charge, royalty-free, irrevocable
 copyright license to reproduce, prepare derivative works of, publicly disp=
lay, publicly perform, sublicense, and distribute Common Vulnerabilities an=
d Exposures (<span class=3D"gmail-il">CVE</span>&reg;). Any copy you make f=
or such purposes is authorized provided
 that you reproduce MITRE's copyright designation and this license in any s=
uch copy.</span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
>DISCLAIMERS<br>
<span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"=
><span class=3D"gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND THE =
INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS=
 IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE&nb=
sp;<span class=3D"gmail-il">USE</span>&nbsp;OF
 THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRAN=
TIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span></p>
<div><br>
</div>
-- <br>
<div class=3D"gmail_signature">Kurt Seifried<br>
<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a=
></div>
</div>
</div>
</body>
</html>

--_000_CY1PR15MB08583C3A884078F68C60D898C3C40CY1PR15MB0858namp_--
