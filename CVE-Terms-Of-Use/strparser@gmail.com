Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp1086212vkh;
        Mon, 3 Oct 2016 07:24:04 -0700 (PDT)
X-Received: by 10.107.151.11 with SMTP id z11mr25720538iod.28.1475504644403;
        Mon, 03 Oct 2016 07:24:04 -0700 (PDT)
Return-Path: <strparser@gmail.com>
Received: from mail-io0-x236.google.com (mail-io0-x236.google.com. [2607:f8b0:4001:c06::236])
        by mx.google.com with ESMTPS id v124si17289291itc.68.2016.10.03.07.24.04
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 07:24:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of strparser@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) client-ip=2607:f8b0:4001:c06::236;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of strparser@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) smtp.mailfrom=strparser@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x236.google.com with SMTP id j37so27950585ioo.3
        for <kurt@seifried.org>; Mon, 03 Oct 2016 07:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=R1vqZkP6IL7vqQiGUl9ArFkbFjG/y3HDlKbq4be2MvE=;
        b=vTGQ+mHOmc9uZA7htTOizuHXrD6UjNqFjrNk2TIH1phDKeuYMsIxBg3ZRiXzBUbag8
         o6j0Fzc9DQelbqGlU+/Vw7sbXJuO+qon2vqmZbJWkPNxoZU91gQBeHUpH505TFITn9hS
         mmPptFJbFNKCknD+jFhPG8yapXb23uvf5AzHjXAgKKi0+GsB4VUrR/TzteFXHWAq4Nq3
         qB4CIBKt4bYMDxW9tETnQPF7w19y1hrI0EcxB9lSPSP2qxe8JX/ZhFkABS4ix09FT8XN
         XrQHPgX9eNXwNkOaSYnNahwQyUVu4cd9TKKRSJiW1Pv2YaZmrsbiUadYFWM1vx9J3Qmx
         PHow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=R1vqZkP6IL7vqQiGUl9ArFkbFjG/y3HDlKbq4be2MvE=;
        b=VnfZCCZFrwYeI5woOVWl9sR5BYFBLx8vcpXXNlnrWcRQ44eq20+3g217R743hNmSEv
         Ouwr0T159eSOvJFm2MqJm0tILwa1f04eP7QIdb7PbwywK8JRW+ASBdfDDsmmpeqX4oyd
         inLcAXowpoMtFFsV9vWZv8YmAo38CE8Ost10mMA0IQR+733iqxEr2CxoiyK8BOMCeOx4
         wJAwuA9XTFVBvpAWCnNlRHE7tO3JxMItJn2VW1IrO4Tk2KNm+NWkDAtUa/PFpI3o6Oot
         e8ikyNWXu3Z8OAEcojYNXA/jlsLPSY7evuzwmcGK0g6PxuJOoVK9wJm4xUhN0Yrb1/cL
         GIww==
X-Gm-Message-State: AA6/9Rmx3t6AJ7aOOuyRegJMcW4fNsfuUIQIY6gk6JX9EOy4W6pbPqy57e/ScQkW8JCqkNg0JqHAqy8d5xN/xw==
X-Received: by 10.107.201.20 with SMTP id z20mr20809644iof.90.1475504643896;
 Mon, 03 Oct 2016 07:24:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.209.197 with HTTP; Mon, 3 Oct 2016 07:24:03 -0700 (PDT)
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
From: i0-sec <strparser@gmail.com>
Date: Mon, 3 Oct 2016 09:24:03 -0500
Message-ID: <CAH19hZeFMd0HYq=JKG+GsCpwXSQ4wgJScRSTgX1op3RGL96VpA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c0bfd9029f9ba053df6b27d

--94eb2c0bfd9029f9ba053df6b27d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

2016-09-29 19:31 GMT-05:00 Kurt Seifried <kurt@seifried.org>:

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

