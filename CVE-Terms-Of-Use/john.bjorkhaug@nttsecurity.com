Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp847964uaa;
        Thu, 6 Apr 2017 13:16:32 -0700 (PDT)
X-Received: by 10.28.91.82 with SMTP id p79mr25286327wmb.130.1491509792169;
        Thu, 06 Apr 2017 13:16:32 -0700 (PDT)
Return-Path: <John-Andre.Bjorkhaug@nttsecurity.com>
Received: from mail1.bemta5.messagelabs.com (mail1.bemta5.messagelabs.com. [195.245.231.152])
        by mx.google.com with ESMTPS id d69si4406894wma.144.2017.04.06.13.16.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of john-andre.bjorkhaug@nttsecurity.com designates 195.245.231.152 as permitted sender) client-ip=195.245.231.152;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@nttsecurity.com;
       spf=pass (google.com: domain of john-andre.bjorkhaug@nttsecurity.com designates 195.245.231.152 as permitted sender) smtp.mailfrom=John-Andre.Bjorkhaug@nttsecurity.com
Return-Path: <John-Andre.Bjorkhaug@nttsecurity.com>
Received: from [85.158.136.67] by server-16.bemta-5.messagelabs.com id 74/88-15270-F12A6E85; Thu, 06 Apr 2017 20:16:31 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA1VSa0hTYRj2Ozs7Ow4XZ5vm27CQGQXTLY3S+he
  sMMooCcwiqrN52lbblJ0ZKxBW/ahZkWZrpZZaS6LLj8Iib0ijq1iaRuuu4RSnRRRdjGZ0zr4u
  9v16vud53+d9XnhpiaqF0tCcx825nKxdS8nJXsO5Bfo5Z0eLs4c7Mpbsv3qFXIZWDk1krUObp
  DanqdSzTWo9ONZElb0p9Ay1t5Be5MuvRHKaZD4REL3TJhE/KqaagHB9QIo/txDsjzUQlSiRpp
  gNUDM5FMfJTCYEJu5RIlYzZnjVeoPEfAk8+tIoxXgheAODSMQkMxeORQNxXsFshtOXInFexSy
  GsUi7rBLRdCKTC3d880QaMTPhW/fl+CgJkwovIjgCMAwEO3olGKdAdPhnPCdiTiC40f2VwkIW
  PAyL/nIBH5ZAT/QjiYU1cG0gIsPCUQRPD/t/W+2ErnCMElOAkM4/uh7XPCYgFOuX4Zo0OHW7T
  oqFu1Kor3ksw+tr4PUTH8I4DcZedUpxbicM3x8l8MpKeHAq8jtFOrztDCI8bC086cytQhm10z
  atndZdO60b8wZ45j9OYZwJzU0TEoz1cPJniJzONyLZRTSf51y7OJc+12By2SxWt4O12fU52Ys
  NDo7nWQtnZ028wVzquIaEC0oQ3k3k9xpDaBZNaFMU6QWRYtUMU2nJbivLW7e6yu0cH0JpNK0F
  xfPG0WKV0sVZOM92m104wz8y0EnaZEWgSZAVfBnr4G0WLHUjPR28OPmBUJHOUienSVVMiR6MW
  GQtd/61+HPM/Wi2Rq1AQihVUhnnctjc/+vjKJVGWrXiveiSZHO6/04aF0IQQoiCFyNiCDf7T9
  J4kXdfekF+zSGz09TsURP5hoUH2EvyYFtLkcabl3pk0UB7Bp3Q8/IeMVC3oqr17tfvmpVK3Sr
  lF26HvEs3tWcv1ddVkd66PPK5rr7X2BF8sGVo/SFjn3pnLGOdP+r7cX71lN24lNQVVV94N0LN
  YA5UbFzrN84c3HMmryGcUGi+PqIleSubo5O4ePYXKAEUpMcDAAA=
X-Env-Sender: John-Andre.Bjorkhaug@nttsecurity.com
X-Msg-Ref: server-3.tower-207.messagelabs.com!1491509787!12696189!1
X-Originating-IP: [207.46.163.47]
X-StarScan-Received:
X-StarScan-Version: 9.4.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 29645 invoked from network); 6 Apr 2017 20:16:29 -0000
Received: from mail-cys01nam02lp0047.outbound.protection.outlook.com (HELO NAM02-CY1-obe.outbound.protection.outlook.com) (207.46.163.47)
  by server-3.tower-207.messagelabs.com with AES256-SHA256 encrypted SMTP; 6 Apr 2017 20:16:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nttsecurity.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=zsByT9hjIWVYNwV8PYVGHIVTcjDhZ0HykcZwi3Vwjug=;
 b=Av4dr1QEXSG4sLazj5Mikr1JBVrpy6tf5F5cqYV9MNQBc6iR4uh8IPKCZdYSLV4nrE/TqS/qjFBt5gOrKXVda6SydAmCOBwEEh2xVRiHuqT6nPkS69L93DCbMWV//jhRgScuO2tbqajv16dtKcNZQOe00vlqZkBF+oKpFGb5tsM=
