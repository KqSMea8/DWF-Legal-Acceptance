Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp237535vkh;
        Wed, 5 Oct 2016 10:05:33 -0700 (PDT)
X-Received: by 10.31.157.201 with SMTP id g192mr7664202vke.85.1475687133367;
        Wed, 05 Oct 2016 10:05:33 -0700 (PDT)
Return-Path: <christopher.w.clark@gmail.com>
Received: from mail-ua0-x22c.google.com (mail-ua0-x22c.google.com. [2607:f8b0:400c:c08::22c])
        by mx.google.com with ESMTPS id t124si5681243vkf.56.2016.10.05.10.05.33
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 10:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of christopher.w.clark@gmail.com designates 2607:f8b0:400c:c08::22c as permitted sender) client-ip=2607:f8b0:400c:c08::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of christopher.w.clark@gmail.com designates 2607:f8b0:400c:c08::22c as permitted sender) smtp.mailfrom=christopher.w.clark@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x22c.google.com with SMTP id p102so44905967uap.0
        for <kurt@seifried.org>; Wed, 05 Oct 2016 10:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Jl5Zx3vwaidvHn5WP3AZPfth7LLAtaKXM8/bZOeAZxU=;
        b=P51Rp6Ye92Y3v16od/16M+njLUhgcXAgfUfHahoIVbJnCyhW4Rkyq84ILXXRLeGs4Z
         q1g+XrjwvbCRFnUdIDUdLuzibzmMn/9x8Ia02EOW/bq/FR4Mej7M6IIi5jI9xSxCkR7X
         Twc18o2z09RIjHLefJLNXxl1H89dg9Ixt0gG8SQoBdkcyrf0H2KnDAwYxIMGELz+B2Vs
         74A/R2uK+62Y0ZaFxtmrD2XzeIg3eB13sJuW5r2JxjKkPUnIikm4YkGrI6UH0DBA8uHn
         JJWwoYECBEtK0ptTwynfehhr/JsFu5N7hVpk9IKJpmUkDND3XQUXOfUq1qMki/DlhfNT
         7MFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Jl5Zx3vwaidvHn5WP3AZPfth7LLAtaKXM8/bZOeAZxU=;
        b=QtuAc9quT+h2NMCRcHoAgBxA9VbMXChsX4HMN1DB1+s92z+InQz+T35uxxCb2xmked
         Y+LPhUqetVQFOtAymYBZnFa3O4iLFarfOUA0/asPVtQSR853y8UtNgLpVZQzzgC4FRMu
         F0EqgOU9IDs2oe2NWG74yq/dFCfV2sGhWJf+BCTnUlia0YV1AH8U0Xk/sT3q2CuaMpSo
         x5xvauPcjAE/iMBz+FLoCzO5HFcwSgpCpf3P22F/Jl6Br/w7sKbmATZGF7CbvUlsjwhT
         wNH4t9oP/WbPpicSpmLSq4AqTbbX29b5I0ZpLUIwrJRAreNy/6WPmwXzKJBnQ+h7Cwq6
         +tJw==
X-Gm-Message-State: AA6/9RnzR8q3NWiTWpP14AqNrlue2Kf78c837Ehnjvxbr/R8C/5gZkWth5wLCJeDToC5Xyur3tzkmj9jb+BCYA==
X-Received: by 10.176.6.74 with SMTP id f68mr7678232uaf.67.1475687132886; Wed,
 05 Oct 2016 10:05:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.46.82 with HTTP; Wed, 5 Oct 2016 10:05:32 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Christopher Clark <christopher.w.clark@gmail.com>
Date: Wed, 5 Oct 2016 10:05:32 -0700
Message-ID: <CACMJ4GZ6BUiCT_zrUEwLTYS4N3jCx14pMgpr_Dc=K+-UF75MMg@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c122e345afea7053e212fe9

--94eb2c122e345afea7053e212fe9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank-you. I accept.

On Wed, Oct 5, 2016 at 9:41 AM, Kurt Seifried <kurt@seifried.org> wrote:

> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/
> blob/master/TermsOfUse.md
>
> and quoted below, please reply with "I accept" and I'll be able to proces=
s
> your CVE request. Thanks!
>
> Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE)
> and all CVE Numbering Authorities (CNAs) a perpetual, worldwide,
> non-exclusive, no-charge, royalty-free, irrevocable copyright license to
> reproduce, prepare derivative works of, publicly display, publicly perfor=
m,
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
=AE).
> Any copy you make for such purposes is authorized provided that you
> reproduce MITRE's copyright designation and this license in any such copy=
.
>
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
> --
> Kurt Seifried
> kurt@seifried.org
>

