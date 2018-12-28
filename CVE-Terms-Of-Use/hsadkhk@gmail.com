Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp440470vkh;
        Thu, 6 Oct 2016 08:08:54 -0700 (PDT)
X-Received: by 10.36.190.8 with SMTP id i8mr15874058itf.47.1475766534805;
        Thu, 06 Oct 2016 08:08:54 -0700 (PDT)
Return-Path: <hsadkhk@gmail.com>
Received: from mail-it0-x232.google.com (mail-it0-x232.google.com. [2607:f8b0:4001:c0b::232])
        by mx.google.com with ESMTPS id 77si18682056ior.109.2016.10.06.08.08.54
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 08:08:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of hsadkhk@gmail.com designates 2607:f8b0:4001:c0b::232 as permitted sender) client-ip=2607:f8b0:4001:c0b::232;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of hsadkhk@gmail.com designates 2607:f8b0:4001:c0b::232 as permitted sender) smtp.mailfrom=hsadkhk@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x232.google.com with SMTP id j69so32428117itb.0
        for <kurt@seifried.org>; Thu, 06 Oct 2016 08:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=H7zrkyHNsPXUAgto2Wxz2kBK+uBEWBgKfDIirMMppzg=;
        b=wfbynuXmx092X/Yav3lSfNi5Iwy1MZL5EAzsm/nsYha80ER+czPgQoaUB7cy9Y4QcE
         yWhweQnO6F2T0sTrotRQ5F6Ej48th+801dJ730Ir7043bPkI8zPH2YSj9Rjf/zVCbcVq
         VsHGc5lQ/NywPNL55D8utCef+1MiydvFK+cKFYGTCNxKE23T21Rv13eXX0jurPrUC6lY
         yhQGeVIBHmUucl3ZRsfLxj3o8kO/tUu8BGVsmCAupUbhUVLU+RnfXRQg4dkpiCwR2040
         suynQIjw4nSbNIx467rr5LHUFNBzuZ1azPfuQoUl+kaf26k+1DG4tadiKA7+mp4dKF6d
         a5sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=H7zrkyHNsPXUAgto2Wxz2kBK+uBEWBgKfDIirMMppzg=;
        b=ZUBvv6AS8YN6ic3HgZ36ODWeHZPQWcWrLZo7cxIJUl1FmP2mWuIzbL6D7VaIHamobT
         U0yLUkCdt4w3XFvkR26AfWVqnkj6ejE8+6M8wBj5CMckPaPscOYnNeFzzBwYGoiqEYQt
         07EpDlk5aAKCJT55l3AlH5c4EGPnRTrL79RbdOx3yEEGPdj4dotXiaq4WpL4n/xzI851
         HPlrqx83k7mhhgWctkj9tu9kwZLFDwKZIENZeh9LPseCrPtDqKYtE+oDy55Qv+TZBCwm
         fgUBNiRgInhGkjVrnSOEGwAWAuPFFi2yYDhPkc7No8iNLgSdZ0gHy4OPSDIra9zQb4zL
         q1/g==
X-Gm-Message-State: AA6/9Rk8qDg1fWDO3LkK9P+wi2+G5Hp8Fs0nekU4znLWmh/fSj1Y/1Pmmm8BhTuSvzrDPgRAAQSSd1AvB8WqYQ==
X-Received: by 10.36.137.9 with SMTP id s9mr14740780itd.58.1475766534405; Thu,
 06 Oct 2016 08:08:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.20.206 with HTTP; Thu, 6 Oct 2016 08:08:54 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: zh explorer <hsadkhk@gmail.com>
Date: Thu, 6 Oct 2016 23:08:54 +0800
Message-ID: <CAAZ9zEspp5=JPtDnkwP07a1oNHQ3ZSdwwpAfenzvn4rc4eBj_w@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c05bfc60e08bd053e33acbc

--94eb2c05bfc60e08bd053e33acbc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

2016-10-06 0:41 GMT+08:00 Kurt Seifried <kurt@seifried.org>:

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

