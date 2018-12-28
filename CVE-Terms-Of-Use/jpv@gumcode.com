Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp606736vkh;
        Thu, 29 Sep 2016 17:38:35 -0700 (PDT)
X-Received: by 10.157.49.92 with SMTP id v28mr3246207otd.38.1475195915073;
        Thu, 29 Sep 2016 17:38:35 -0700 (PDT)
Return-Path: <jpv@gumcode.com>
Received: from mail-oi0-x22a.google.com (mail-oi0-x22a.google.com. [2607:f8b0:4003:c06::22a])
        by mx.google.com with ESMTPS id u91si11152939otb.48.2016.09.29.17.38.34
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 17:38:34 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4003:c06::22a is neither permitted nor denied by best guess record for domain of jpv@gumcode.com) client-ip=2607:f8b0:4003:c06::22a;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gumcode-com.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:4003:c06::22a is neither permitted nor denied by best guess record for domain of jpv@gumcode.com) smtp.mailfrom=jpv@gumcode.com
Received: by mail-oi0-x22a.google.com with SMTP id w11so113206881oia.2
        for <kurt@seifried.org>; Thu, 29 Sep 2016 17:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gumcode-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=14SlHt9AIJ3KbJIFSvqTYN/9KUOzGivV/6eMXC8E2IU=;
        b=sUEZXbWM71Ok6gKj3qowz5dSFXhGxwwLRQ2CUfR+KbRMDu92f60FmJ3f15MU4cwLh9
         FT+58oYOL79Xe78RPjtECaqcgj4pw2dCcp0ABPrU+gU8GQHM+SCUdYYMdYhfwkpk70yt
         mpRqFiOxddKi1SkHDTyz5J6jN8eDGpTG4QaWRS7BFlUp34dZ5nKMdg4XUWpYFKoeWSd0
         bLyUCj6znmGcWho/7Qj1LcFhrgSqrLwDEvZgV4j0i0uQlZ0RYrbx5F5Sc5aXGJ9Jnjev
         FQyT4YIGPIgtqb1wFX/g47RmSDQVRQT2x596PPzVonHcWJeFer0L5C8xuE1jzBuJYiCh
         8W5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=14SlHt9AIJ3KbJIFSvqTYN/9KUOzGivV/6eMXC8E2IU=;
        b=coHrK3P8fikjYUscF/I8gImNEvKpMMpc4L65HaDMbDGtFS//fdlqhDyAGX01QLA2kc
         l+N+2aAESKYjWxqtcKA7Sb2TGJjCWV0Chi9C7GCSWajT5DdAK+yEbMP0yFGe647Dujvt
         cCepEgkFS5il8Nh0P9JzkQyHvYNeHxTaqehnVYxdYT1zjDWnYuWyq8Hn1O+mo4d9tzVb
         93sKdtvjGSkc0/ocgrUAZ6YZn3rCZjWct8xceRcgBqLNq19p4N3o779yZnahFJE0W7kH
         hTpImR04+GRlJt8SUoqg65wziKYVMvolrPUm0ClswMg47G2RhZ4X7MJ4Fpb+KpGHHMCM
         MUjA==
X-Gm-Message-State: AA6/9RnRdEbRQj4jBPzz12gNf6gz7N+lat+2zQYYidnSnUclOCv3X8ozZNJ0nREd/kA7xL0cxJZ4GgCnJ7HIlQ==
X-Received: by 10.157.7.200 with SMTP id 66mr2957737oto.85.1475195914435; Thu,
 29 Sep 2016 17:38:34 -0700 (PDT)
MIME-Version: 1.0
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
From: JP Villanueva <jpv@gumcode.com>
Date: Fri, 30 Sep 2016 00:38:24 +0000
Message-ID: <CABDO0KRseko7GXtLJcGpunTqj3ciDXoktMaEayAhmCH7FpxJaQ@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c048274745286053daed094

--94eb2c048274745286053daed094
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Sep 29, 2016, 17:31 Kurt Seifried <kurt@seifried.org> wrote:

> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
>
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
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

--94eb2c048274745286053daed094
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><span>
</span><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Sep 29, 2016=
, 17:31 Kurt Seifried &lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_b=
lank">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr">Hi, I need to confirm that you have accepted the MITRE=
 Terms of Use for CVE, available at:<div><br></div><div><a href=3D"https://=
github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md=
" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Databa=
se/blob/master/TermsOfUse.md</a></div><div><br></div><div>and quoted below,=
 please reply with &quot;I accept&quot; and I&#39;ll be able to process you=
r CVE request. Thanks!</div><div><br></div><div><h1 style=3D"margin:0px 0px=
 16px;line-height:1.25;padding-bottom:0.3em;border-bottom:1px solid rgb(238=
,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,=
&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color em=
oji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;">Terms of =
Use</h1><h2 style=3D"margin-top:24px;margin-bottom:16px;line-height:1.25;pa=
dding-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb(51,51=
,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,robo=
to,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui =
emoji&quot;,&quot;segoe ui symbol&quot;"><a href=3D"https://github.com/dist=
ributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md#license" style=
=3D"background-color:transparent;color:rgb(64,120,192);text-decoration:none=
;float:left;padding-right:4px;line-height:1" target=3D"_blank"></a>LICENSE<=
/h2><p style=3D"margin-top:0px;margin-bottom:16px;color:rgb(51,51,51);font-=
family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helveti=
ca,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot=
;,&quot;segoe ui symbol&quot;;font-size:16px">Submissions: For all material=
s you submit to the Common Vulnerabilities and Exposures (CVE=C2=AE), you h=
ereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorit=
ies (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, pu=
blicly display, publicly perform, sublicense, and distribute such materials=
 and derivative works. Unless required by applicable law or agreed to in wr=
iting, you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WA=
RRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, w=
ithout limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT,=
 MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</p><p style=3D"margi=
n-top:0px;margin-bottom:16px;color:rgb(51,51,51);font-family:-apple-system,=
blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&=
quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symb=
ol&quot;;font-size:16px">CVE Usage: MITRE hereby grants you a perpetual, wo=
rldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright lice=
nse to reproduce, prepare derivative works of, publicly display, publicly p=
erform, sublicense, and distribute Common Vulnerabilities and Exposures (CV=
E=C2=AE). Any copy you make for such purposes is authorized provided that y=
ou reproduce MITRE&#39;s copyright designation and this license in any such=
 copy.</p><h2 style=3D"margin-top:24px;margin-bottom:16px;line-height:1.25;=
padding-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb(51,=
51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,ro=
boto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe u=
i emoji&quot;,&quot;segoe ui symbol&quot;"><a href=3D"https://github.com/di=
stributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md#disclaimers"=
 style=3D"background-color:transparent;color:rgb(64,120,192);text-decoratio=
n:none;float:left;padding-right:4px;line-height:1" target=3D"_blank"></a>DI=
SCLAIMERS</h2><p style=3D"margin-top:0px;color:rgb(51,51,51);font-family:-a=
pple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,=
sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;s=
egoe ui symbol&quot;;font-size:16px;margin-bottom:0px">ALL DOCUMENTS AND TH=
E INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;=
AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS O=
R IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, O=
FFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED=
, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION=
 THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANT=
ABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</p></div></div><div dir=3D"ltr=
"><div><div><br></div><div><br clear=3D"all"><div><br></div>-- <br><div>Kur=
t Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@s=
eifried.org</a></div>
</div></div></div></blockquote></div>

--94eb2c048274745286053daed094--
