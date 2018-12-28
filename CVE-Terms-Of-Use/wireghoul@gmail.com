Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp170613vkh;
        Wed, 5 Oct 2016 20:10:06 -0700 (PDT)
X-Received: by 10.55.147.199 with SMTP id v190mr11770562qkd.192.1475723406136;
        Wed, 05 Oct 2016 20:10:06 -0700 (PDT)
Return-Path: <wireghoul@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by mx.google.com with ESMTPS id g77si6875073qke.226.2016.10.05.20.10.06
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 20:10:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of wireghoul@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of wireghoul@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=wireghoul@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x235.google.com with SMTP id t7so5752362qkh.2
        for <kurt@seifried.org>; Wed, 05 Oct 2016 20:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=VqpyuU20SPZfsZFFtSGi5zjbDBEJFc9jl9DA2Ne88iQ=;
        b=0KllphjEoI9at0qDiDVwyQV2yARAh6cJg3T1qvHNgwlSs8/7Br2Wknb55kNs6pfbsh
         B0HuETNuvKDYAAGnBiUg6C5AfnEk+sVmE1YuxvbwFtUwNiMwB79YV/38PhK3281GxIf7
         K/6WLcNiH15EdlqLkZht/8nm9n/9SOeGEyGse2U6Y2JMqKT1ZhdZd0jwlEcysRJqJHXg
         9ZRqWKmL4OhHeepz0ZRLuGzHZG+B2MAnHAZu0+jiqN8nUnbATDxPqYT4n9m9191PLIYQ
         MXuSq19DF3rn7LjhMbKenmwk6ZpQhTDYfNSZStLQXkZCYMeyR8fcJ4zWsjxwL9G8Ksjp
         ak5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=VqpyuU20SPZfsZFFtSGi5zjbDBEJFc9jl9DA2Ne88iQ=;
        b=CFtc3B+1Ca2hcrvNOOyJBwuM0M//P+P7Red269+zWpB8eysK6d/Otv7P2Wi4UtbY5D
         K6/urkWCRfYWvxZmoPNROPAd5njNdzo2qjCtE6Cfg2Gbs33DRUb/kVpFAyEOnD4Yqy/y
         WdFAW4omo4opKKNc7IwUVOE0rW3SUSTc+3zJuLafsA5Htug9wGv9v2ACqT8FSlNQ/7R/
         AZ+5t7pv+7fHirl7xDYJEfRMuXfZ8OF5X51lTvPO4mytlljC8XkQOWj6lZMp7GUhY81X
         GYpSy6K8MoEOFwU7W8gvJelB7RT72s83ykOg82JygDZ3J8XYLfdsjpJ6Xs8tFKd1wpsp
         8/Zg==
X-Gm-Message-State: AA6/9RmD1UPcorgcFxRRBXTn3FFnM1szji3QuPcqfMPd5f4hAxfxvYblBgVL0VlOteg0bE6pLAmJcZOeyBZgXg==
X-Received: by 10.55.79.71 with SMTP id d68mr13164917qkb.95.1475723405757;
 Wed, 05 Oct 2016 20:10:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.20.51 with HTTP; Wed, 5 Oct 2016 20:10:05 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Wire Ghoul <wireghoul@gmail.com>
Date: Thu, 6 Oct 2016 14:10:05 +1100
Message-ID: <CAFz4UQ9sF5=EA52f_zDT=O_iGupM7JqcVEDB4wJw2JHU=NaHWg@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a114a6b3c6311b8053e29a13a

--001a114a6b3c6311b8053e29a13a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Oct 6, 2016 at 3:41 AM, Kurt Seifried <kurt@seifried.org> wrote:

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

--001a114a6b3c6311b8053e29a13a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Thu, Oct 6, 2016 at 3:41 AM, Kurt Seifried <span dir=
=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@se=
ifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><p class=3D"m_-2209066595366754666gmail-m_-323732369566349682gmail=
-p1" style=3D"font-size:12.8px"><span class=3D"m_-2209066595366754666gmail-=
m_-323732369566349682gmail-s1">Hi, I need to confirm that you have accepted=
 the MITRE=C2=A0<span class=3D"m_-2209066595366754666gmail-il">Terms</span>=
