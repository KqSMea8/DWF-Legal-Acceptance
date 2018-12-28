Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp705323vkh;
        Thu, 29 Sep 2016 23:35:38 -0700 (PDT)
X-Received: by 10.36.222.137 with SMTP id d131mr2710470itg.1.1475217338506;
        Thu, 29 Sep 2016 23:35:38 -0700 (PDT)
Return-Path: <email@liamsomerville.com>
Received: from mail-it0-x22f.google.com (mail-it0-x22f.google.com. [2607:f8b0:4001:c0b::22f])
        by mx.google.com with ESMTPS id w12si20776118iof.12.2016.09.29.23.35.38
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 23:35:38 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c0b::22f is neither permitted nor denied by best guess record for domain of email@liamsomerville.com) client-ip=2607:f8b0:4001:c0b::22f;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@liamsomerville-com.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::22f is neither permitted nor denied by best guess record for domain of email@liamsomerville.com) smtp.mailfrom=email@liamsomerville.com
Received: by mail-it0-x22f.google.com with SMTP id j69so27726783itb.0
        for <kurt@seifried.org>; Thu, 29 Sep 2016 23:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=liamsomerville-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=QXmepdqykgXH08PM+nRk+MXreR7i+fNE0YL3+YSoQ6Y=;
        b=Jh/SpM5QwhC9hSBGidjZtxAZQuHujI+UeeTn2/dFRu/re0ChslvZHpBVNVuHOy/82G
         79QQkTIhYB+lodbO6f3taYtFUxTPdXVULyrX0F6C6VSiEGD/qjTq/WDVXEyP701xwfM5
         CVaMansyF+ZgYgsLMohg/k4LEnXRotoeLUwYmg/6sd78swFVFM75H2pATRWNffk5yOm+
         Edw3+fIQVTrN4/eC4E8Qet6fmuW6TvFYByts3Uq+8Zu0YiiK3Djbe6uXyNaZnRc+AgJF
         xlleOQK/og66mqBUuRn9beTMf0bW8EptUg0EgoWiQEZrXLRmHeN+5/ci8IVx4Cr5tVne
         v36w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=QXmepdqykgXH08PM+nRk+MXreR7i+fNE0YL3+YSoQ6Y=;
        b=Pp6aFpngp/pbXlfiFLwtlUqjibb8PtzD6odO21eeBj49F8ERAbemKONZPwdkg4geKw
         XF+hjFSTuPY78D1SqQNpAQd9VB4Kk9Znh7pljfuwJ9MIhUptTsPbrVmAGCJaoRZ0qYvK
         7k2NCUTGYB4/YPqIbBVuxI7DAzWRui21hLA6X8IiTJifEIPI36Pu2Oys5KOr9V4Hl4Cc
         rE9HkvQe8et8HYONgcz459xJkkgkRA9C04SGzzE7eyxvB/jmYIG/W1ITpgme1mmNvV90
         D8xBc8Qesa+m9Cs4Nc9UYgCTn8fPaOg8RSLj6KG75wcZw/wYpaLatim1EL7M34qOHZi2
         NcIw==
X-Gm-Message-State: AA6/9Rlg5dZ/Zg5a8s0J+8euC8CuQZtzjAhJeq9PF6iSw9nqtD8UQmfJdeHgqCkumHV7CG/LCrkQBkkGQ5ELIA==
X-Received: by 10.107.179.9 with SMTP id c9mr6996526iof.169.1475217337970;
 Thu, 29 Sep 2016 23:35:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.133.6 with HTTP; Thu, 29 Sep 2016 23:35:37 -0700 (PDT)
X-Originating-IP: [212.159.107.20]
Received: by 10.79.133.6 with HTTP; Thu, 29 Sep 2016 23:35:37 -0700 (PDT)
In-Reply-To: <CADn5HQpqmy=BP_cdcbOeWkRJGJOmj3emnTb4UKKu5QPq3wfH8w@mail.gmail.com>
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
 <CADn5HQpqmy=BP_cdcbOeWkRJGJOmj3emnTb4UKKu5QPq3wfH8w@mail.gmail.com>
From: Liam Somerville <email@liamsomerville.com>
Date: Fri, 30 Sep 2016 07:35:37 +0100
Message-ID: <CADn5HQpbKRJq00r+5H8N4ExnOZ1+18QYmFBsgxQuxP3TmwgxRg@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a1148576265843d053db3cd2f

--001a1148576265843d053db3cd2f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Kurt

