Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp228459vkh;
        Wed, 5 Oct 2016 09:46:20 -0700 (PDT)
X-Received: by 10.28.132.71 with SMTP id g68mr19359768wmd.20.1475685980644;
        Wed, 05 Oct 2016 09:46:20 -0700 (PDT)
Return-Path: <prvs=9086d84b3c=neal@fb.com>
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by mx.google.com with ESMTPS id t194si32882983wmd.56.2016.10.05.09.46.20
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 09:46:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=9086d84b3c=neal@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@fb.com;
       dkim=pass header.i=@fb.onmicrosoft.com;
       spf=pass (google.com: domain of prvs=9086d84b3c=neal@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom=prvs=9086d84b3c=neal@fb.com;
       dmarc=pass (p=NONE dis=NONE) header.from=fb.com
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
	by m0089730.ppops.net (8.16.0.17/8.16.0.17) with SMTP id u95GhQ79016680
	for <kurt@seifried.org>; Wed, 5 Oct 2016 09:46:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fb.com; h=from : to : subject : date
 : message-id : references : in-reply-to : content-type : mime-version;
 s=facebook; bh=X4hti+08G55XpuopCzCnoU1Z4tzV5q44r/qhzp7HwXE=;
 b=h6T4cLt/ZoXK5ZyttVs516GF4fnOdTQaH2LYYadB2iJrU6+JUISkNRNQOB7heYFWdEej
 H2B+8ONQhVkH140vP1Dmr+5yRU2UyUvLvKCrrG3GytglXqSU2aWVQkk6lCmJfCoDCupM
 wwgU7tXGZPBYJmkEBPpqT6DTUEx/t1iqRwo= 
Received: from mail.thefacebook.com ([199.201.64.23])
	by m0089730.ppops.net with ESMTP id 25uy9e3u0s-1
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <kurt@seifried.org>; Wed, 05 Oct 2016 09:46:18 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.15) with Microsoft SMTP Server (TLS)
 id 14.3.294.0; Wed, 5 Oct 2016 09:46:17 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-com; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=vCfrFqaqGBuYoFpSZ/5YEuT28zvbayhcaRhU0Q4SDfM=;
 b=P2tP5L9C2SWsfcLP8yNrh+rmPyoPGPoQBSHkdNkL1Rno72NtyCrU7ZxPc9UvZCo7uDIigz2v8hp0V4y/nSolpqPewYhlUbCv8t2iyKI+QREsO3RUt4yuu283qTK/cGVn9kL8e0OXPwaA3gAl04sLGixUwrWtFyDPPikao+Lzimc=
Received: from BY2PR15MB0216.namprd15.prod.outlook.com (10.163.64.153) by
 BY2PR15MB0216.namprd15.prod.outlook.com (10.163.64.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.639.5; Wed, 5 Oct 2016 16:46:15 +0000
Received: from BY2PR15MB0216.namprd15.prod.outlook.com ([10.163.64.153]) by
 BY2PR15MB0216.namprd15.prod.outlook.com ([10.163.64.153]) with mapi id
 15.01.0639.015; Wed, 5 Oct 2016 16:46:15 +0000
From: Neal Poole <neal@fb.com>
To: Kurt Seifried <kurt@seifried.org>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
Thread-Topic: CVE - Acceptance of MITRE Terms of Use for CVE
Thread-Index: AQHSHydn8wdc6pmyRUi9mDjye4/c26CaImwA
Date: Wed, 5 Oct 2016 16:46:15 +0000
Message-ID: <6064047A-D69A-475C-817A-43A504912A71@fb.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c092:200::1:c7d3]
x-ms-office365-filtering-correlation-id: 1e481e90-75c0-4672-8649-08d3ed3f1f6e
x-microsoft-exchange-diagnostics: 1;BY2PR15MB0216;20:fnpE9DmZn5n8L0lATvVneLKTrnHgYJADpIUMMlLm6gKvy1S5WH1g/offAKRnsJQXC73ErWpwBlJYBz9pFKk431sGVXHafNGHUAxh/DgOTgWccmiPV6I/hmfMym0Qpi1dO1g3UFEX1qe8bnRe6nHd7YGTQR3io+REMxlj93+30oA=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR15MB0216;
x-microsoft-antispam-prvs: <BY2PR15MB021648086CBDC8E5806EB879B7C40@BY2PR15MB0216.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);SRVR:BY2PR15MB0216;BCL:0;PCL:0;RULEID:;SRVR:BY2PR15MB0216;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(7916002)(199003)(189002)(38564003)(377454003)(13624006)(28244002)(76176999)(54356999)(50986999)(101416001)(19617315012)(6116002)(16236675004)(99286002)(106356001)(92566002)(102836003)(33656002)(19625215002)(2900100001)(5002640100001)(106116001)(3660700001)(189998001)(105586002)(2906002)(8936002)(3280700002)(19580405001)(19300405004)(107886002)(97736004)(19580395003)(7906003)(586003)(7736002)(68736007)(7846002)(82746002)(83716003)(36756003)(81156014)(8676002)(81166006)(10400500002)(122556002)(450100001)(5660300001)(6916009)(87936001)(11100500001)(15975445007)(110136003)(2950100002)(86362001)(77096005)(3826002)(104396002);DIR:OUT;SFP:1102;SCL:1;SRVR:BY2PR15MB0216;H:BY2PR15MB0216.namprd15.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;A:1;MX:1;LANG:en;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_6064047AD69A475C817A43A504912A71fbcom_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2016 16:46:15.4170
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR15MB0216
X-OriginatorOrg: fb.com
X-Proofpoint-Spam-Reason: safe
X-FB-Internal: Safe
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,, definitions=2016-10-05_05:,,
 signatures=0

