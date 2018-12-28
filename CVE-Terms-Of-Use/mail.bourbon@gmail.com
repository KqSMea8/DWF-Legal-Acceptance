Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp74203vkh;
        Wed, 5 Oct 2016 14:58:40 -0700 (PDT)
X-Received: by 10.31.21.85 with SMTP id 82mr8968787vkv.10.1475704720806;
        Wed, 05 Oct 2016 14:58:40 -0700 (PDT)
Return-Path: <mail.bourbon@gmail.com>
Received: from mail-vk0-x235.google.com (mail-vk0-x235.google.com. [2607:f8b0:400c:c05::235])
        by mx.google.com with ESMTPS id p30si1950867uaa.32.2016.10.05.14.58.40
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 14:58:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mail.bourbon@gmail.com designates 2607:f8b0:400c:c05::235 as permitted sender) client-ip=2607:f8b0:400c:c05::235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mail.bourbon@gmail.com designates 2607:f8b0:400c:c05::235 as permitted sender) smtp.mailfrom=mail.bourbon@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x235.google.com with SMTP id 192so1162686vkl.2
        for <kurt@seifried.org>; Wed, 05 Oct 2016 14:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ghlE9prcRQwtyIRTgTIps2flDYBivmM0onr9RE8mPrw=;
        b=aY+ArUnesz6frmhHEz0+ILQJYvyBzMeg4Exd6R4RcRl1+urf3pU2maQyzkLYNSrpcf
         gUmpiuMMHP7GG4QbJJrQlzYr0bdzw6+X/onyd6fiElYMLgir5CmjLaMwKkpHeFsllV58
         O2TD1LPCLFl8EC8Tge4rrKaI7AGnj49tU1qoaQ/yDWTbdGAbT2ip3KaFuKMZA9hNUR0p
         oJ8A0vBBzSGbUHrZ723bNcUXqG9v/dskBHnaCXtYhQSAvuP+3GN8yWyB3xqL5Cuok0go
         D90e92mwBKByvKbo4RTwsnK/NKkehY/bbHUI7T5ej5v/TueMxuI1YbxA6h39IGV/xxXu
         JjkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ghlE9prcRQwtyIRTgTIps2flDYBivmM0onr9RE8mPrw=;
        b=MzU64JAEuwdfpMaEe3xKIH0eY+OIxjbcDNetF1ZaPMu6m3pvywT1P9BBTxK+hJy65N
         BqAuum3L7LR/iYKgh4nfYR265IxBFOQzQ6oriViavYgPu9qGSJfJOik23+nd+O/eqzCI
         0SxmZz4Jz0uOfphS03/6RpQSp46Bzx04xhGEc0sInUTBsFJhhpc41DUKTRcqpdcqRrI5
         n7PDsvnUvKvkfzr+LrujDQia3hqOAjpJhxRs5n3tCxlca5A0Na57r4XFkwbvCGHUqYTi
         McYVpDtBcYTSSb+a/13Lz0wPYQ6fquMzK8oc7ciPFFJ+LzMgHBZyMahmDnqM4ob93TmZ
         yVuQ==
X-Gm-Message-State: AA6/9RmGy6YEmr+WKbrmZL+7ceZFhM38Wq95ZXCs9tjO3nlnr5Su6GsGbBiViCTTp9XY9ED94d1VMcW9E5dk/g==
X-Received: by 10.31.166.213 with SMTP id p204mr7558305vke.16.1475704720387;
 Wed, 05 Oct 2016 14:58:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.67.39 with HTTP; Wed, 5 Oct 2016 14:58:39 -0700 (PDT)
Received: by 10.176.67.39 with HTTP; Wed, 5 Oct 2016 14:58:39 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Jean-Marie Bourbon <mail.bourbon@gmail.com>
Date: Wed, 5 Oct 2016 23:58:39 +0200
Message-ID: <CAORzZ6X4n3BVhPDQFFLwUhC9yLPQ48QmtF=t5r0WJS3EnBuB6Q@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a11425cbaa6f441053e25478b

--001a11425cbaa6f441053e25478b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

Le 5 oct. 2016 18:41, "Kurt Seifried" <kurt@seifried.org> a =C3=A9crit :

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

