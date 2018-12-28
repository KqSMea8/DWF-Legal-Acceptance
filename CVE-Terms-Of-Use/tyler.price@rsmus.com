Delivered-To: kurt@seifried.org
Received: by 10.176.65.42 with SMTP id j39csp751933uad;
        Thu, 20 Apr 2017 08:48:30 -0700 (PDT)
X-Received: by 10.200.48.90 with SMTP id g26mr9760096qte.79.1492703309964;
        Thu, 20 Apr 2017 08:48:29 -0700 (PDT)
Return-Path: <Tyler.Price@rsmus.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com. [216.82.243.198])
        by mx.google.com with ESMTPS id q11si6258133qtg.132.2017.04.20.08.48.29
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Apr 2017 08:48:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of tyler.price@rsmus.com designates 216.82.243.198 as permitted sender) client-ip=216.82.243.198;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of tyler.price@rsmus.com designates 216.82.243.198 as permitted sender) smtp.mailfrom=Tyler.Price@rsmus.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rsmus.com
Return-Path: <Tyler.Price@rsmus.com>
Received: from [216.82.242.41] by server-6.bemta-8.messagelabs.com id 2E/A1-02204-D48D8F85; Thu, 20 Apr 2017 15:48:29 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupileJIrShJLcpLzFFi42JxSkpR0PW58SP
  C4Mx6C4vmjWtZHBg9HrzWCWCMYs3MS8qvSGDNeH7lDVtB51LGigd9/5kbGJ/2MXYxcnIICfQw
  SjyeEt/FyAVk72SUODp3GlRiO6PErTdxIDabgI7EnltPmUFsEQFtiemvj7OB2MICURLff09lg
  4hHS/RuOgVVYyTxZ/JKFhCbRUBVYumpp+wgNq+AjcS+z19ZIOYbSzzZOpupi5GDg1PARGLph3
  yQMKOAmMT3U2uYQGxmAXGJW0/mg9kSAgISS/acZ4awRSVePv7HClETL9H2pZEZYrygxMmZT6D
  GK0lcffWabQKj8Cwko2YhaZmFpAUiriOxYPcnNghbW2LZwtfMMPaZA4+ZkMUXMLKvYtQoTi0q
  Sy3SNTHUSyrKTM8oyU3MzNE1NLDQy00tLk5MT81JTCrWS87P3cQIjKN6BgbGHYyvl0UfYpTkY
  FIS5VWb+yNCiC8pP6UyI7E4I76oNCe1+BCjDAeHkgTvkmtAOcGi1PTUirTMHGBEw6QlOHiURH
  gjQdK8xQWJucWZ6RCpU4yKUuK8C0ASAiCJjNI8uDZYErnEKCslzMvIwMAgxFOQWpSbWYIq/4p
  RnINRSZh35nWgKTyZeSVw018BLWYCWnzWD2xxSSJCSqqB0UEkZfnMR3tmXI782rW/L0Dke/SR
  XLfGzu+lzkuz9kfMvuu6dZ1s1BKHByVue0NL/Ex3PQxWZr8cNI3n/Mtbr//8Mpz197nrJamFI
  YG3lQN73r+TU+DdFKrMrnWy92ai1OH6XveHf4Xm5lknZcqvkV+ifyXnV4JhY8XKeQu/hhfu31
  +QMnHWNCWW4oxEQy3mouJEADF1hCodAwAA
X-Env-Sender: Tyler.Price@rsmus.com
X-Msg-Ref: server-10.tower-218.messagelabs.com!1492703306!14976271!4
X-Originating-IP: [66.98.100.32]
X-StarScan-Received:
X-StarScan-Version: 9.4.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22515 invoked from network); 20 Apr 2017 15:48:28 -0000
Received: from unknown (HELO fwddmzces02.rsmus.com) (66.98.100.32)
  by server-10.tower-218.messagelabs.com with RC4-SHA encrypted SMTP; 20 Apr 2017 15:48:28 -0000
Received: from unknown (HELO FWDEXMBX02.mcgladrey.rsm.net) ([10.46.6.132])
  by fwddmzces02.rsmus.com with ESMTP; 20 Apr 2017 10:48:02 -0500
Received: from FWDEXMBX06.mcgladrey.rsm.net (10.46.6.136) by
 FWDEXMBX02.mcgladrey.rsm.net (10.46.6.132) with Microsoft SMTP Server (TLS)
 id 14.3.301.0; Thu, 20 Apr 2017 10:48:00 -0500
