Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp227486vkh;
        Wed, 5 Oct 2016 09:44:10 -0700 (PDT)
X-Received: by 10.28.66.1 with SMTP id p1mr9424725wma.53.1475685850526;
        Wed, 05 Oct 2016 09:44:10 -0700 (PDT)
Return-Path: <sylvain.corlay@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by mx.google.com with ESMTPS id n3si12865209wmn.104.2016.10.05.09.44.10
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 09:44:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylvain.corlay@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sylvain.corlay@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=sylvain.corlay@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id f193so239589035wmg.0
        for <kurt@seifried.org>; Wed, 05 Oct 2016 09:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=60RdnI7BcLs5vcqjPwe9+hyV3Crk9SiELV0YYxDkYv8=;
        b=gD4JYRHMZGp726zn0EVUv5kQWDGjDmtcIvNAMO/FkN3zs6XBPyBxtuEDxEEGjK4+gK
         VvGppA5/b39hUjjamXhgDmlDZ9mcSxaevoTXJG34+2F4BnmxFjGMOlmCFNfJPN6KxUsV
         iqgXfVxCCsRYNzalXQdLK74kbCnslzZOX1kd78PSz7j2bXtdjlQ9oWenapvXNZvJOo0A
         Aj+hesY11YeVw7sSQuXfsDWCwIt0Tm6Q/Yv3RYuUFnQmsTcV1vPZZ+d7NwnH4oW9TwSA
         WvPsPO6iLLBiW/MI3FrebGsMdhc5OL0KvHIvOxZXXUxuBrEqOKd19uECexoEMr9yvWZh
         jVuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=60RdnI7BcLs5vcqjPwe9+hyV3Crk9SiELV0YYxDkYv8=;
        b=c1npuKXUMSymxDfi4cb9dhAjT02/5EMX+UqdD/F6jzmDat1+WdgcJoC4rvuw2ibyqw
         n0aY4rCkgLwdE1r/EMzp+shmZtxemEY58DIQn9gbhREfTXUBNuLjIw5acIQVDXyRPSZX
         BBQmQii3ha7Bn0JjkkK3kwmifDaf2+su5+0sRIrxS+DjRfk0xDDl7O9m7DCPLtzbMDB9
         I4U1Ii0DLcaaCTsFsaooMXfzM9gdUN/Gfb6o8vfT4PMbATSKV5urZNEdjS1SAcPHzWUM
         6ZNnUXOiuLQtq84JTzYgg8h82dhGLnTj5zXYyXBHmx91d8F+i8Bz3pzG+o/rbsJKjB3h
         Xx6w==
X-Gm-Message-State: AA6/9Rlzij1tXjUzcYjfwJReYfBI6i0tcUNoTyg8VhRCaF41PVsFw6JTuifxMysU63DVfejdjnh44rYehT/FjA==
X-Received: by 10.28.87.16 with SMTP id l16mr9365592wmb.75.1475685849908; Wed,
 05 Oct 2016 09:44:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.150.67 with HTTP; Wed, 5 Oct 2016 09:44:09 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Sylvain Corlay <sylvain.corlay@gmail.com>
Date: Wed, 5 Oct 2016 18:44:09 +0200
Message-ID: <CAK=Phk6rC=w3bAxykfAoW=spotoAbDeFUtLTnrU2O7ruPyaktw@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a1144375ae2498c053e20e226

--001a1144375ae2498c053e20e226
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

On Wed, Oct 5, 2016 at 6:41 PM, Kurt Seifried <kurt@seifried.org> wrote:

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

--001a1144375ae2498c053e20e226
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Wed, Oct 5, 2016 at 6:41 PM, Kurt Seifried <span dir=3D=
"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifr=
ied.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><p class=3D"m_-669127479660994285gmail-m_-323732369566349682gmail-p1"=
 style=3D"font-size:12.8px"><span class=3D"m_-669127479660994285gmail-m_-32=
