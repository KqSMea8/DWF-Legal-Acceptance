Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp122669vkh;
        Wed, 5 Oct 2016 17:22:31 -0700 (PDT)
X-Received: by 10.202.240.135 with SMTP id o129mr9489660oih.14.1475713351878;
        Wed, 05 Oct 2016 17:22:31 -0700 (PDT)
Return-Path: <scott@paragonie.com>
Received: from mail-oi0-x231.google.com (mail-oi0-x231.google.com. [2607:f8b0:4003:c06::231])
        by mx.google.com with ESMTPS id z26si11037721otd.174.2016.10.05.17.22.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 17:22:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of scott@paragonie.com designates 2607:f8b0:4003:c06::231 as permitted sender) client-ip=2607:f8b0:4003:c06::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@paragonie-com.20150623.gappssmtp.com;
       spf=pass (google.com: domain of scott@paragonie.com designates 2607:f8b0:4003:c06::231 as permitted sender) smtp.mailfrom=scott@paragonie.com
Received: by mail-oi0-x231.google.com with SMTP id n132so4657391oih.1
        for <kurt@seifried.org>; Wed, 05 Oct 2016 17:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=dsgcFI9mcbbJKHXjwSJE02iXoi5nAu1Qfro6MJXVsQQ=;
        b=vZvHLrvRYyHB83P2AO96ZYLCqWqH145gkdmXOkhMsbepUng3wdLHuRg/oKp5wwq/l4
         ONOmCNxasfaRZwiRklLiQA6/ZzqFd3dj+ffh6KcL2EjzqU60ejE69AU4qZZGHv3XHDXR
         rjATqFuR89OOMXFWt+gDYmAeS6km19zbpnKHX8boL8b5ufufQFVr3ESOYhq2r4Gube1v
         ONNvQmmYOyMaABd6+xct+SRaIzZOzoDJbebOJylcKry2zs//80NYRN4mZsL/PASYhfeA
         ZVirXxBdFjhFmh5Jj2URHPfVupWALbVlyLXdKiNj0HrICQc6bzKDtypsQyV19N6unidd
         Ip9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=dsgcFI9mcbbJKHXjwSJE02iXoi5nAu1Qfro6MJXVsQQ=;
        b=I/N/G+D+Ub1PEvKsKF/D4U82LlvsQwEv24uDCJ2stjsLp+vLeUWLTygqcPFxjm7Ei5
         n7O0EGjTFyz/FHT9q+kJ+55NEvbougqOqnQ204zHC1tG+n2gwGqkPAN4FsoiLwY/RJZJ
         vsYd01Ka0Hdd/bkC1oIN8BRZ5yLcVhepL3sfLrlb9sZ4TkY7dwdF6F5sOjRSopAJ+Egy
         yU2cjokox06te9Ko0DBvhQ9O/sxudai/nGj4on/7LZiQy+Kb6di6CYn7VDdwofeE/yR3
         RPwU8Q2BxDumhWfgjWhdSvRAOGf5fsVGpx5q9en9RU4C32CSV5B8ZEFNgqYeqYw5OBk4
         dXAA==
X-Gm-Message-State: AA6/9Rk3NrAzIY18r8+XbP/BMhwYiotCFtnTgiASniRe3XTvR5rHIXfhTgkAM23Pm2YpSpsKZItilhuszxLQeg==
X-Received: by 10.157.20.71 with SMTP id h65mr7153616oth.186.1475713351256;
 Wed, 05 Oct 2016 17:22:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.25.135 with HTTP; Wed, 5 Oct 2016 17:22:30 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Scott Arciszewski <scott@paragonie.com>
Date: Wed, 5 Oct 2016 20:22:30 -0400
Message-ID: <CAKws9z3uMTDX2uqar7sQr32t=F1wcZYYEELGuLBsHSi-gLM1uQ@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a113758c817b687053e274a77

--001a113758c817b687053e274a77
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>

On Wed, Oct 5, 2016 at 12:41 PM, Kurt Seifried <kurt@seifried.org> wrote:

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

--001a113758c817b687053e274a77
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">I accept</div></div><div class=3D"gmail_extra"><br clear=3D"al=
l"><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><=
div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"m=
onospace, monospace">Scott Arciszewski</font><div><font face=3D"monospace, =
monospace">Chief Development Officer</font></div><div><a href=3D"https://pa=
ragonie.com" target=3D"_blank"><font face=3D"monospace, monospace">Paragon =
Initiative Enterprises</font></a></div></div></div></div></div></div></div>=
</div>
<br><div class=3D"gmail_quote">On Wed, Oct 5, 2016 at 12:41 PM, Kurt Seifri=
ed <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_bl=
ank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr"><p style=3D"font-size:12.8px"><span>Hi, I need to conf=
irm that you have accepted the MITRE=C2=A0<span>Terms</span>=C2=A0of=C2=A0<=
span>Use</span>=C2=A0for=C2=A0<span>CVE</span>, available at:</span></p><p =
style=3D"font-size:12.8px"><a href=3D"https://github.com/distributedweaknes=
sfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">https://g=
ithub.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>blob/master/Term=
sOfUse.md</a><br><span></span></p><p style=3D"font-size:12.8px">and quoted =
below, please reply with &quot;I accept&quot; and I&#39;ll be able to proce=
ss your=C2=A0<span>CVE</span>=C2=A0request. Thanks!<br><span></span></p><p =
style=3D"font-size:12.8px"><span>Terms</span>=C2=A0of=C2=A0<span>Use</span>=
<br><span></span></p><p style=3D"font-size:12.8px">LICENSE<br><span></span>=
</p><p style=3D"font-size:12.8px"><span>Submissions: For all materials you =
submit to the Common Vulnerabilities and Exposures (<span>CVE</span>=C2=AE)=
, you hereby grant to The MITRE Corporation (MITRE) and all=C2=A0<span>CVE<=
/span>=C2=A0Numbering Authorities (CNAs) a perpetual, worldwide, non-exclus=
ive, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicense,=
 and distribute such materials and derivative works. Unless required by app=
licable law or agreed to in writing, you provide such materials on an &quot=
;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either ex=
press or implied, including, without limitation, any warranties or conditio=
ns of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR=
 PURPOSE.</span></p><p style=3D"font-size:12.8px"><span><span>CVE</span>=C2=
=A0Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no=
-charge, royalty-free, irrevocable copyright license to reproduce, prepare =
derivative works of, publicly display, publicly perform, sublicense, and di=
stribute Common Vulnerabilities and Exposures (<span>CVE</span>=C2=AE). Any=
 copy you make for such purposes is authorized provided that you reproduce =
MITRE&#39;s copyright designation and this license in any such copy.</span>=
</p><p style=3D"font-size:12.8px">DISCLAIMERS<br><span></span></p><p style=
=3D"font-size:12.8px"><span>ALL DOCUMENTS AND THE INFORMATION CONTAINED THE=
REIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE C=
ONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY),=
 THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOY=
EES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED=
 TO ANY WARRANTY THAT THE=C2=A0<span>USE</span>=C2=A0OF THE INFORMATION THE=
REIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABIL=
ITY OR FITNESS FOR A PARTICULAR PURPOSE.</span></p><span class=3D"HOEnZb"><=
font color=3D"#888888"><div><br></div>-- <br><div>Kurt Seifried<br><a href=
=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--001a113758c817b687053e274a77--
