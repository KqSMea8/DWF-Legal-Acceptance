Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp686851vkh;
        Thu, 29 Sep 2016 22:35:37 -0700 (PDT)
X-Received: by 10.31.114.203 with SMTP id n194mr4403686vkc.129.1475213737264;
        Thu, 29 Sep 2016 22:35:37 -0700 (PDT)
Return-Path: <radimre83@gmail.com>
Received: from mail-ua0-x22a.google.com (mail-ua0-x22a.google.com. [2607:f8b0:400c:c08::22a])
        by mx.google.com with ESMTPS id h190si5640369vkb.37.2016.09.29.22.35.37
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 22:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of radimre83@gmail.com designates 2607:f8b0:400c:c08::22a as permitted sender) client-ip=2607:f8b0:400c:c08::22a;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of radimre83@gmail.com designates 2607:f8b0:400c:c08::22a as permitted sender) smtp.mailfrom=radimre83@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x22a.google.com with SMTP id l16so66552223uaa.1
        for <kurt@seifried.org>; Thu, 29 Sep 2016 22:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=K/INyx48m1dFKFIjoEickTc35dPTiIQ3Hg1YzVmceBo=;
        b=RizMsmL/He6EBsAIh0CcB49gbcvOOGwt8tNXRFPO6DJmGns3j4qfvgRJFq44j2EnfO
         rwzT7xvhftXJqvb06qhlLnHOtUz9JPkUw+hqF4a2BXe+eRrk8bMhHzLlj9FkQgTPwRD8
         ChdW5OTy3f0ZbVG6ZnwBZs0itr88OE8wEjmvKrZdMwU97YgwGat2MbJFItgItNuWUXpJ
         Kj/CDYIRHGgtwZPZEqKwT2QTwoT+VjZdPpQpNd+bnXltHBEgrpzuGGYPi1A0vXyqJM3I
         Dh5uiXmUmAWwWblobcHGtF/rItI2490sHyftLGWiCfypOJioiDililThom2jgUWDLV3c
         JHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=K/INyx48m1dFKFIjoEickTc35dPTiIQ3Hg1YzVmceBo=;
        b=T/k2V6dF0KOKqdHd+Wq8SclquLKZ89nT75EKznSAjFZOTEqLl98Njddjc9uoeIMNpq
         7BcdFTNS6hum0Rej3RCckt+V1O3Wwhnbr7mDI/rbHHd06GzD4L2mqugiz9eFcsygfqef
         FNu/aZ3wdj9tzT9B62bC6LAbB29/YJ6rLymgJM/g8shPzzt/A7UxMaqmMIiV0oRvFf7/
         Z7+LPlrLXJfrkg07bA/1hFxGVavfkElO81u7qaZ0YZvJDy+L1mh9+pldILtq4Hor8HOW
         NZ/2yVJ+iv9vQLjzuZzc3jeVW2Vq5SIPvBQlSFedm+pqptj2kQ86M4ElU8kTFX2OIViK
         Z7Aw==
X-Gm-Message-State: AA6/9RndAxOPKEBMl1YVJmHSglrOte8vFJyNGLwuxin4jsNneIB6O6IX0p9iDVhmWFTc9gnWwvdpIkgC+bZ86Q==
X-Received: by 10.176.7.67 with SMTP id h61mr4151682uah.147.1475213736808;
 Thu, 29 Sep 2016 22:35:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.27.197 with HTTP; Thu, 29 Sep 2016 22:35:36 -0700 (PDT)
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
From: Imre Rad <radimre83@gmail.com>
Date: Fri, 30 Sep 2016 07:35:36 +0200
Message-ID: <CAPWzz4yUC42a_gXg04ku=GAKGETrq8o+-am0OY6zEUv0XFdbjg@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c123b38c017ce053db2f6e0

--94eb2c123b38c017ce053db2f6e0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
"I accept" the terms of use you quoted in your original email.
Thanks,
Imre

2016-09-30 2:31 GMT+02:00 Kurt Seifried <kurt@seifried.org>:

> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/
> TermsOfUse.md
>
> and quoted below, please reply with "I accept" and I'll be able to proces=
s
> your CVE request. Thanks!
>
> Terms of Use
> <https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Te=
rmsOfUse.md#license>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
>
> <https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Te=
rmsOfUse.md#disclaimers>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIE=
S
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
>
>
> --
> Kurt Seifried
> kurt@seifried.org
>

