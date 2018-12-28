Delivered-To: kurt@seifried.org
Received: by 10.176.65.42 with SMTP id j39csp1524466uad;
        Mon, 24 Apr 2017 12:21:30 -0700 (PDT)
X-Received: by 10.28.169.148 with SMTP id s142mr10184801wme.53.1493061690587;
        Mon, 24 Apr 2017 12:21:30 -0700 (PDT)
Return-Path: <javijmor@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by mx.google.com with ESMTPS id l68si27206158wrc.285.2017.04.24.12.21.30
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Apr 2017 12:21:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of javijmor@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of javijmor@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=javijmor@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id r190so77415570wme.1
        for <kurt@seifried.org>; Mon, 24 Apr 2017 12:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:mime-version:to:from:subject:date:importance:in-reply-to
         :references;
        bh=u7Y0ZKEd32lMWdBd7DthNKAYsV/CK/vaEcYuUAkFlqU=;
        b=mvT5OX/m/z4XC5B1NqT6nWw7vRTAenExBDxIDbJWxjHtocbG1slsrZYcxKCABbGm+2
         OkI2jG9yS2h6BZhQ1cbacfolj1gmlyAss/adDH97mfgQgQtixxZyy0o+fHbDOpWoUdto
         gH8e87MzhDresVuEw1HyBAmseP9H/GnQ/WMESai9e+5iwOsBeverdvDRqPUI6d/FWjEZ
         PeHmp5x2vNEKIyBi6Qe1GgSKgl1vCdUjLRGaTWRd6aupl182WGeBU4qCtLrJHj89j05b
         o7gEFBdiRmM3vKrYIyvPgdWgM7xYIkSJXUUEUNvNTRvIl8dTbfP3k36QnC0oy41fzvPU
         l16Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version:to:from:subject:date
         :importance:in-reply-to:references;
        bh=u7Y0ZKEd32lMWdBd7DthNKAYsV/CK/vaEcYuUAkFlqU=;
        b=rljUpH1QDvsyuqqLI6M5jPSIkjxJc16340j5twsrLCUen7ekSjfwFPByOi9xd1eldQ
         buS1XTW8ITEAq0q1acGY70iGz/+L7/xQeyOLVGDwMeQ40YqRn9TtRHR4XOIo5/AofNsF
         V6dUjZTO4ZJa+mAJchMGDy2qvdKfx+KNamlF5XiBoEF3t6/Lv7oeq9XUEVqDnnkm3oyt
         BS5omclu4WkAyM+ZF5jj4izuMG/LBlHB+nfRcoPEX3O8eobwbIa8oSFxWTqScqjk/sUF
         j2mdILUtDxr95n6b3adnzJRA+vp5/I1rv/Bb3BGUE9PhKI/q4EEE7TRkJvsdFsKtbcMr
         /6pA==
X-Gm-Message-State: AN3rC/4uF6QcIG+xTamZA8UCiy07C5LMhqO7cCBabpH61uoiT3AS57a0
	SW7hs4DqxyhcdEJrcpY=
X-Received: by 10.28.69.203 with SMTP id l72mr10437422wmi.75.1493061689998;
        Mon, 24 Apr 2017 12:21:29 -0700 (PDT)
Return-Path: <javijmor@gmail.com>
Received: from ?IPv6:::ffff:192.168.1.137? (host31-48-62-81.range31-48.btcentralplus.com. [31.48.62.81])
        by smtp.gmail.com with ESMTPSA id y190sm221208wmy.15.2017.04.24.12.21.28
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Apr 2017 12:21:29 -0700 (PDT)
Message-ID: <58fe5039.c7321c0a.9b014.160b@mx.google.com>
MIME-Version: 1.0
To: "kurt@seifried.org" <kurt@seifried.org>
From: <javijmor@gmail.com>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE
 forjavijmor@gmail.com
Date: Mon, 24 Apr 2017 20:21:28 +0100
Importance: normal
X-Priority: 3
In-Reply-To: <20170406201035.4090.93986@shiny-2.local>
References: <20170406201035.4090.93986@shiny-2.local>
Content-Type: multipart/alternative;
	boundary="_60F4419F-5522-4FEC-B0D3-3823CD86D091_"

--_60F4419F-5522-4FEC-B0D3-3823CD86D091_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

I accept