Received: from BLUPR14MB0244.namprd14.prod.outlook.com (10.162.94.22) by
 BLUPR14MB0241.namprd14.prod.outlook.com (10.162.94.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1005.10; Thu, 6 Apr 2017 20:16:21 +0000
Received: from BLUPR14MB0244.namprd14.prod.outlook.com ([10.162.94.22]) by
 BLUPR14MB0244.namprd14.prod.outlook.com ([10.162.94.22]) with mapi id
 15.01.1005.020; Thu, 6 Apr 2017 20:16:21 +0000
From: =?iso-8859-1?Q?John-Andr=E9_Bj=F8rkhaug?=
	<John-Andre.Bjorkhaug@nttsecurity.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 john.bjorkhaug@nttsecurity.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 john.bjorkhaug@nttsecurity.com
Thread-Index: AQHSrxJ4KUOloyU3NESqeSnaHh3+2qG4xyrl
Date: Thu, 6 Apr 2017 20:16:21 +0000
Message-ID: <BLUPR14MB02449E4F3F5EFA69E52E50E2D40D0@BLUPR14MB0244.namprd14.prod.outlook.com>
References: <20170406201448.4090.39370@shiny-2.local>
In-Reply-To: <20170406201448.4090.39370@shiny-2.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-messagesentrepresentingtype: 1
x-microsoft-exchange-diagnostics: 1;BLUPR14MB0241;7:o8UvyaPXqK2cZByxm4xLVTJIoimzlFHtDHOXebYmS8gUdXbYKYKQoiuzzwfrXk1c1Ki0CioSqAYPHx0UlYlEsLtS/zPjYRo9RrPEjhyXQPMCU+EWYLEuUlHg5lU52NbRyM6ZrT7cp/UeCn3ipOTz9176lK44GNmDtPLboaBVBLd6u/XOIUGoPMQowqEdzwrSrKga4TGqp/V8X1q5Xz3vU7VNFPIbJiVVPbH9OsGpTAdpHMeYUrTRTJBw/pdsslTpo+FhVfQY3adfhjvt7AC+HPaDByjCp7YwqvFipVgzL62qP3cjGdD5IFIwpQqt1N0olsnWoZlwoa7Rk1qmeZrDqA==
x-ms-office365-filtering-correlation-id: 01052db6-5689-461a-9ee8-08d47d29caac
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001)(2017030254075)(201703131423075)(201703031133081)(201702281549075);SRVR:BLUPR14MB0241;
x-microsoft-antispam-prvs: <BLUPR14MB024178FA8BB790DE9C24BAC4D40D0@BLUPR14MB0241.namprd14.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820)(111885846020525)(81439100147899);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(6041248)(201703131423075)(201702281528075)(201703061421075)(20161123562025)(20161123564025)(20161123555025)(20161123560025)(6072148);SRVR:BLUPR14MB0241;BCL:0;PCL:0;RULEID:;SRVR:BLUPR14MB0241;
x-forefront-prvs: 02698DF457
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(39830400002)(39450400003)(39400400002)(39410400002)(13624006)(377454003)(38564003)(34854003)(2950100002)(2351001)(7696004)(33656002)(6916009)(229853002)(122556002)(50986999)(76176999)(54356999)(189998001)(3660700001)(7906003)(74316002)(3280700002)(5180700001)(2906002)(8676002)(2501003)(102836003)(1730700003)(81166006)(5660300001)(8936002)(38730400002)(2900100001)(606005)(110136004)(77096006)(6436002)(86362001)(25786009)(6306002)(54896002)(53546009)(236005)(53936002)(55016002)(99286003)(5640700003)(9686003)(6506006)(221513004)(222073002);DIR:OUT;SFP:1102;SCL:1;SRVR:BLUPR14MB0241;H:BLUPR14MB0244.namprd14.prod.outlook.com;FPR:;SPF:None;MLV:sfv;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_BLUPR14MB02449E4F3F5EFA69E52E50E2D40D0BLUPR14MB0244namp_"
MIME-Version: 1.0
X-OriginatorOrg: nttsecurity.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2017 20:16:21.0631
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 48d74aff-58e1-43a6-a510-a636fd820deb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR14MB0241

--_000_BLUPR14MB02449E4F3F5EFA69E52E50E2D40D0BLUPR14MB0244namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I accept