--001a11425cbaa6f441053e25478b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I accept</p>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">Le=C2=A05 oct. 20=
16 18:41, &quot;Kurt Seifried&quot; &lt;<a href=3D"mailto:kurt@seifried.org=
">kurt@seifried.org</a>&gt; a =C3=A9crit=C2=A0:<br type=3D"attribution"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr"><p class=3D"m_1114468874486559=
339gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span cl=
ass=3D"m_1114468874486559339gmail-m_-323732369566349682gmail-s1">Hi, I need=
 to confirm that you have accepted the MITRE=C2=A0<span class=3D"m_11144688=
74486559339gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_11144688744=
86559339gmail-il">Use</span>=C2=A0for=C2=A0<span class=3D"m_111446887448655=
9339gmail-il">CVE</span>, available at:</span></p><p class=3D"m_11144688744=
86559339gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"><a =
href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/mast=
er/TermsOfUse.md" target=3D"_blank">https://github.com/distributed<wbr>weak=
nessfiling/DWF-Database/<wbr>blob/master/TermsOfUse.md</a><br><span class=
=3D"m_1114468874486559339gmail-m_-323732369566349682gmail-s1"></span></p><p=
 class=3D"m_1114468874486559339gmail-m_-323732369566349682gmail-p2" style=
=3D"font-size:12.8px">and quoted below, please reply with &quot;I accept&qu=
ot; and I&#39;ll be able to process your=C2=A0<span class=3D"m_111446887448=
6559339gmail-il">CVE</span>=C2=A0request. Thanks!<br><span class=3D"m_11144=
68874486559339gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m=
_1114468874486559339gmail-m_-323732369566349682gmail-p2" style=3D"font-size=
:12.8px"><span class=3D"m_1114468874486559339gmail-il">Terms</span>=C2=A0of=
=C2=A0<span class=3D"m_1114468874486559339gmail-il">Use</span><br><span cla=
ss=3D"m_1114468874486559339gmail-m_-323732369566349682gmail-s1"></span></p>=
<p class=3D"m_1114468874486559339gmail-m_-323732369566349682gmail-p2" style=
=3D"font-size:12.8px">LICENSE<br><span class=3D"m_1114468874486559339gmail-=
m_-323732369566349682gmail-s1"></span></p><p class=3D"m_1114468874486559339=
gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=
=3D"m_1114468874486559339gmail-m_-323732369566349682gmail-s1">Submissions: =
For all materials you submit to the Common Vulnerabilities and Exposures (<=
span class=3D"m_1114468874486559339gmail-il">CVE</span>=C2=AE), you hereby =
grant to The MITRE Corporation (MITRE) and all=C2=A0<span class=3D"m_111446=
8874486559339gmail-il">CVE</span>=C2=A0Numbering Authorities (CNAs) a perpe=
tual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyri=
ght license to reproduce, prepare derivative works of, publicly display, pu=
blicly perform, sublicense, and distribute such materials and derivative wo=
rks. Unless required by applicable law or agreed to in writing, you provide=
 such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDIT=
IONS OF ANY KIND, either express or implied, including, without limitation,=
 any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, =
or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p class=3D"m_11144688744865=
59339gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span =
class=3D"m_1114468874486559339gmail-m_-323732369566349682gmail-s1"><span cl=
ass=3D"m_1114468874486559339gmail-il">CVE</span>=C2=A0Usage: MITRE hereby g=
rants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, i=
rrevocable copyright license to reproduce, prepare derivative works of, pub=
licly display, publicly perform, sublicense, and distribute Common Vulnerab=
ilities and Exposures (<span class=3D"m_1114468874486559339gmail-il">CVE</s=
pan>=C2=AE). Any copy you make for such purposes is authorized provided tha=
t you reproduce MITRE&#39;s copyright designation and this license in any s=
uch copy.</span></p><p class=3D"m_1114468874486559339gmail-m_-3237323695663=
49682gmail-p2" style=3D"font-size:12.8px">DISCLAIMERS<br><span class=3D"m_1=
114468874486559339gmail-m_-323732369566349682gmail-s1"></span></p><p class=
=3D"m_1114468874486559339gmail-m_-323732369566349682gmail-p1" style=3D"font=
-size:12.8px"><span class=3D"m_1114468874486559339gmail-m_-3237323695663496=
82gmail-s1">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY=
 MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE =
ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPO=
RATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM AL=
L WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY=
 THAT THE=C2=A0<span class=3D"m_1114468874486559339gmail-il">USE</span>=C2=
=A0OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED W=
ARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span></p=
><div><br></div>-- <br><div class=3D"m_1114468874486559339gmail_signature">=
Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kur=
t@seifried.org</a></div>
</div>
</blockquote></div></div>

--001a11425cbaa6f441053e25478b--
