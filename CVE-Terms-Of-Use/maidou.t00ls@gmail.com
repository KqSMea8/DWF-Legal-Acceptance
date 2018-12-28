Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp769921vkh;
        Fri, 30 Sep 2016 02:42:23 -0700 (PDT)
X-Received: by 10.36.91.213 with SMTP id g204mr3305688itb.42.1475228543901;
        Fri, 30 Sep 2016 02:42:23 -0700 (PDT)
Return-Path: <maidou.t00ls@gmail.com>
Received: from mail-it0-x233.google.com (mail-it0-x233.google.com. [2607:f8b0:4001:c0b::233])
        by mx.google.com with ESMTPS id m206si3824468ita.18.2016.09.30.02.42.23
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 02:42:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of maidou.t00ls@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) client-ip=2607:f8b0:4001:c0b::233;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of maidou.t00ls@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) smtp.mailfrom=maidou.t00ls@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x233.google.com with SMTP id r192so34661935ita.0
        for <kurt@seifried.org>; Fri, 30 Sep 2016 02:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=jReid47j+UKOsf/3eRkHCEiFC+vwRBHOgixNXqK0O/4=;
        b=pf1rv8QLpjZjN2TjB9KnidQwwzzKY8voQS5V3zux3Vw9YuPLB8LPcft8oxT+iuZcF8
         VdkAGica3LaUuBXfi+fLWeptODVuQkcQ3ifCzTHwyYIyOVZk7Gi7OhIZGUobOYuygycn
         WXLNsg+XX50XQPke06BdzlC4gpyDqcCFVtG8HV/3GCtEW4afYtU9a5mQ2jHFd7u0gDCy
         MSLSSO05owZ/KRiF57mBCr8wYaiMByubh4kGFNzMlgZKX9OcdohBY9FJr9pDYv2aeHyc
         YorAme6L6StCz4zCNJqgDDw/VXpph44eQGz806SE8C80OKKd1i6sBVsTcQoumYW2d97W
         uROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=jReid47j+UKOsf/3eRkHCEiFC+vwRBHOgixNXqK0O/4=;
        b=mv9wb9nbnKMAaqwZxhycvoP3TBc4pk9Qulba+c/2xbSGe9DIdSKUBAMQKrzYxYCsKS
         Wa2QsBJmiNyI3mqfBMfZ9DMU0ywA8I0x12Zfo1+jERX6K4MI7Gcfqff1IsgMKwGJZi9t
         FkLjlSSmyKR48+TL1FlVVi/A6tgsOqym3svPAalMReMSWTenEBkrA5tbqF5DC9hlSkly
         2UT78lVS6v6KFFt7EkA0JJ1TKR4SfJAnXcpUGbZYEE2FJXySxY6BSFGWOsQmRz5Bolff
         GsbS9YD2nJ/X3fE7Q1Ektp2oYwe6ZSrVV2iA+j8t5mPnSdzU6oA1Vev+FOqVl7VlpyEr
         vYzg==
X-Gm-Message-State: AA6/9RkC3hiM/NNC6TEPxEe0Sw2pDfYDyZthXyZ4tzkr3HOK+ZzX0tLW2RGHYcoUkTQHVRze0l6oOa1QMt0Dmg==
X-Received: by 10.36.152.5 with SMTP id n5mr3248793itd.79.1475228543486; Fri,
 30 Sep 2016 02:42:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.110.202 with HTTP; Fri, 30 Sep 2016 02:42:23 -0700 (PDT)
In-Reply-To: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
References: <CABqVa3_CGQE4XE3g23zaFb9xUedVbkQCcO7mh6Mnv+--QsfVng@mail.gmail.com>
From: Maidou t00ls <maidou.t00ls@gmail.com>
Date: Fri, 30 Sep 2016 17:42:23 +0800
Message-ID: <CANUKEw3Vopkb20tj45hjRXCOc7ZLT3vqvWBregf+R4kLo0a5HA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c05f7f84c117e053db66913

--94eb2c05f7f84c117e053db66913
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

Thanks.

2016-09-30 8:31 GMT+08:00 Kurt Seifried <kurt@seifried.org>:

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