--94eb2c05bfc60e08bd053e33acbc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">I accept</span><br></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-10-06 0:41 G=
MT+08:00 Kurt Seifried <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifrie=
d.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span>:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"ltr"><p class=3D"m_-5353357327407821047gmail-=
m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_=
-5353357327407821047gmail-m_-323732369566349682gmail-s1">Hi, I need to conf=
irm that you have accepted the MITRE=C2=A0<span class=3D"m_-535335732740782=
1047gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-53533573274078210=
47gmail-il">Use</span>=C2=A0for=C2=A0<span class=3D"m_-5353357327407821047g=
mail-il">CVE</span>, available at:</span></p><p class=3D"m_-535335732740782=
1047gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"><a href=
=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/master/T=
ermsOfUse.md" target=3D"_blank">https://github.com/distributed<wbr>weakness=
filing/DWF-Database/<wbr>blob/master/TermsOfUse.md</a><br><span class=3D"m_=
-5353357327407821047gmail-m_-323732369566349682gmail-s1"></span></p><p clas=
s=3D"m_-5353357327407821047gmail-m_-323732369566349682gmail-p2" style=3D"fo=
nt-size:12.8px">and quoted below, please reply with &quot;I accept&quot; an=
d I&#39;ll be able to process your=C2=A0<span class=3D"m_-53533573274078210=
47gmail-il">CVE</span>=C2=A0request. Thanks!<br><span class=3D"m_-535335732=
7407821047gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-53=
53357327407821047gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12=
.8px"><span class=3D"m_-5353357327407821047gmail-il">Terms</span>=C2=A0of=
=C2=A0<span class=3D"m_-5353357327407821047gmail-il">Use</span><br><span cl=
ass=3D"m_-5353357327407821047gmail-m_-323732369566349682gmail-s1"></span></=
p><p class=3D"m_-5353357327407821047gmail-m_-323732369566349682gmail-p2" st=
yle=3D"font-size:12.8px">LICENSE<br><span class=3D"m_-5353357327407821047gm=
ail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-53533573274078=
21047gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span =
class=3D"m_-5353357327407821047gmail-m_-323732369566349682gmail-s1">Submiss=
ions: For all materials you submit to the Common Vulnerabilities and Exposu=
res (<span class=3D"m_-5353357327407821047gmail-il">CVE</span>=C2=AE), you =
hereby grant to The MITRE Corporation (MITRE) and all=C2=A0<span class=3D"m=
_-5353357327407821047gmail-il">CVE</span>=C2=A0Numbering Authorities (CNAs)=
 a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocabl=
e copyright license to reproduce, prepare derivative works of, publicly dis=
play, publicly perform, sublicense, and distribute such materials and deriv=
ative works. Unless required by applicable law or agreed to in writing, you=
 provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES O=
R CONDITIONS OF ANY KIND, either express or implied, including, without lim=
itation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTA=
BILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p class=3D"m_-53533=
57327407821047gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8p=
x"><span class=3D"m_-5353357327407821047gmail-m_-323732369566349682gmail-s1=
"><span class=3D"m_-5353357327407821047gmail-il">CVE</span>=C2=A0Usage: MIT=
RE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, roya=
lty-free, irrevocable copyright license to reproduce, prepare derivative wo=
rks of, publicly display, publicly perform, sublicense, and distribute Comm=
on Vulnerabilities and Exposures (<span class=3D"m_-5353357327407821047gmai=
l-il">CVE</span>=C2=AE). Any copy you make for such purposes is authorized =
provided that you reproduce MITRE&#39;s copyright designation and this lice=
nse in any such copy.</span></p><p class=3D"m_-5353357327407821047gmail-m_-=
323732369566349682gmail-p2" style=3D"font-size:12.8px">DISCLAIMERS<br><span=
 class=3D"m_-5353357327407821047gmail-m_-323732369566349682gmail-s1"></span=
></p><p class=3D"m_-5353357327407821047gmail-m_-323732369566349682gmail-p1"=
 style=3D"font-size:12.8px"><span class=3D"m_-5353357327407821047gmail-m_-3=
23732369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMATION CONTAINED THER=
EIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CO=
NTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), =
THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYE=
ES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED =
TO ANY WARRANTY THAT THE=C2=A0<span class=3D"m_-5353357327407821047gmail-il=
">USE</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS O=
R ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PUR=
POSE.</span></p><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></d=
iv>-- <br><div class=3D"m_-5353357327407821047gmail_signature">Kurt Seifrie=
d<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.o=
rg</a></div>
</font></span></div>
</blockquote></div><br></div>

--94eb2c05bfc60e08bd053e33acbc--
