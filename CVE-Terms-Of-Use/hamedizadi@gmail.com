Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp236644vkh;
        Wed, 5 Oct 2016 10:04:04 -0700 (PDT)
X-Received: by 10.36.29.79 with SMTP id 76mr10589801itj.64.1475687044245;
        Wed, 05 Oct 2016 10:04:04 -0700 (PDT)
Return-Path: <hamedizadi@gmail.com>
Received: from mail-it0-x22e.google.com (mail-it0-x22e.google.com. [2607:f8b0:4001:c0b::22e])
        by mx.google.com with ESMTPS id l141si13844572ioe.47.2016.10.05.10.04.04
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 10:04:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamedizadi@gmail.com designates 2607:f8b0:4001:c0b::22e as permitted sender) client-ip=2607:f8b0:4001:c0b::22e;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of hamedizadi@gmail.com designates 2607:f8b0:4001:c0b::22e as permitted sender) smtp.mailfrom=hamedizadi@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22e.google.com with SMTP id o21so7366405itb.0
        for <kurt@seifried.org>; Wed, 05 Oct 2016 10:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=yuqmkrip2Ilhy211hnT6dM7QH/EkkAEma/JQQ3P7h9g=;
        b=Oq2sUPUofAufJ+hlewCkW3wsqjvurVklETzKKZIi5PNEmYyDkikqlE3jJHIQhk1QWS
         OrLZ+08Bn9PlvVj0QIJaMhEkGxl8sKHucjRE8a/8CBBRkz/26nMDClOx2eD+KTWoJtDm
         9h8wsgOIJGKibCN15NU4KqYZ3DssTnssa1D6EdWfo6zTWgStJMjSC9eaKJBvGSs5BWZT
         iB9vDw9BZ1c8XZ2CRTsDJcpEJcUJBwhvjw7+Q8Tw+UND/EgGQ001RUZdsnGi6H+nLxEn
         Y3y7vMvi+g3x0uFJSHSxWFblWo5vE6zDL7Tr6rQHEqMS6lToHy/safUoNqaYWH/zb7de
         6vaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=yuqmkrip2Ilhy211hnT6dM7QH/EkkAEma/JQQ3P7h9g=;
        b=IoWr+5iaZRlXle4rdVRlPPQP4oIC9RlJS00LdZwJuYjjxUXz6g9RgMuDd/FdXdx0j1
         eEuDYz91yVHsWE3y5WsGbJvI/KDZ5vCOM0Iff53pSugz7EzOkH/pHYdJTWqLSFkAB8mn
         4USiQQvcKFdY7mkcwDUXPLY0IBnu4j+vSqDbewk21n5ifJdF3u/OTaVNJzLNoJxCDGNT
         c2xNJ+0AQzqLpkHTmgAdDExK3fuvhktX5uPDS0LU72b4tTVIXHfY/OjG9D9g4VBJcNMM
         2BL4y5Hij5gaICKsovu2/9iasCu9peoP7y4Ppz0+RyVcKY/UhTaC6lZ9OgKIZOdp9GiF
         5yLQ==
X-Gm-Message-State: AA6/9RnLEMl7goR+OEzfpRsOAllO5Mf7GbdHGoa9s65ihcjWpYlp0Kxe14nuypNnaC+/SsuOImP/Cx6dq5K7ew==
X-Received: by 10.107.147.67 with SMTP id v64mr7482799iod.60.1475687020206;
 Wed, 05 Oct 2016 10:03:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.139.131 with HTTP; Wed, 5 Oct 2016 10:03:39 -0700 (PDT)
Received: by 10.79.139.131 with HTTP; Wed, 5 Oct 2016 10:03:39 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Hamed Izadi <hamedizadi@gmail.com>
Date: Wed, 5 Oct 2016 20:33:39 +0330
Message-ID: <CACq6w0S7GLEDtxToXXfSL-RMDazWDzLDfUdWdy0eVZKfT59WNw@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c054604a3a041053e21281e

--94eb2c054604a3a041053e21281e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept
Thank you so much

On Oct 5, 2016 8:11 PM, "Kurt Seifried" <kurt@seifried.org> wrote:

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