--_000_6064047AD69A475C817A43A504912A71fbcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I accept

From: Kurt Seifried <kurt@seifried.org>
Date: Wednesday, October 5, 2016 at 5:41 PM
To: Kurt Seifried <kurt@seifried.org>
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
 Exposures (CVE=AE), you hereby grant to The MITRE Corporation (MITRE) and =
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
istribute Common Vulnerabilities and Exposures (CVE=AE). Any copy you make =
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

--_000_6064047AD69A475C817A43A504912A71fbcom_
Content-Type: text/html; charset="iso-8859-1"
Content-ID: <822A223153E6D9429831FF13B74096DF@namprd15.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Title" content=3D"">
<meta name=3D"Keywords" content=3D"">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.gmail-m-323732369566349682gmail-p1, li.gmail-m-323732369566349682gmail-p1=
, div.gmail-m-323732369566349682gmail-p1
	{mso-style-name:gmail-m_-323732369566349682gmail-p1;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";}
span.gmail-m-323732369566349682gmail-s1
	{mso-style-name:gmail-m_-323732369566349682gmail-s1;}
span.gmail-il
	{mso-style-name:gmail-il;}
p.gmail-m-323732369566349682gmail-p2, li.gmail-m-323732369566349682gmail-p2=
, div.gmail-m-323732369566349682gmail-p2
	{mso-style-name:gmail-m_-323732369566349682gmail-p2;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:Calibri;
	color:windowtext;}
span.msoIns
	{mso-style-type:export-only;
	mso-style-name:"";
	text-decoration:underline;
	color:teal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:Calibri"=
>I accept<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:Calibri"=
><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-family:Calibri;color:black">F=
rom: </span>
</b><span style=3D"font-family:Calibri;color:black">Kurt Seifried &lt;kurt@=
seifried.org&gt;<br>
<b>Date: </b>Wednesday, October 5, 2016 at 5:41 PM<br>
<b>To: </b>Kurt Seifried &lt;kurt@seifried.org&gt;<br>
<b>Subject: </b>CVE - Acceptance of MITRE Terms of Use for CVE<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"gmail-m-323732369566349682gmail-p1"><span class=3D"gmail-m-3237=
32369566349682gmail-s1"><span style=3D"font-size:9.5pt">Hi, I need to confi=
rm that you have accepted the MITRE&nbsp;</span></span><span class=3D"gmail=
-il"><span style=3D"font-size:9.5pt">Terms</span></span><span class=3D"gmai=
l-m-323732369566349682gmail-s1"><span style=3D"font-size:9.5pt">&nbsp;of&nb=
sp;</span></span><span class=3D"gmail-il"><span style=3D"font-size:9.5pt">U=
se</span></span><span class=3D"gmail-m-323732369566349682gmail-s1"><span st=
yle=3D"font-size:9.5pt">&nbsp;for&nbsp;</span></span><span class=3D"gmail-i=
l"><span style=3D"font-size:9.5pt">CVE</span></span><span class=3D"gmail-m-=
323732369566349682gmail-s1"><span style=3D"font-size:9.5pt">,
 available at:</span></span><span style=3D"font-size:9.5pt"><o:p></o:p></sp=
an></p>
<p class=3D"gmail-m-323732369566349682gmail-p2"><span style=3D"font-size:9.=
5pt"><a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/b=
lob/master/TermsOfUse.md" target=3D"_blank">https://github.com/distributedw=
eaknessfiling/DWF-Database/blob/master/TermsOfUse.md</a><o:p></o:p></span><=
/p>
<p class=3D"gmail-m-323732369566349682gmail-p2"><span style=3D"font-size:9.=
5pt">and quoted below, please reply with &quot;I accept&quot; and I'll be a=
ble to process your&nbsp;<span class=3D"gmail-il">CVE</span>&nbsp;request. =
Thanks!<o:p></o:p></span></p>
<p class=3D"gmail-m-323732369566349682gmail-p2"><span class=3D"gmail-il"><s=
pan style=3D"font-size:9.5pt">Terms</span></span><span style=3D"font-size:9=
.5pt">&nbsp;of&nbsp;<span class=3D"gmail-il">Use</span><o:p></o:p></span></=
p>
<p class=3D"gmail-m-323732369566349682gmail-p2"><span style=3D"font-size:9.=
5pt">LICENSE<o:p></o:p></span></p>
<p class=3D"gmail-m-323732369566349682gmail-p1"><span class=3D"gmail-m-3237=
32369566349682gmail-s1"><span style=3D"font-size:9.5pt">Submissions: For al=
l materials you submit to the Common Vulnerabilities and Exposures (</span>=
</span><span class=3D"gmail-il"><span style=3D"font-size:9.5pt">CVE</span><=
/span><span class=3D"gmail-m-323732369566349682gmail-s1"><span style=3D"fon=
t-size:9.5pt">=AE),
 you hereby grant to The MITRE Corporation (MITRE) and all&nbsp;</span></sp=
an><span class=3D"gmail-il"><span style=3D"font-size:9.5pt">CVE</span></spa=
n><span class=3D"gmail-m-323732369566349682gmail-s1"><span style=3D"font-si=
ze:9.5pt">&nbsp;Numbering Authorities (CNAs) a perpetual,
 worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright l=
icense to reproduce, prepare derivative works of, publicly display, publicl=
y perform, sublicense, and distribute such materials and derivative works. =
Unless required by applicable law
 or agreed to in writing, you provide such materials on an &quot;AS IS&quot=
; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or im=
plied, including, without limitation, any warranties or conditions of TITLE=
, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS
 FOR A PARTICULAR PURPOSE.</span></span><span style=3D"font-size:9.5pt"><o:=
p></o:p></span></p>
<p class=3D"gmail-m-323732369566349682gmail-p1"><span class=3D"gmail-il"><s=
pan style=3D"font-size:9.5pt">CVE</span></span><span class=3D"gmail-m-32373=
2369566349682gmail-s1"><span style=3D"font-size:9.5pt">&nbsp;Usage: MITRE h=
ereby grants you a perpetual, worldwide, non-exclusive,
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (</span></span><span class=
=3D"gmail-il"><span style=3D"font-size:9.5pt">CVE</span></span><span class=
=3D"gmail-m-323732369566349682gmail-s1"><span style=3D"font-size:9.5pt">=AE=
).
 Any copy you make for such purposes is authorized provided that you reprod=
uce MITRE's copyright designation and this license in any such copy.</span>=
</span><span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
<p class=3D"gmail-m-323732369566349682gmail-p2"><span style=3D"font-size:9.=
5pt">DISCLAIMERS<o:p></o:p></span></p>
<p class=3D"gmail-m-323732369566349682gmail-p1"><span class=3D"gmail-m-3237=
32369566349682gmail-s1"><span style=3D"font-size:9.5pt">ALL DOCUMENTS AND T=
HE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot=
;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE&nb=
sp;</span></span><span class=3D"gmail-il"><span style=3D"font-size:9.5pt">U=
SE</span></span><span class=3D"gmail-m-323732369566349682gmail-s1"><span st=
yle=3D"font-size:9.5pt">&nbsp;OF
 THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRAN=
TIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span></span><=
span style=3D"font-size:9.5pt"><o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Kurt Seifried<br>
<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a=
><o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_6064047AD69A475C817A43A504912A71fbcom_--