Thanks for coming back to be

I can confirm I accept the terms of use for CVE

On 30 Sep 2016 1:31 am, "Kurt Seifried" <kurt@seifried.org> wrote:

Hi, I need to confirm that you have accepted the MITRE Terms of Use for
CVE, available at:

https://github.com/distributedweaknessfiling/DWF-Database/blob/master/
TermsOfUse.md

and quoted below, please reply with "I accept" and I'll be able to process
your CVE request. Thanks!

Terms of Use
<https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md#license>
LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) an=
d all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.
<https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md#disclaimers>
DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.



--=20
Kurt Seifried
kurt@seifried.org

--001a1148576265843d053db3cd2f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Kurt</p>
<p dir=3D"ltr">Thanks for coming back to be</p>
<p dir=3D"ltr">I can confirm I accept the terms of use for CVE</p>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 30 Sep 2016 1:=
31 am, &quot;Kurt Seifried&quot; &lt;<a href=3D"mailto:kurt@seifried.org">k=
urt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquote class=
=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr">Hi, I need to confirm that you have accepted the M=
ITRE Terms of Use for CVE, available at:<div><br></div><div><a href=3D"http=
s://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUs=
e.md" target=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/D=
WF-<wbr>Database/blob/master/<wbr>TermsOfUse.md</a></div><div><br></div><di=
v>and quoted below, please reply with &quot;I accept&quot; and I&#39;ll be =
able to process your CVE request. Thanks!</div><div><br></div><div><h1 styl=
e=3D"margin:0px 0px 16px;line-height:1.25;padding-bottom:0.3em;border-botto=
m:1px solid rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-system,=
blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&=
quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symb=
ol&quot;">Terms of Use</h1><h2 style=3D"margin-top:24px;margin-bottom:16px;=
line-height:1.25;padding-bottom:0.3em;border-bottom:1px solid rgb(238,238,2=
38);color:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;=
segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&qu=
ot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;"><a href=3D"http=
s://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUs=
e.md#license" style=3D"background-color:transparent;color:rgb(64,120,192);t=
ext-decoration:none;float:left;padding-right:4px;line-height:1" target=3D"_=
blank"></a>LICENSE</h2><p style=3D"margin-top:0px;margin-bottom:16px;color:=
rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&q=
uot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;=
segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16px">Submission=
s: For all materials you submit to the Common Vulnerabilities and Exposures=
 (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) and all CVE=
 Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-cha=
rge, royalty-free, irrevocable copyright license to reproduce, prepare deri=
vative works of, publicly display, publicly perform, sublicense, and distri=
bute such materials and derivative works. Unless required by applicable law=
 or agreed to in writing, you provide such materials on an &quot;AS IS&quot=
; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or im=
plied, including, without limitation, any warranties or conditions of TITLE=
, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</=
p><p style=3D"margin-top:0px;margin-bottom:16px;color:rgb(51,51,51);font-fa=
mily:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica=
,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,=
&quot;segoe ui symbol&quot;;font-size:16px">CVE Usage: MITRE hereby grants =
you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevoc=
able copyright license to reproduce, prepare derivative works of, publicly =
display, publicly perform, sublicense, and distribute Common Vulnerabilitie=
s and Exposures (CVE=C2=AE). Any copy you make for such purposes is authori=
zed provided that you reproduce MITRE&#39;s copyright designation and this =
license in any such copy.</p><h2 style=3D"margin-top:24px;margin-bottom:16p=
x;line-height:1.25;padding-bottom:0.3em;border-bottom:1px solid rgb(238,238=
,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quo=
t;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&=
quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;"><a href=3D"ht=
tps://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOf=
Use.md#disclaimers" style=3D"background-color:transparent;color:rgb(64,120,=
192);text-decoration:none;float:left;padding-right:4px;line-height:1" targe=
t=3D"_blank"></a>DISCLAIMERS</h2><p style=3D"margin-top:0px;color:rgb(51,51=
,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,robo=
to,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui =
emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16px;margin-bottom:0px">A=
LL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PR=
OVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION =
HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS B=
OARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES,=
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE=
 OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WAR=
RANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</p><font co=
lor=3D"#888888"><div><br></div><div><br clear=3D"all"><div><br></div>-- <br=
><div>Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blan=
k">kurt@seifried.org</a></div>
</div></font></div></div>
</blockquote></div><br></div>

--001a1148576265843d053db3cd2f--