--94eb2c054604a3a041053e21281e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I accept<br>
Thank you so much</p>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Oct 5, 2016 8:=
11 PM, &quot;Kurt Seifried&quot; &lt;<a href=3D"mailto:kurt@seifried.org">k=
urt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><p class=3D"m_519083432925359411gmail-m_-323=
732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_519083=
432925359411gmail-m_-323732369566349682gmail-s1">Hi, I need to confirm that=
 you have accepted the MITRE=C2=A0<span class=3D"m_519083432925359411gmail-=
il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_519083432925359411gmail-il">=
Use</span>=C2=A0for=C2=A0<span class=3D"m_519083432925359411gmail-il">CVE</=
span>, available at:</span></p><p class=3D"m_519083432925359411gmail-m_-323=
732369566349682gmail-p2" style=3D"font-size:12.8px"><a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" ta=
rget=3D"_blank">https://github.com/distributed<wbr>weaknessfiling/DWF-Datab=
ase/<wbr>blob/master/TermsOfUse.md</a><br><span class=3D"m_5190834329253594=
11gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_51908343292=
5359411gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">and =
quoted below, please reply with &quot;I accept&quot; and I&#39;ll be able t=
o process your=C2=A0<span class=3D"m_519083432925359411gmail-il">CVE</span>=
=C2=A0request. Thanks!<br><span class=3D"m_519083432925359411gmail-m_-32373=
2369566349682gmail-s1"></span></p><p class=3D"m_519083432925359411gmail-m_-=
323732369566349682gmail-p2" style=3D"font-size:12.8px"><span class=3D"m_519=
083432925359411gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_5190834=
32925359411gmail-il">Use</span><br><span class=3D"m_519083432925359411gmail=
-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_519083432925359411=
gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">LICENSE<br>=
<span class=3D"m_519083432925359411gmail-m_-323732369566349682gmail-s1"></s=
pan></p><p class=3D"m_519083432925359411gmail-m_-323732369566349682gmail-p1=
" style=3D"font-size:12.8px"><span class=3D"m_519083432925359411gmail-m_-32=
3732369566349682gmail-s1">Submissions: For all materials you submit to the =
Common Vulnerabilities and Exposures (<span class=3D"m_519083432925359411gm=
ail-il">CVE</span>=C2=AE), you hereby grant to The MITRE Corporation (MITRE=
) and all=C2=A0<span class=3D"m_519083432925359411gmail-il">CVE</span>=C2=
=A0Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-c=
harge, royalty-free, irrevocable copyright license to reproduce, prepare de=
rivative works of, publicly display, publicly perform, sublicense, and dist=
ribute such materials and derivative works. Unless required by applicable l=
aw or agreed to in writing, you provide such materials on an &quot;AS IS&qu=
ot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or =
implied, including, without limitation, any warranties or conditions of TIT=
LE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.=
</span></p><p class=3D"m_519083432925359411gmail-m_-323732369566349682gmail=
-p1" style=3D"font-size:12.8px"><span class=3D"m_519083432925359411gmail-m_=
-323732369566349682gmail-s1"><span class=3D"m_519083432925359411gmail-il">C=
VE</span>=C2=A0Usage: MITRE hereby grants you a perpetual, worldwide, non-e=
xclusive, no-charge, royalty-free, irrevocable copyright license to reprodu=
ce, prepare derivative works of, publicly display, publicly perform, sublic=
ense, and distribute Common Vulnerabilities and Exposures (<span class=3D"m=
_519083432925359411gmail-il">CVE</span>=C2=AE). Any copy you make for such =
purposes is authorized provided that you reproduce MITRE&#39;s copyright de=
signation and this license in any such copy.</span></p><p class=3D"m_519083=
432925359411gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
>DISCLAIMERS<br><span class=3D"m_519083432925359411gmail-m_-323732369566349=
682gmail-s1"></span></p><p class=3D"m_519083432925359411gmail-m_-3237323695=
66349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_5190834329253=
59411gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMATION=
 CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; B=
ASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORE=
D BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGEN=
TS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING B=
UT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=3D"m_5190834329253=
59411gmail-il">USE</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INFRINGE=
 ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A P=
ARTICULAR PURPOSE.</span></p><div><br></div>-- <br><div class=3D"m_51908343=
2925359411gmail_signature">Kurt Seifried<br><a href=3D"mailto:kurt@seifried=
.org" target=3D"_blank">kurt@seifried.org</a></div>
</div>
</blockquote></div></div>

--94eb2c054604a3a041053e21281e--