Received: from FWDEXMBX08.mcgladrey.rsm.net ([fe80::b852:660:1690:98da]) by
 FWDEXMBX06.mcgladrey.rsm.net ([10.46.0.116]) with mapi id 14.03.0301.000;
 Thu, 20 Apr 2017 10:48:01 -0500
From: "Price, Tyler" <Tyler.Price@rsmus.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 tyler.price@rsmus.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 tyler.price@rsmus.com
Thread-Index: AQHSuezsuO7msD19wkWdgbVa3OIk/KHOZx8h
Date: Thu, 20 Apr 2017 15:48:00 +0000
Message-ID: <3044A23E-AF90-4EB1-994C-BB5F7A191C19@rsmus.com>
References: <20170420154354.58112.490@bigbox.local>
In-Reply-To: <20170420154354.58112.490@bigbox.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: multipart/alternative;
	boundary="_000_3044A23EAF904EB1994CBB5F7A191C19rsmuscom_"
MIME-Version: 1.0

--_000_3044A23EAF904EB1994CBB5F7A191C19rsmuscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

"I accept"

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

Tyler Price CEH, CPT
Associate, Security and Privacy
RSM US LLP
1861 International Drive, 400, McLean, VA, 22102
C: 301.335.4201<tel:301.335.4201> I E: tyler.price@rsmus.com<mailto:tyler.p=
rice@rsmus.com> I W: www.rsmus.com<http://www.rsmus.com/>
[file:///Users/andrewweidenhamer/Library/Containers/it.bloop.airmail2/Data/=
Library/Application Support/Airmail/andrew.weidenhamer@rsmus.com_1/Attachme=
ntsNg/3E1C51A66B8F2944BE460E8A14E5E9307E5A52A8@FWDEXMBX02.mcgladrey.rsm.net=
/image010.jpg@01D1603B.783744C0/]

On Apr 20, 2017, at 11:43 AM, "kurt@seifried.org<mailto:kurt@seifried.org>"=
 <kurt@seifried.org<mailto:kurt@seifried.org>> wrote:

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



NOTICE: This e-mail is only intended for the person(s) to whom it is addres=
sed and may contain confidential information. Unless stated to the contrary=
, any opinions or comments are personal to the writer and do not represent =
the official view of RSM US LLP or any of its affiliates (RSM US). If you h=
ave received this e-mail in error, please notify us immediately by reply e-=
mail and then delete this message from your system. Please do not copy it o=
r use it for any purposes, or disclose its contents to any other person. Th=
ank you for your cooperation.

Any advice or information in the body of this email is subject to, and limi=
ted by, the terms in the applicable engagement letter or statement of work,=
 including provisions regarding tax advice. RSM US is not responsible for, =
and no person should rely upon, any advice or information in the body of th=
is email unless such advice or information relates to services contemplated=
 by an engagement letter or statement of work in effect between such person=
 and RSM US.

--_000_3044A23EAF904EB1994CBB5F7A191C19rsmuscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body dir=3D"auto">
<div>&quot;I accept&quot;</div>
<div id=3D"AppleMailSignature"><br>
</div>
<div id=3D"AppleMailSignature"><span style=3D"background-color: rgba(255, 2=
55, 255, 0);">This is a confirmation email sent from CVE request form at&nb=
sp;<a href=3D"https://iwantacve.org/" dir=3D"ltr" x-apple-data-detectors=3D=
"true" x-apple-data-detectors-type=3D"link" x-apple-data-detectors-result=
=3D"0">https://iwantacve.org/</a>&nbsp;asking
 you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE =
form and want one, we can't use the data until you accept the MITRE CVE Ter=
ms of Use).&nbsp;<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at&nbsp;<a href=3D"https://github.com/distr=
ibutedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" dir=3D"=
ltr" x-apple-data-detectors=3D"true" x-apple-data-detectors-type=3D"link" x=
-apple-data-detectors-result=3D"1">https://github.com/distributedweaknessfi=
ling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br>
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
ith no problems.&nbsp;<br>
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
A copy is available at&nbsp;<a href=3D"https://github.com/distributedweakne=
ssfiling/DWF-Database/blob/master/TermsOfUse.md" dir=3D"ltr" x-apple-data-d=
etectors=3D"true" x-apple-data-detectors-type=3D"link" x-apple-data-detecto=
rs-result=3D"2">https://github.com/distributedweaknessfiling/DWF-Database/b=
lob/master/TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email&nbsp;<a href=3D"mailto:kurt@s=
eifried.org" dir=3D"ltr" x-apple-data-detectors=3D"true" x-apple-data-detec=
tors-type=3D"link" x-apple-data-detectors-result=3D"3">kurt@seifried.org</a=
>&nbsp;manually with your question/concerns/etc.&nbsp;</span><br>
<br>
<div class=3D"" style=3D"-webkit-text-size-adjust: auto; font-family: Calib=
ri, sans-serif; font-size: 11pt; margin: 0in 0in 0.0001pt;">
<b class=3D"" style=3D"font-size: 11pt;"><span class=3D"" style=3D"font-siz=
e: 10pt; font-family: Arial, sans-serif; color: rgb(0, 150, 215);">Tyler Pr=
ice CEH, CPT</span></b></div>
<div class=3D"" style=3D"-webkit-text-size-adjust: auto; font-family: Calib=
ri, sans-serif; font-size: 11pt; margin: 0in 0in 0.0001pt;">
<span class=3D"" style=3D"font-size: 10pt; font-family: Arial, sans-serif; =
color: rgb(74, 170, 66);">Associate, Security and Privacy</span></div>
<div class=3D"" style=3D"-webkit-text-size-adjust: auto; font-family: Calib=
ri, sans-serif; font-size: 11pt; margin: 0in 0in 0.0001pt;">
<b class=3D"" style=3D"font-size: 11pt;"><span class=3D"" style=3D"font-siz=
e: 10pt; font-family: Arial, sans-serif;">RSM US LLP</span></b></div>
<p class=3D"MsoNormal" style=3D"-webkit-text-size-adjust: auto; font-family=
: Calibri, sans-serif; font-size: 11pt; margin: 0in 0in 6pt;">
<span class=3D"" style=3D"font-size: 10pt; font-family: Arial, sans-serif; =
color: rgb(31, 73, 125);">1861 International Drive, 400, McLean, VA, 22102<=
/span><span class=3D"" style=3D"font-size: 10pt; font-family: Arial, sans-s=
erif;"><br class=3D"">
<b class=3D""><span class=3D"" style=3D"color: rgb(0, 150, 215);">C:&nbsp;<=
a dir=3D"ltr" href=3D"tel:301.335.4201" x-apple-data-detectors=3D"true" x-a=
pple-data-detectors-type=3D"telephone" x-apple-data-detectors-result=3D"2">=
301.335.4201</a></span></b>&nbsp;I&nbsp;<b class=3D""><span class=3D"" styl=
e=3D"color: rgb(0, 150, 215);">E:&nbsp;</span></b></span><span class=3D"" s=
tyle=3D"font-size: 10pt; font-family: Arial, sans-serif; color: rgb(0, 150,=
 215);"><a href=3D"mailto:tyler.price@rsmus.com" class=3D"" style=3D"color:=
 rgb(149, 79, 114);"><span class=3D"" style=3D"color: blue;">tyler.price@rs=
mus.com</span></a></span>&nbsp;<span class=3D"" style=3D"font-size: 10pt; f=
ont-family: Arial, sans-serif;">I&nbsp;<span class=3D"" style=3D"color: rgb=
(0, 150, 215);"><b class=3D"">W</b></span>:&nbsp;<a href=3D"http://www.rsmu=
s.com/" class=3D"" style=3D"color: rgb(149, 79, 114);"><span class=3D"" sty=
le=3D"color: blue;">www.rsmus.com</span></a></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; =
font-family: Calibri, sans-serif; -webkit-text-size-adjust: auto;">
<img border=3D"0" id=3D"Picture_x0020_5" src=3D"cid:image005.jpg@01D194CC.6=
C5F7710" alt=3D"file:///Users/andrewweidenhamer/Library/Containers/it.bloop=
.airmail2/Data/Library/Application Support/Airmail/andrew.weidenhamer@rsmus=
.com_1/AttachmentsNg/3E1C51A66B8F2944BE460E8A14E5E9307E5A52A8@FWDEXMBX02.mc=
gladrey.rsm.net/image010.jpg@01D1603B.783744C0/" style=3D"font-family: '.SF=
UIDisplay-Regular'; font-size: 13pt; right: 0px; width: 375px; position: ab=
solute; left: 0px;"></p>
<div style=3D"font-family: Calibri, sans-serif; font-size: 14px; -webkit-te=
xt-size-adjust: auto;">
<p></p>
</div>
</div>
<div><br>
On Apr 20, 2017, at 11:43 AM, &quot;<a href=3D"mailto:kurt@seifried.org">ku=
rt@seifried.org</a>&quot; &lt;<a href=3D"mailto:kurt@seifried.org">kurt@sei=
fried.org</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div><span>This is a confirmation email sent from CVE request form at <span=
><a href=3D"https://iwantacve.org/">https://iwantacve.org/</a></span> askin=
g you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE=
 form and want one, we can't use the
 data until you accept the MITRE CVE Terms of Use). </span><br>