3732369566349682gmail-s1">Hi, I need to confirm that you have accepted the =
MITRE=C2=A0<span class=3D"m_-669127479660994285gmail-il">Terms</span>=C2=A0=
of=C2=A0<span class=3D"m_-669127479660994285gmail-il">Use</span>=C2=A0for=
=C2=A0<span class=3D"m_-669127479660994285gmail-il">CVE</span>, available a=
t:</span></p><p class=3D"m_-669127479660994285gmail-m_-323732369566349682gm=
ail-p2" style=3D"font-size:12.8px"><a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">h=
ttps://github.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>blob/mas=
ter/TermsOfUse.md</a><br><span class=3D"m_-669127479660994285gmail-m_-32373=
2369566349682gmail-s1"></span></p><p class=3D"m_-669127479660994285gmail-m_=
-323732369566349682gmail-p2" style=3D"font-size:12.8px">and quoted below, p=
lease reply with &quot;I accept&quot; and I&#39;ll be able to process your=
=C2=A0<span class=3D"m_-669127479660994285gmail-il">CVE</span>=C2=A0request=
. Thanks!<br><span class=3D"m_-669127479660994285gmail-m_-32373236956634968=
2gmail-s1"></span></p><p class=3D"m_-669127479660994285gmail-m_-32373236956=
6349682gmail-p2" style=3D"font-size:12.8px"><span class=3D"m_-6691274796609=
94285gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-6691274796609942=
85gmail-il">Use</span><br><span class=3D"m_-669127479660994285gmail-m_-3237=
32369566349682gmail-s1"></span></p><p class=3D"m_-669127479660994285gmail-m=
_-323732369566349682gmail-p2" style=3D"font-size:12.8px">LICENSE<br><span c=
lass=3D"m_-669127479660994285gmail-m_-323732369566349682gmail-s1"></span></=
p><p class=3D"m_-669127479660994285gmail-m_-323732369566349682gmail-p1" sty=
le=3D"font-size:12.8px"><span class=3D"m_-669127479660994285gmail-m_-323732=
369566349682gmail-s1">Submissions: For all materials you submit to the Comm=
on Vulnerabilities and Exposures (<span class=3D"m_-669127479660994285gmail=
-il">CVE</span>=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all=C2=A0<span class=3D"m_-669127479660994285gmail-il">CVE</span>=C2=A0N=
umbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charg=
e, royalty-free, irrevocable copyright license to reproduce, prepare deriva=
tive works of, publicly display, publicly perform, sublicense, and distribu=
te such materials and derivative works. Unless required by applicable law o=
r agreed to in writing, you provide such materials on an &quot;AS IS&quot; =
BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or impl=
ied, including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</sp=
an></p><p class=3D"m_-669127479660994285gmail-m_-323732369566349682gmail-p1=
" style=3D"font-size:12.8px"><span class=3D"m_-669127479660994285gmail-m_-3=
23732369566349682gmail-s1"><span class=3D"m_-669127479660994285gmail-il">CV=
E</span>=C2=A0Usage: MITRE hereby grants you a perpetual, worldwide, non-ex=
clusive, no-charge, royalty-free, irrevocable copyright license to reproduc=
e, prepare derivative works of, publicly display, publicly perform, sublice=
nse, and distribute Common Vulnerabilities and Exposures (<span class=3D"m_=
-669127479660994285gmail-il">CVE</span>=C2=AE). Any copy you make for such =
purposes is authorized provided that you reproduce MITRE&#39;s copyright de=
signation and this license in any such copy.</span></p><p class=3D"m_-66912=
7479660994285gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px=
">DISCLAIMERS<br><span class=3D"m_-669127479660994285gmail-m_-3237323695663=
49682gmail-s1"></span></p><p class=3D"m_-669127479660994285gmail-m_-3237323=
69566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-669127479=
660994285gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMA=
TION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quo=
t; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPON=
SORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, =
AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDI=
NG BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=3D"m_-66912747=
9660994285gmail-il">USE</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INF=
RINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FO=
R A PARTICULAR PURPOSE.</span></p><span class=3D"HOEnZb"><font color=3D"#88=
8888"><div><br></div>-- <br><div class=3D"m_-669127479660994285gmail_signat=
ure">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank=
">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--001a1144375ae2498c053e20e226--
