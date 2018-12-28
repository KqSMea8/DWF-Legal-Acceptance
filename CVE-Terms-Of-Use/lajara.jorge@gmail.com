Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp2014488ivb;
        Sat, 18 Nov 2017 11:55:24 -0800 (PST)
X-Received: by 10.28.212.69 with SMTP id l66mr6469643wmg.33.1511034924024;
        Sat, 18 Nov 2017 11:55:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511034924; cv=none;
        d=google.com; s=arc-20160816;
        b=slzlOT/gLaSI2KQpsWHh7dIsR06eTlFkconKgEcVLRdrTCnCGW/JwpLhtiM7Wz/mqA
         MZwh8+Bufq6XfpWUpPYwN83lZQFJN3D6kLYOVKK50tQx1x+Zpu89e2wp40p5YJCg5jSh
         qQX4BGyXrxZfCbqqlSnULJF/I/FWApeEj+und1u4+m7mODTzBlP8+0MmP/YhIIclkTB2
         n9ktYhse9fVdNt+hUtQzxAhAC1BptdWuBPxGY/R4FBZUEaIno1xRZotCVkdmyaN4xCi/
         rmqEG+LjyDC+vxAK+NIDr3KvN2TOBU41S4v4TiM2dpEhca/hsDTdN6Kj86Mn0FADozOC
         t/1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :dkim-signature:arc-authentication-results;
        bh=FpDjrV4cRDs1fROj9tWphnZ++acCJiVEf1+SNmM7lKk=;
        b=B21kaV+0o4DAIuUdSaUTQQUe9nXzxHg6TB/etQnj8WNg1n9WCQd5/OWuK5kv0vpOTn
         7Kdi9nWoyOKyd1AOp/2sBc8yL4XlZx8NcRACRHYw+gsQf6gJVGKyZIUslJTpTeVVxifp
         AqD1LqJyPU1OnOUCAJW1stUK9x8P9J57yD7ZsG6WSg1mkEPR6irFloYttvEMa2lWBeDH
         pXeMxnjXWUg4M0krGDl+9hr//j+KmckfGLqcj5vn2M/JLqCvwlig5qLmF3YkTQRbZDbI
         qkdoewtpSvpjgWgb3IE+0vMXj6qTdF6sKerViL7JnI/NaLN3hGS3UJBCVlHny1h4g2kr
         pojw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hy2btXVh;
       spf=pass (google.com: domain of lajara.jorge@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=lajara.jorge@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <lajara.jorge@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 64sor2649419wrs.78.2017.11.18.11.55.23
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 18 Nov 2017 11:55:24 -0800 (PST)
Received-SPF: pass (google.com: domain of lajara.jorge@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hy2btXVh;
       spf=pass (google.com: domain of lajara.jorge@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=lajara.jorge@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version;
        bh=FpDjrV4cRDs1fROj9tWphnZ++acCJiVEf1+SNmM7lKk=;
        b=Hy2btXVhTykKmKM1zdMriVyZAzyF/SdaAJBrgJmyM7CMsIWYtxQbq+qpV4UyxZELxM
         AwdUvF4TObYz8GB1kY/iRTwl/jq8l0F6C9kXtWhHJgSYNexPKECkLz0svUi1NGW5yC41
         5mkDs3X9tst/kJMgXZWdlUziF8fGUZORjJqdO6CrVr9mFgRDRHDSmABLpGfC72lUpJza
         3tft2emLv4awqsOxVBBxdBW6r6Z9lVnyZmi8RztEWfnIxH1pvRBXBoGrlKKRMH7E4tG2
         KQiYTsB1o6k2nujS7PMxnAbHjHzD2rq2aQkGBiZAhLnIZbkV3rObtWmxAjxpdnKJvwEH
         vg0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version;
        bh=FpDjrV4cRDs1fROj9tWphnZ++acCJiVEf1+SNmM7lKk=;
        b=euWHT8UTZf0ZWnRXfwhwrLuycOFx5s9smP0xizb024pBrvzEm5EqanVUvUsSy/OW9K
         jYCxy1KMBWBOcRBTO3pgG+k5l1Ku2qv8XoniLtYA9m82i+0ZlCEeOhFEk1dej2E6bIdn
         EOKiANNoI1yDwU/Vk8r2nU6VwIJhIVfBTC0/9c1jDSjYgohdJU7QCMyW9QkW9HVXxfic
         E8itabMIfqS1E5pfwzI6OFafgfGTDjQdxee98rzB2PYEyyPvaemD1/8hHwiLDiY8+XQ4
         vK2H9ar+IIeZsSYMsGjZXZEr/DDx6zOXRa7WHLL/nWbih6bqeuorZ6ka2mhOazd3WgWC
         8alA==
X-Gm-Message-State: AJaThX76SQbuXrYKPiWpU1f72tOcSPFAG0BUsm07gvi7TOSJyxf5vQz6
	AoMnwmUxe7kTwKy7aEZQiLyrMZi9
X-Google-Smtp-Source: AGs4zMa6HyCvkB72OrGydoFNSJzXazSQPRg8CExTqTmg9+BBUmqii7oxZNCMkUtFQOCecN7ZqTBiHg==
X-Received: by 10.223.199.133 with SMTP id l5mr7088085wrg.20.1511034923324;
        Sat, 18 Nov 2017 11:55:23 -0800 (PST)
Return-Path: <lajara.jorge@gmail.com>
Received: from [192.168.1.34] (248.red-88-1-137.dynamicip.rima-tde.net. [88.1.137.248])
        by smtp.gmail.com with ESMTPSA id t135sm3742950wmt.24.2017.11.18.11.55.22
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Nov 2017 11:55:22 -0800 (PST)
Date: Sat, 18 Nov 2017 20:54:56 +0100
From: Jorge Lajara <lajara.jorge@gmail.com>
To: kurt@seifried.org
Message-ID: <8c2b5bfe-a2de-4c7e-8b9d-10627694a500@Spark>
In-Reply-To: <20171118164119.64559.53696@slab.local>
References: <20171118164119.64559.53696@slab.local>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 lajara.jorge@gmail.com
X-Readdle-Message-ID: 8c2b5bfe-a2de-4c7e-8b9d-10627694a500@Spark
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="5a109028_6b8b4567_1fb"

--5a109028_6b8b4567_1fb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

I accept.

=22This is a confirmation email sent from CVE request form at https://iwa=
ntacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you=
 filled out the CVE form and want one, we can't use the data until you ac=
cept the MITRE CVE Terms of Use).

Simply quote the email and reply with =22I accept=22 at the top if you ag=
ree to the MITRE CVE Terms of Use and we will add a copy of the email to =
the DW=46 MITRE CVE Terms of Use acceptance data at https://github.com/di=
stributedweaknessfiling/DW=46-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an art=
ifact showing that the email address accepted the Terms of Use, when they=
 were accepted and so on.

If you did not submit a CVE request to the DW=46 you can safely ignore th=
is message, however we may resend it at some point in the future, if you =
don't want any future emails simply reply with =22unsubscribe=22 or =22DO=
N'T SEND ME THIS EMAIL EVER AGAIN=22 and I'll add your email address to t=
he block list so we don't spam you with these, please note that this will=
 prevent you from being able to accept the MITRE CVE Terms of Use via the=
 DW=46 automatically in future (you'll have to manually ask). But again, =
if you have no idea what a CVE is then you can ignore this/ask to be adde=
d to the block list with no problems.

MITRE CVE Terms of Use

LICENSE

Submissions: =46or all materials you submit to the Common Vulnerabilities=
 and Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporati=
on (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwid=
e, non-exclusive, no-charge, royalty-free, irrevocable copyright license =
to reproduce, prepare derivative works of, publicly display, publicly per=
form, sublicense, and distribute such materials and derivative works. Unl=
ess required by applicable law or agreed to in writing, you provide such =
materials on an =22AS IS=22 BASIS, WITHOUT WARRANTIES OR CONDITIONS O=46 =
ANY KIND, either express or implied, including, without limitation, any w=
arranties or conditions of TITLE, NON-IN=46RINGEMENT, MERCHANTABILITY, or=
 =46ITNESS =46OR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, pre=
pare derivative works of, publicly display, publicly perform, sublicense,=
 and distribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). A=
ny copy you make for such purposes is authorized provided that you reprod=
uce MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE IN=46ORMATION CONTAINED THEREIN PROVIDED BY MITRE A=
RE PROVIDED ON AN =22AS IS=22 BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (I=46 ANY), THE MITRE CORPORATION, =
ITS BOARD O=46 TRUSTEES, O=46=46ICERS, AGENTS, AND EMPLOYEES, DISCLAIM AL=
L WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRAN=
TY THAT THE USE O=46 THE IN=46ORMATION THEREIN WILL NOT IN=46RINGE ANY RI=
GHTS OR ANY IMPLIED WARRANTIES O=46 MERCHANTABILITY OR =46ITNESS =46OR A =
PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DW=46=
-Legal-Acceptance/blob/master/Terms-Of-Use.md

To contact the DW=46 either hit reply, or email kurt=40seifried.org manua=
lly with your question/concerns/etc.=22

On 18 Nov 2017, 17:41 +0100, wrote:
>
> This is a confirmation email sent from CVE request form at https://iwan=
tacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you =
filled out the CVE form and want one, we can't use the data until you acc=
ept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with =22I accept=22 at the top if you =
agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DW=46 MITRE CVE Terms of Use acceptance data at https://github.com/=
distributedweaknessfiling/DW=46-Legal-Acceptance/tree/master/Terms-Of-Use=

>
> The reason we use a complete copy of the email is that it provides an a=
rtifact showing that the email address accepted the Terms of Use, when th=
ey were accepted and so on.
>
> If you did not submit a CVE request to the DW=46 you can safely ignore =
this message, however we may resend it at some point in the future, if yo=
u don't want any future emails simply reply with =22unsubscribe=22 or =22=
DON'T SEND ME THIS EMAIL EVER AGAIN=22 and I'll add your email address to=
 the block list so we don't spam you with these, please note that this wi=
ll prevent you from being able to accept the MITRE CVE Terms of Use via t=
he DW=46 automatically in future (you'll have to manually ask). But again=
, if you have no idea what a CVE is then you can ignore this/ask to be ad=
ded to the block list with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: =46or all materials you submit to the Common Vulnerabiliti=
es and Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corpora=
tion (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldw=
ide, non-exclusive, no-charge, royalty-free, irrevocable copyright licens=
e to reproduce, prepare derivative works of, publicly display, publicly p=
erform, sublicense, and distribute such materials and derivative works. U=
nless required by applicable law or agreed to in writing, you provide suc=
h materials on an =22AS IS=22 BASIS, WITHOUT WARRANTIES OR CONDITIONS O=46=
 ANY KIND, either express or implied, including, without limitation, any =
warranties or conditions of TITLE, NON-IN=46RINGEMENT, MERCHANTABILITY, o=
r =46ITNESS =46OR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicens=
e, and distribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE).=
 Any copy you make for such purposes is authorized provided that you repr=
oduce MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE IN=46ORMATION CONTAINED THEREIN PROVIDED BY MITRE=
 ARE PROVIDED ON AN =22AS IS=22 BASIS AND THE CONTRIBUTOR, THE ORGANIZATI=
ON HE/SHE REPRESENTS OR IS SPONSORED BY (I=46 ANY), THE MITRE CORPORATION=
, ITS BOARD O=46 TRUSTEES, O=46=46ICERS, AGENTS, AND EMPLOYEES, DISCLAIM =
ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARR=
ANTY THAT THE USE O=46 THE IN=46ORMATION THEREIN WILL NOT IN=46RINGE ANY =
RIGHTS OR ANY IMPLIED WARRANTIES O=46 MERCHANTABILITY OR =46ITNESS =46OR =
A PARTICULAR PURPOSE.
>
> A copy is available at https://github.com/distributedweaknessfiling/DW=46=
-Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DW=46 either hit reply, or email kurt=40seifried.org man=
ually with your question/concerns/etc.

--5a109028_6b8b4567_1fb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22 style=3D=22font-size: 14px; font-fam=
ily: -apple-system, BlinkMacSystem=46ont, sans-serif;=22>I accept.
<div><br /></div>
<div>=22<span style=3D=22color: rgb(51, 51, 51); font-family: &quot;Helve=
tica Neue&quot;;=22>This is a confirmation email sent from CVE request fo=
rm at</span> <a href=3D=22https://iwantacve.org/=22 style=3D=22font-famil=
y: &quot;Helvetica Neue&quot;;=22>https://iwantacve.org/</a> <span style=3D=
=22color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;;=22>as=
king you to accept the MITRE CVE Terms of Use (assuming you filled out th=
e CVE form and want one, we can't use the data until you accept the MITRE=
 CVE Terms of Use).</span><span style=3D=22color: rgb(51, 51, 51); font-f=
amily: &quot;Helvetica Neue&quot;;=22>&=23160;</span></div>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>Simply q=
uote the email and reply with =22I accept=22 at the top if you agree to t=
he MITRE CVE Terms of Use and we will add a copy of the email to the DW=46=
 MITRE CVE Terms of Use acceptance data at <a href=3D=22https://github.co=
m/distributedweaknessfiling/DW=46-Legal-Acceptance/tree/master/Terms-Of-U=
se=22>https://github.com/distributedweaknessfiling/DW=46-Legal-Acceptance=
/tree/master/Terms-Of-Use</a></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>The reas=
on we use a complete copy of the email is that it provides an artifact sh=
owing that the email address accepted the Terms of Use, when they were ac=
cepted and so on.&=23160;</p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>If you d=
id not submit a CVE request to the DW=46 you can safely ignore this messa=
ge, however we may resend it at some point in the future, if you don't wa=
nt any future emails simply reply with =22unsubscribe=22 or =22DON'T SEND=
 ME THIS EMAIL EVER AGAIN=22 and I'll add your email address to the block=
 list so we don't spam you with these, please note that this will prevent=
 you from being able to accept the MITRE CVE Terms of Use via the DW=46 a=
utomatically in future (you'll have to manually ask). But again, if you h=
ave no idea what a CVE is then you can ignore this/ask to be added to the=
 block list with no problems.&=23160;</p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>MITRE CV=
E Terms of Use</p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>LICENSE<=
/p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>Submissi=
ons: =46or all materials you submit to the Common Vulnerabilities and Exp=
osures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporation (MITR=
E) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-e=
xclusive, no-charge, royalty-free, irrevocable copyright license to repro=
duce, prepare derivative works of, publicly display, publicly perform, su=
blicense, and distribute such materials and derivative works. Unless requ=
ired by applicable law or agreed to in writing, you provide such material=
s on an =22AS IS=22 BASIS, WITHOUT WARRANTIES OR CONDITIONS O=46 ANY KIND=
, either express or implied, including, without limitation, any warrantie=
s or conditions of TITLE, NON-IN=46RINGEMENT, MERCHANTABILITY, or =46ITNE=
SS =46OR A PARTICULAR PURPOSE.</p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>CVE Usag=
e: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-char=
ge, royalty-free, irrevocable copyright license to reproduce, prepare der=
ivative works of, publicly display, publicly perform, sublicense, and dis=
tribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any copy =
you make for such purposes is authorized provided that you reproduce MITR=
E's copyright designation and this license in any such copy.</p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>DISCLAIM=
ERS</p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>ALL DOCU=
MENTS AND THE IN=46ORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVI=
DED ON AN =22AS IS=22 BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE =
REPRESENTS OR IS SPONSORED BY (I=46 ANY), THE MITRE CORPORATION, ITS BOAR=
D O=46 TRUSTEES, O=46=46ICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRAN=
TIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT =
THE USE O=46 THE IN=46ORMATION THEREIN WILL NOT IN=46RINGE ANY RIGHTS OR =
ANY IMPLIED WARRANTIES O=46 MERCHANTABILITY OR =46ITNESS =46OR A PARTICUL=
AR PURPOSE.</p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>A copy i=
s available at <a href=3D=22https://github.com/distributedweaknessfiling/=
DW=46-Legal-Acceptance/blob/master/Terms-Of-Use.md=22>https://github.com/=
distributedweaknessfiling/DW=46-Legal-Acceptance/blob/master/Terms-Of-Use=
.md</a></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); min-height:=
 16px;=22><br /></p>
<p style=3D=22margin: 0px; font-stretch: normal; line-height: normal; fon=
t-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51);=22>To conta=
ct the DW=46 either hit reply, or email <a href=3D=22mailto:kurt=40seifri=
ed.org=22>kurt=40seifried.org</a> manually with your question/concerns/et=
c.=22</p>
</div>
<div name=3D=22messageReplySection=22 style=3D=22font-size: 14px; font-fa=
mily: -apple-system, BlinkMacSystem=46ont, sans-serif;=22><br />
On 18 Nov 2017, 17:41 +0100, wrote:<br />
<blockquote type=3D=22cite=22 style=3D=22margin: 5px 5px; padding-left: 1=
0px; border-left: thin solid =231abc9c;=22><br />
<div>This is a confirmation email sent from CVE request form at <a href=3D=
=22https://iwantacve.org/=22>https://iwantacve.org/</a> asking you to acc=
ept the MITRE CVE Terms of Use (assuming you filled out the CVE form and =
want one, we can't use the data until you accept the MITRE CVE Terms of U=
se).<br />
<br />
Simply quote the email and reply with =22I accept=22 at the top if you ag=
ree to the MITRE CVE Terms of Use and we will add a copy of the email to =
the DW=46 MITRE CVE Terms of Use acceptance data at <a href=3D=22https://=
github.com/distributedweaknessfiling/DW=46-Legal-Acceptance/tree/master/T=
erms-Of-Use=22>https://github.com/distributedweaknessfiling/DW=46-Legal-A=
cceptance/tree/master/Terms-Of-Use</a><br />
<br />
The reason we use a complete copy of the email is that it provides an art=
ifact showing that the email address accepted the Terms of Use, when they=
 were accepted and so on.<br />
<br />
If you did not submit a CVE request to the DW=46 you can safely ignore th=
is message, however we may resend it at some point in the future, if you =
don't want any future emails simply reply with =22unsubscribe=22 or =22DO=
N'T SEND ME THIS EMAIL EVER AGAIN=22 and I'll add your email address to t=
he block list so we don't spam you with these, please note that this will=
 prevent you from being able to accept the MITRE CVE Terms of Use via the=
 DW=46 automatically in future (you'll have to manually ask). But again, =
if you have no idea what a CVE is then you can ignore this/ask to be adde=
d to the block list with no problems.<br />
<br />
MITRE CVE Terms of Use<br />
<br />
LICENSE<br />
<br />
Submissions: =46or all materials you submit to the Common Vulnerabilities=
 and Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporati=
on (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwid=
e, non-exclusive, no-charge, royalty-free, irrevocable copyright license =
to reproduce, prepare derivative works of, publicly display, publicly per=
form, sublicense, and distribute such materials and derivative works. Unl=
ess required by applicable law or agreed to in writing, you provide such =
materials on an =22AS IS=22 BASIS, WITHOUT WARRANTIES OR CONDITIONS O=46 =
ANY KIND, either express or implied, including, without limitation, any w=
arranties or conditions of TITLE, NON-IN=46RINGEMENT, MERCHANTABILITY, or=
 =46ITNESS =46OR A PARTICULAR PURPOSE.<br />
<br />
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, pre=
pare derivative works of, publicly display, publicly perform, sublicense,=
 and distribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). A=
ny copy you make for such purposes is authorized provided that you reprod=
uce MITRE's copyright designation and this license in any such copy.<br /=
>
<br />
DISCLAIMERS<br />
<br />
ALL DOCUMENTS AND THE IN=46ORMATION CONTAINED THEREIN PROVIDED BY MITRE A=
RE PROVIDED ON AN =22AS IS=22 BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (I=46 ANY), THE MITRE CORPORATION, =
ITS BOARD O=46 TRUSTEES, O=46=46ICERS, AGENTS, AND EMPLOYEES, DISCLAIM AL=
L WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRAN=
TY THAT THE USE O=46 THE IN=46ORMATION THEREIN WILL NOT IN=46RINGE ANY RI=
GHTS OR ANY IMPLIED WARRANTIES O=46 MERCHANTABILITY OR =46ITNESS =46OR A =
PARTICULAR PURPOSE.<br />
<br />
A copy is available at <a href=3D=22https://github.com/distributedweaknes=
sfiling/DW=46-Legal-Acceptance/blob/master/Terms-Of-Use.md=22>https://git=
hub.com/distributedweaknessfiling/DW=46-Legal-Acceptance/blob/master/Term=
s-Of-Use.md</a><br />
<br />
To contact the DW=46 either hit reply, or email <a href=3D=22mailto:kurt=40=
seifried.org=22>kurt=40seifried.org</a> manually with your question/conce=
rns/etc.</div>
</blockquote>
<div></div>
</div>
</body>
</html>

--5a109028_6b8b4567_1fb--