--94eb2c05f7f84c117e053db66913
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:14px">I accept.</span><div><span =
style=3D"font-size:14px"><br></span><div><span style=3D"font-size:14px">Tha=
nks.</span></div></div></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">2016-09-30 8:31 GMT+08:00 Kurt Seifried <span dir=3D"ltr">&lt;<=
a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi, I need =
to confirm that you have accepted the MITRE Terms of Use for CVE, available=
 at:<div><br></div><div><a href=3D"https://github.com/distributedweaknessfi=
ling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">https://gith=
ub.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/blob/master/<wbr>Te=
rmsOfUse.md</a></div><div><br></div><div>and quoted below, please reply wit=
h &quot;I accept&quot; and I&#39;ll be able to process your CVE request. Th=
anks!</div><div><br></div><div><h1 style=3D"box-sizing:border-box;margin:0p=
x 0px 16px;line-height:1.25;padding-bottom:0.3em;border-bottom:1px solid rg=
b(238,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsystem=
font,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple col=
or emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;">Term=
s of Use</h1><h2 style=3D"box-sizing:border-box;margin-top:24px;margin-bott=
om:16px;line-height:1.25;padding-bottom:0.3em;border-bottom:1px solid rgb(2=
38,238,238);color:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfon=
t,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color =
emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;"><a id=
=3D"m_-4350161146041350870gmail-user-content-license" class=3D"m_-435016114=
6041350870gmail-anchor" href=3D"https://github.com/distributedweaknessfilin=
g/DWF-Database/blob/master/TermsOfUse.md#license" style=3D"box-sizing:borde=
r-box;background-color:transparent;color:rgb(64,120,192);text-decoration:no=
ne;float:left;padding-right:4px;line-height:1" target=3D"_blank"></a>LICENS=
E</h2><p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:16px;c=
olor:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe=
 ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,&=
quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16px">Submi=
ssions: For all materials you submit to the Common Vulnerabilities and Expo=
sures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) and al=
l CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute such materials and derivative works. Unless required by applicabl=
e law or agreed to in writing, you provide such materials on an &quot;AS IS=
&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express =
or implied, including, without limitation, any warranties or conditions of =
TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPO=
SE.</p><p style=3D"box-sizing:border-box;margin-top:0px;margin-bottom:16px;=
color:rgb(51,51,51);font-family:-apple-system,blinkmacsystemfont,&quot;sego=
e ui&quot;,roboto,helvetica,arial,sans-serif,&quot;apple color emoji&quot;,=
&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;;font-size:16px">CVE =
Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-ch=
arge, royalty-free, irrevocable copyright license to reproduce, prepare der=
ivative works of, publicly display, publicly perform, sublicense, and distr=
ibute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE&#39;s copy=
right designation and this license in any such copy.</p><h2 style=3D"box-si=
zing:border-box;margin-top:24px;margin-bottom:16px;line-height:1.25;padding=
-bottom:0.3em;border-bottom:1px solid rgb(238,238,238);color:rgb(51,51,51);=
font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,he=
lvetica,arial,sans-serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji=
&quot;,&quot;segoe ui symbol&quot;"><a id=3D"m_-4350161146041350870gmail-us=
er-content-disclaimers" class=3D"m_-4350161146041350870gmail-anchor" href=
=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/master/T=
ermsOfUse.md#disclaimers" style=3D"box-sizing:border-box;background-color:t=
ransparent;color:rgb(64,120,192);text-decoration:none;float:left;padding-ri=
ght:4px;line-height:1" target=3D"_blank"></a>DISCLAIMERS</h2><p style=3D"bo=
x-sizing:border-box;margin-top:0px;color:rgb(51,51,51);font-family:-apple-s=
ystem,blinkmacsystemfont,&quot;segoe ui&quot;,roboto,helvetica,arial,sans-s=
erif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe u=
i symbol&quot;;font-size:16px;margin-bottom:0px">ALL DOCUMENTS AND THE INFO=
RMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&=
quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS S=
PONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICER=
S, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCL=
UDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THERE=
IN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILIT=
Y OR FITNESS FOR A PARTICULAR PURPOSE.</p><span class=3D"HOEnZb"><font colo=
r=3D"#888888"><div><br></div><div><br clear=3D"all"><div><br></div>-- <br><=
div class=3D"m_-4350161146041350870gmail_signature">Kurt Seifried<br><a hre=
f=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a></div=
>
</div></font></span></div></div>
</blockquote></div><br></div>

--94eb2c05f7f84c117e053db66913--