De: kurt@seifried.org
Enviado: jueves, 6 de abril de 2017 21:10
Para: javijmor@gmail.com
Asunto: DWF/CVE - Acceptance of MITRE Terms of Use for CVE forjavijmor@gmai=
l.com

This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use).=20

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
problems.=20

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVEB.), you hereby grant to The MITRE Corporation (MITRE) and a=
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
istribute Common Vulnerabilities and Exposures (CVEB.). Any copy you make f=
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

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.=20



--_60F4419F-5522-4FEC-B0D3-3823CD86D091_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DES link=3Dblue vlink=3D"#954F72"><div class=
=3DWordSection1><p class=3DMsoNormal>I accept</p><p class=3DMsoNormal><o:p>=
&nbsp;</o:p></p><div style=3D'mso-element:para-border-div;border:none;borde=
r-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal s=
tyle=3D'border:none;padding:0cm'><b>De: </b><a href=3D"mailto:kurt@seifried=
.org">kurt@seifried.org</a><br><b>Enviado: </b>jueves, 6 de abril de 2017 2=
1:10<br><b>Para: </b><a href=3D"mailto:javijmor@gmail.com">javijmor@gmail.c=
om</a><br><b>Asunto: </b>DWF/CVE - Acceptance of MITRE Terms of Use for CVE=
 forjavijmor@gmail.com</p></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><=
p class=3DMsoNormal>This is a confirmation email sent from CVE request form=
 at https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can't use the data u=
ntil you accept the MITRE CVE Terms of Use). </p><p class=3DMsoNormal><o:p>=
&nbsp;</o:p></p><p class=3DMsoNormal>Simply quote the email and reply with =
&quot;I accept&quot; at the top if you agree to the MITRE CVE Terms of Use =
and we will add it to the DWF MITRE CVE Terms of Use acceptance data at htt=
ps://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/=
Terms-Of-Use</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNor=
mal>If you did not submit a CVE request to the DWF you can safely ignore th=
is message, however we may resend it at some point in the future, if you do=
n't want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON'T SEND ME THIS EMAIL EVER AGAIN&quot; and I'll add your email addres=
s to the block list so we don't spam you with these, please note that this =
will prevent you from being able to accept the MITRE CVE Terms of Use via t=
he DWF automatically in future (you'll have to manually ask). But again, if=
 you have no idea what a CVE is then you can ignore this/ask to be added to=
 the block list with no problems. </p><p class=3DMsoNormal><o:p>&nbsp;</o:p=
></p><p class=3DMsoNormal>MITRE CVE Terms of Use</p><p class=3DMsoNormal><o=
:p>&nbsp;</o:p></p><p class=3DMsoNormal>LICENSE</p><p class=3DMsoNormal><o:=
p>&nbsp;</o:p></p><p class=3DMsoNormal>Submissions: For all materials you s=
ubmit to the Common Vulnerabilities and Exposures (CVEB.), you hereby grant=
 to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) =
a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable=
 copyright license to reproduce, prepare derivative works of, publicly disp=
lay, publicly perform, sublicense, and distribute such materials and deriva=
tive works. Unless required by applicable law or agreed to in writing, you =
provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR=
 CONDITIONS OF ANY KIND, either express or implied, including, without limi=
tation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTAB=
ILITY, or FITNESS FOR A PARTICULAR PURPOSE.</p><p class=3DMsoNormal><o:p>&n=
bsp;</o:p></p><p class=3DMsoNormal>CVE Usage: MITRE hereby grants you a per=
petual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copy=
right license to reproduce, prepare derivative works of, publicly display, =
publicly perform, sublicense, and distribute Common Vulnerabilities and Exp=
osures (CVEB.). Any copy you make for such purposes is authorized provided =
that you reproduce MITRE's copyright designation and this license in any su=
ch copy.</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>=
DISCLAIMERS</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNorm=
al>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE AR=
E PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZAT=
ION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, I=
TS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANT=
IES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE=
 USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED=
 WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</p><p c=
lass=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>A copy is availa=
ble at https://github.com/distributedweaknessfiling/DWF-Database/blob/maste=
r/TermsOfUse.md</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMso=
Normal>To contact the DWF either hit reply, or email kurt@seifried.org manu=
ally with your question/concerns/etc. </p><p class=3DMsoNormal><o:p>&nbsp;<=
/o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_60F4419F-5522-4FEC-B0D3-3823CD86D091_--