--94eb2c0bfd9029f9ba053df6b27d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">2016-09-29 19:31 GMT-05:00 Kurt Seifried <span dir=3D"ltr">&l=
t;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org<=
/a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi, I ne=
ed to confirm that you have accepted the MITRE Terms of Use for CVE, availa=
ble at:<div><br></div><div><a href=3D"https://github.com/distributedweaknes=
sfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">https://g=
ithub.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/blob/master/<wbr=
>TermsOfUse.md</a></div><div><br></div><div>and quoted below, please reply =
with &quot;I accept&quot; and I&#39;ll be able to process your CVE request.=
 Thanks!</div><div><br></div><div><h1 style=3D"box-sizing:border-box;margin=
:0px 0px 16px;line-height:1.25;padding-bottom:0.3em;border-bottom:1px solid=
 rgb(238,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsys=
temfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple =
color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;">T=
erms of Use</h1><h2 style=3D"box-sizing:border-box;margin-top:24px;margin-b=
ottom:16px;line-height:1.25;padding-bottom:0.3em;border-bottom:1px solid rg=
b(238,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsystem=
font,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple col=
or emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;"><a i=
d=3D"m_2943012184473628598gmail-user-content-license" class=3D"m_2943012184=
473628598gmail-anchor" href=3D"https://github.com/distributedweaknessfiling=
/DWF-Database/blob/master/TermsOfUse.md#license" style=3D"box-sizing:border=
-box;background-color:transparent;color:rgb(64,120,192);text-decoration:non=
e;float:left;padding-right:4px;line-height:1" target=3D"_blank"></a>LICENSE=
</h2><p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:16px;co=
lor:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe =
ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&q=
uot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16px">Submis=
sions: For all materials you submit to the Common Vulnerabilities and Expos=
ures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) and all=
 CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no=
-charge, royalty-free, irrevocable copyright license to reproduce, prepare =
derivative works of, publicly display, publicly perform, sublicense, and di=
stribute such materials and derivative works. Unless required by applicable=
 law or agreed to in writing, you provide such materials on an &quot;AS IS&=
quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express o=
r implied, including, without limitation, any warranties or conditions of T=
ITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOS=
E.</p><p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:16px;c=
olor:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe=
 ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&=
quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16px">CVE U=
sage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-cha=
rge, royalty-free, irrevocable copyright license to reproduce, prepare deri=
vative works of, publicly display, publicly perform, sublicense, and distri=
bute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make fo=
r such purposes is authorized provided that you reproduce MITRE&#39;s copyr=
ight designation and this license in any such copy.</p><h2 style=3D"box-siz=
ing:border-box;margin-top:24px;margin-bottom:16px;line-height:1.25;padding-=
bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb(51,51,51);f=
ont-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,hel=
vetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&=
quot;,&quot;segoe ui symbol&quot;"><a id=3D"m_2943012184473628598gmail-user=
-content-disclaimers" class=3D"m_2943012184473628598gmail-anchor" href=3D"h=
ttps://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsO=
fUse.md#disclaimers" style=3D"box-sizing:border-box;background-color:transp=
arent;color:rgb(64,120,192);text-decoration:none;float:left;padding-right:4=
px;line-height:1" target=3D"_blank"></a>DISCLAIMERS</h2><p style=3D"box-siz=
ing:border-box;margin-top:0px;color:rgb(51,51,51);font-family:-apple-system=
,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,=
&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui sym=
bol&quot;;font-size:16px;margin-bottom:0px">ALL DOCUMENTS AND THE INFORMATI=
ON CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot;=
 BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSO=
RED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AG=
ENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING=
 BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WI=
LL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR =
FITNESS FOR A PARTICULAR PURPOSE.</p><span class=3D"HOEnZb"><font color=3D"=
#888888"><div><br></div><div><br clear=3D"all"><div><br></div>-- <br><div c=
lass=3D"m_2943012184473628598gmail_signature">Kurt Seifried<br><a href=3D"m=
ailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a></div>
</div></font></span></div></div>
</blockquote></div><br></div>

--94eb2c0bfd9029f9ba053df6b27d--