--94eb2c123b38c017ce053db2f6e0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br></div>&quot;I accept&quot; the terms of u=
se you quoted in your original email.<br></div><div>Thanks,<br></div>Imre<b=
r></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-09-3=
0 2:31 GMT+02:00 Kurt Seifried <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt=
@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span>:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div dir=3D"ltr">Hi, I need to confirm that you h=
ave accepted the MITRE Terms of Use for CVE, available at:<div><br></div><d=
iv><a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blo=
b/master/TermsOfUse.md" target=3D"_blank">https://github.com/<wbr>distribut=
edweaknessfiling/DWF-<wbr>Database/blob/master/<wbr>TermsOfUse.md</a></div>=
<div><br></div><div>and quoted below, please reply with &quot;I accept&quot=
; and I&#39;ll be able to process your CVE request. Thanks!</div><div><br><=
/div><div><h1 style=3D"box-sizing:border-box;margin:0px 0px 16px;line-heigh=
t:1.25;padding-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:=
rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&q=
uot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;=
segoe ui emoji&quot;,&quot;segoe ui symbol&quot;">Terms of Use</h1><h2 styl=
e=3D"box-sizing:border-box;margin-top:24px;margin-bottom:16px;line-height:1=
.25;padding-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb=
(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot=
;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;seg=
oe ui emoji&quot;,&quot;segoe ui symbol&quot;"><a id=3D"m_-4227668481486534=
16gmail-user-content-license" class=3D"m_-422766848148653416gmail-anchor" h=
ref=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/maste=
r/TermsOfUse.md#license" style=3D"box-sizing:border-box;background-color:tr=
ansparent;color:rgb(64,120,192);text-decoration:none;float:left;padding-rig=
ht:4px;line-height:1" target=3D"_blank"></a>LICENSE</h2><p style=3D"box-siz=
ing:border-box;margin-top:0px;margin-bottom:16px;color:rgb(51,51,51);font-f=
amily:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetic=
a,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;=
,&quot;segoe ui symbol&quot;;font-size:16px">Submissions: For all materials=
 you submit to the Common Vulnerabilities and Exposures (CVE=C2=AE), you he=
reby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authoriti=
es (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, i=
rrevocable copyright license to reproduce, prepare derivative works of, pub=
licly display, publicly perform, sublicense, and distribute such materials =
and derivative works. Unless required by applicable law or agreed to in wri=
ting, you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WAR=
RANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, wi=
thout limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, =
MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</p><p style=3D"box-si=
zing:border-box;margin-top:0px;margin-bottom:16px;color:rgb(51,51,51);font-=
family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helveti=
ca,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot=
;,&quot;segoe ui symbol&quot;;font-size:16px">CVE Usage: MITRE hereby grant=
s you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrev=
ocable copyright license to reproduce, prepare derivative works of, publicl=
y display, publicly perform, sublicense, and distribute Common Vulnerabilit=
ies and Exposures (CVE=C2=AE). Any copy you make for such purposes is autho=
rized provided that you reproduce MITRE&#39;s copyright designation and thi=
s license in any such copy.</p><h2 style=3D"box-sizing:border-box;margin-to=
p:24px;margin-bottom:16px;line-height:1.25;padding-bottom:0.3em;border-bott=
om:1px solid rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-system=
,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,=
&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui sym=
bol&quot;"><a id=3D"m_-422766848148653416gmail-user-content-disclaimers" cl=
ass=3D"m_-422766848148653416gmail-anchor" href=3D"https://github.com/distri=
butedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md#disclaimers" sty=
le=3D"box-sizing:border-box;background-color:transparent;color:rgb(64,120,1=
92);text-decoration:none;float:left;padding-right:4px;line-height:1" target=
=3D"_blank"></a>DISCLAIMERS</h2><p style=3D"box-sizing:border-box;margin-to=
p:0px;color:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quo=
t;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&=
quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16px=
;margin-bottom:0px">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PRO=
VIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUT=
OR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MIT=
RE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DIS=
CLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY =
WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGH=
TS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR=
 PURPOSE.</p><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div>=
<div><br clear=3D"all"><div><br></div>-- <br><div class=3D"m_-4227668481486=
53416gmail_signature">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org"=
 target=3D"_blank">kurt@seifried.org</a></div>
</div></font></span></div></div>
</blockquote></div><br></div>

--94eb2c123b38c017ce053db2f6e0--