<span></span><br>
<span>Simply quote the email and reply with &quot;I accept&quot; at the top=
 if you agree to the MITRE CVE Terms of Use and we will add it to the DWF M=
ITRE CVE Terms of Use acceptance data at
<span><a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acc=
eptance/tree/master/Terms-Of-Use">https://github.com/distributedweaknessfil=
ing/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a></span></span><br>
<span></span><br>
<span>If you did not submit a CVE request to the DWF you can safely ignore =
this message, however we may resend it at some point in the future, if you =
don't want any future emails simply reply with &quot;unsubscribe&quot; or &=
quot;DON'T SEND ME THIS EMAIL EVER AGAIN&quot; and I'll
 add your email address to the block list so we don't spam you with these, =
please note that this will prevent you from being able to accept the MITRE =
CVE Terms of Use via the DWF automatically in future (you'll have to manual=
ly ask). But again, if you have
 no idea what a CVE is then you can ignore this/ask to be added to the bloc=
k list with no problems.
</span><br>
<span></span><br>
<span>MITRE CVE Terms of Use</span><br>
<span></span><br>
<span>LICENSE</span><br>
<span></span><br>
<span>Submissions: For all materials you submit to the Common Vulnerabiliti=
es and Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE)=
 and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclu=
sive, no-charge, royalty-free, irrevocable
 copyright license to reproduce, prepare derivative works of, publicly disp=
lay, publicly perform, sublicense, and distribute such materials and deriva=
tive works. Unless required by applicable law or agreed to in writing, you =
provide such materials on an &quot;AS
 IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expre=
ss or implied, including, without limitation, any warranties or conditions =
of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PU=
RPOSE.</span><br>
<span></span><br>
<span>CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclus=
ive, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicense,=
 and distribute Common Vulnerabilities
 and Exposures (CVE??). Any copy you make for such purposes is authorized p=
rovided that you reproduce MITRE's copyright designation and this license i=
n any such copy.</span><br>
<span></span><br>
<span>DISCLAIMERS</span><br>
<span></span><br>
<span>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE=
 ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANI=
ZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION=
, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS,
 AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT =
NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NO=
T INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNE=
SS FOR A PARTICULAR PURPOSE.</span><br>
<span></span><br>
<span>A copy is available at <span><a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Database/blob/master/TermsOfUse.md">https://github.com/=
distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md</a></span>=
</span><br>
<span></span><br>
<span>To contact the DWF either hit reply, or email <span><a href=3D"mailto=
:kurt@seifried.org">kurt@seifried.org</a></span> manually with your questio=
n/concerns/etc.
</span></div>
</blockquote>
<p></p>
<br>
<p></p>
<br>
<p style=3D"font-size:8pt;line-height:10pt; font-family: 'Cambria','times r=
oman',serif;">
NOTICE: This e-mail is only intended for the person(s) to whom it is addres=
sed and may contain confidential information. Unless stated to the contrary=
, any opinions or comments are personal to the writer and do not represent =
the official view of RSM US LLP
 or any of its affiliates (RSM US). If you have received this e-mail in err=
or, please notify us immediately by reply e-mail and then delete this messa=
ge from your system. Please do not copy it or use it for any purposes, or d=
isclose its contents to any other
 person. Thank you for your cooperation.<br>
<br>
Any advice or information in the body of this email is subject to, and limi=
ted by, the terms in the applicable engagement letter or statement of work,=
 including provisions regarding tax advice. RSM US is not responsible for, =
and no person should rely upon,
 any advice or information in the body of this email unless such advice or =
information relates to services contemplated by an engagement letter or sta=
tement of work in effect between such person and RSM US.</p>
</body>
</html>

--_000_3044A23EAF904EB1994CBB5F7A191C19rsmuscom_--