=C2=A0of=C2=A0<span class=3D"m_-2209066595366754666gmail-il">Use</span>=C2=
=A0for=C2=A0<span class=3D"m_-2209066595366754666gmail-il">CVE</span>, avai=
lable at:</span></p><p class=3D"m_-2209066595366754666gmail-m_-323732369566=
349682gmail-p2" style=3D"font-size:12.8px"><a href=3D"https://github.com/di=
stributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_=
blank">https://github.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>=
blob/master/TermsOfUse.md</a><br><span class=3D"m_-2209066595366754666gmail=
-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-22090665953667546=
66gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">and quote=
d below, please reply with &quot;I accept&quot; and I&#39;ll be able to pro=
cess your=C2=A0<span class=3D"m_-2209066595366754666gmail-il">CVE</span>=C2=
=A0request. Thanks!<br><span class=3D"m_-2209066595366754666gmail-m_-323732=
369566349682gmail-s1"></span></p><p class=3D"m_-2209066595366754666gmail-m_=
-323732369566349682gmail-p2" style=3D"font-size:12.8px"><span class=3D"m_-2=
209066595366754666gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-220=
9066595366754666gmail-il">Use</span><br><span class=3D"m_-22090665953667546=
66gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-2209066595=
366754666gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">LI=
CENSE<br><span class=3D"m_-2209066595366754666gmail-m_-323732369566349682gm=
ail-s1"></span></p><p class=3D"m_-2209066595366754666gmail-m_-3237323695663=
49682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-220906659536675=
4666gmail-m_-323732369566349682gmail-s1">Submissions: For all materials you=
 submit to the Common Vulnerabilities and Exposures (<span class=3D"m_-2209=
066595366754666gmail-il">CVE</span>=C2=AE), you hereby grant to The MITRE C=
orporation (MITRE) and all=C2=A0<span class=3D"m_-2209066595366754666gmail-=
il">CVE</span>=C2=A0Numbering Authorities (CNAs) a perpetual, worldwide, no=
n-exclusive, no-charge, royalty-free, irrevocable copyright license to repr=
oduce, prepare derivative works of, publicly display, publicly perform, sub=
license, and distribute such materials and derivative works. Unless require=
d by applicable law or agreed to in writing, you provide such materials on =
an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, e=
ither express or implied, including, without limitation, any warranties or =
conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PA=
RTICULAR PURPOSE.</span></p><p class=3D"m_-2209066595366754666gmail-m_-3237=
32369566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-220906=
6595366754666gmail-m_-323732369566349682gmail-s1"><span class=3D"m_-2209066=
595366754666gmail-il">CVE</span>=C2=A0Usage: MITRE hereby grants you a perp=
etual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyr=
ight license to reproduce, prepare derivative works of, publicly display, p=
ublicly perform, sublicense, and distribute Common Vulnerabilities and Expo=
sures (<span class=3D"m_-2209066595366754666gmail-il">CVE</span>=C2=AE). An=
y copy you make for such purposes is authorized provided that you reproduce=
 MITRE&#39;s copyright designation and this license in any such copy.</span=
></p><p class=3D"m_-2209066595366754666gmail-m_-323732369566349682gmail-p2"=
 style=3D"font-size:12.8px">DISCLAIMERS<br><span class=3D"m_-22090665953667=
54666gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-2209066=
595366754666gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"=
><span class=3D"m_-2209066595366754666gmail-m_-323732369566349682gmail-s1">=
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=
=A0<span class=3D"m_-2209066595366754666gmail-il">USE</span>=C2=A0OF THE IN=
FORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF=
 MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span></p><span class=
=3D"HOEnZb"><font color=3D"#888888"><div><br></div>-- <br><div class=3D"m_-=
2209066595366754666gmail_signature">Kurt Seifried<br><a href=3D"mailto:kurt=
@seifried.org" target=3D"_blank">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--001a114a6b3c6311b8053e29a13a--