-John
_____________________________
From: kurt@seifried.org<mailto:kurt@seifried.org>
Sent: Thursday, April 6, 2017 10:15 PM
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for john.bjorkh=
aug@nttsecurity.com<mailto:john.bjorkhaug@nttsecurity.com>
To: John-Andr=E9 Bj=F8rkhaug <john-andre.bjorkhaug@nttsecurity.com<mailto:j=
ohn-andre.bjorkhaug@nttsecurity.com>>


This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Terms o=
f Use acceptance data at https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/tree/master/Terms-Of-Use

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

A copy is available at https://github.com/distributedweaknessfiling/DWF-Dat=
abase/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org<mailto:kurt=
@seifried.org> manually with your question/concerns/etc.




This message contains confidential information and is intended only for the=
 individual(s) addressed in the message. If you are not the named addressee=
, you should not disseminate, distribute, or copy this e-mail. If you are n=
ot the intended recipient, you are notified that disclosing, distributing, =
or copying this e-mail is strictly prohibited.



--_000_BLUPR14MB02449E4F3F5EFA69E52E50E2D40D0BLUPR14MB0244namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!-- This file has been automatically generated. See web/README.md -->
<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div id=3D"compose-container" style=3D"direction: ltr" itemscope=3D"" itemt=
ype=3D"https://schema.org/EmailMessage">
<span itemprop=3D"creator" itemscope=3D"" itemtype=3D"https://schema.org/Or=
ganization"><span itemprop=3D"name" content=3D"Outlook Mobile for iOS"></sp=
an></span>
<div>
<div>I accept</div>
<div><br>
</div>
<div class=3D"acompli_signature">-John</div>
<div class=3D"gmail_quote">_____________________________<br>
From: <a dir=3D"ltr" href=3D"mailto:kurt@seifried.org" x-apple-data-detecto=
rs=3D"true" x-apple-data-detectors-type=3D"link" x-apple-data-detectors-res=
ult=3D"0">
kurt@seifried.org</a><br>
Sent: Thursday, April 6, 2017 10:15 PM<br>
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for <a dir=3D"l=
tr" href=3D"mailto:john.bjorkhaug@nttsecurity.com" x-apple-data-detectors=
=3D"true" x-apple-data-detectors-type=3D"link" x-apple-data-detectors-resul=
t=3D"1">
john.bjorkhaug@nttsecurity.com</a><br>
To: John-Andr=E9 Bj=F8rkhaug &lt;<a dir=3D"ltr" href=3D"mailto:john-andre.b=
jorkhaug@nttsecurity.com" x-apple-data-detectors=3D"true" x-apple-data-dete=
ctors-type=3D"link" x-apple-data-detectors-result=3D"2">john-andre.bjorkhau=
g@nttsecurity.com</a>&gt;<br>
<br>
<br>
This is a confirmation email sent from CVE request form at <a dir=3D"ltr" h=
ref=3D"https://iwantacve.org/" x-apple-data-detectors=3D"true" x-apple-data=
-detectors-type=3D"link" x-apple-data-detectors-result=3D"3">
https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can't use the data u=
ntil you accept the MITRE CVE Terms of Use).
<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at
<a dir=3D"ltr" href=3D"https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/tree/master/Terms-Of-Use" x-apple-data-detectors=3D"true" x-a=
pple-data-detectors-type=3D"link" x-apple-data-detectors-result=3D"4">
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mast=
er/Terms-Of-Use</a><br>
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
A copy is available at <a dir=3D"ltr" href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" x-apple-data-detect=
ors=3D"true" x-apple-data-detectors-type=3D"link" x-apple-data-detectors-re=
sult=3D"5">
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Terms=
OfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a dir=3D"ltr" href=3D"mailto=
:kurt@seifried.org" x-apple-data-detectors=3D"true" x-apple-data-detectors-=
type=3D"link" x-apple-data-detectors-result=3D"6">
kurt@seifried.org</a> manually with your question/concerns/etc. <br>
<br>
<br>
<br>
</div>
</div>
</div>
<div style=3D"font-size:9pt;  font-family: 'Calibri',sans-serif;">
<p style=3D"font-size:8pt; line-height:10pt; font-family: 'Cambria','times =
roman',serif;">
This message contains confidential information and is intended only for the=
 individual(s) addressed in the message. If you are not the named addressee=
, you should not disseminate, distribute, or copy this e-mail. If you are n=
ot the intended recipient, you are
 notified that disclosing, distributing, or copying this e-mail is strictly=
 prohibited.
</p>
<span style=3D"padding-top:10px; font-weight:bold; color:#CC0000; font-size=
:9pt; font-family: 'Calibri',Arial,sans-serif; "></span><br>
<br>
</div>
</body>
</html>

--_000_BLUPR14MB02449E4F3F5EFA69E52E50E2D40D0BLUPR14MB0244namp_--