--94eb2c122e345afea7053e212fe9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Thank-you. I accept.<br></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Wed, Oct 5, 2016 at 9:41 AM, Kurt Seif=
ried <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_=
blank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><p class=3D"m_-4094590713556828930gmail-m_-323732369=
566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-40945907135=
56828930gmail-m_-323732369566349682gmail-s1">Hi, I need to confirm that you=
 have accepted the MITRE=C2=A0<span class=3D"m_-4094590713556828930gmail-il=
">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-4094590713556828930gmail-il">=
Use</span>=C2=A0for=C2=A0<span class=3D"m_-4094590713556828930gmail-il">CVE=
</span>, available at:</span></p><p class=3D"m_-4094590713556828930gmail-m_=
-323732369566349682gmail-p2" style=3D"font-size:12.8px"><a href=3D"https://=
github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md=
" target=3D"_blank">https://github.com/distributed<wbr>weaknessfiling/DWF-D=
atabase/<wbr>blob/master/TermsOfUse.md</a><br><span class=3D"m_-40945907135=
56828930gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-4094=
590713556828930gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8=
px">and quoted below, please reply with &quot;I accept&quot; and I&#39;ll b=
e able to process your=C2=A0<span class=3D"m_-4094590713556828930gmail-il">=
CVE</span>=C2=A0request. Thanks!<br><span class=3D"m_-4094590713556828930gm=
ail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-40945907135568=
28930gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"><span =
class=3D"m_-4094590713556828930gmail-il">Terms</span>=C2=A0of=C2=A0<span cl=
ass=3D"m_-4094590713556828930gmail-il">Use</span><br><span class=3D"m_-4094=
590713556828930gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"=
m_-4094590713556828930gmail-m_-323732369566349682gmail-p2" style=3D"font-si=
ze:12.8px">LICENSE<br><span class=3D"m_-4094590713556828930gmail-m_-3237323=
69566349682gmail-s1"></span></p><p class=3D"m_-4094590713556828930gmail-m_-=
323732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-40=
94590713556828930gmail-m_-323732369566349682gmail-s1">Submissions: For all =
materials you submit to the Common Vulnerabilities and Exposures (<span cla=
ss=3D"m_-4094590713556828930gmail-il">CVE</span>=C2=AE), you hereby grant t=
o The MITRE Corporation (MITRE) and all=C2=A0<span class=3D"m_-409459071355=
6828930gmail-il">CVE</span>=C2=A0Numbering Authorities (CNAs) a perpetual, =
worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright li=
cense to reproduce, prepare derivative works of, publicly display, publicly=
 perform, sublicense, and distribute such materials and derivative works. U=
nless required by applicable law or agreed to in writing, you provide such =
materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS O=
F ANY KIND, either express or implied, including, without limitation, any w=
arranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FIT=
NESS FOR A PARTICULAR PURPOSE.</span></p><p class=3D"m_-4094590713556828930=
gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=
=3D"m_-4094590713556828930gmail-m_-323732369566349682gmail-s1"><span class=
=3D"m_-4094590713556828930gmail-il">CVE</span>=C2=A0Usage: MITRE hereby gra=
nts you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irr=
evocable copyright license to reproduce, prepare derivative works of, publi=
cly display, publicly perform, sublicense, and distribute Common Vulnerabil=
ities and Exposures (<span class=3D"m_-4094590713556828930gmail-il">CVE</sp=
an>=C2=AE). Any copy you make for such purposes is authorized provided that=
 you reproduce MITRE&#39;s copyright designation and this license in any su=
ch copy.</span></p><p class=3D"m_-4094590713556828930gmail-m_-3237323695663=
49682gmail-p2" style=3D"font-size:12.8px">DISCLAIMERS<br><span class=3D"m_-=
4094590713556828930gmail-m_-323732369566349682gmail-s1"></span></p><p class=
=3D"m_-4094590713556828930gmail-m_-323732369566349682gmail-p1" style=3D"fon=
t-size:12.8px"><span class=3D"m_-4094590713556828930gmail-m_-32373236956634=
9682gmail-s1">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED =
BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, TH=
E ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE COR=
PORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM =
ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRAN=
TY THAT THE=C2=A0<span class=3D"m_-4094590713556828930gmail-il">USE</span>=
=C2=A0OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIE=
D WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span>=
</p><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div>-- <br><d=
iv class=3D"m_-4094590713556828930gmail_signature">Kurt Seifried<br><a href=
=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--94eb2c122e345afea7053e212fe9--
