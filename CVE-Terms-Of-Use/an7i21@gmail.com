Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp226902vkh;
        Wed, 5 Oct 2016 09:42:43 -0700 (PDT)
X-Received: by 10.107.36.80 with SMTP id k77mr11147005iok.92.1475685763488;
        Wed, 05 Oct 2016 09:42:43 -0700 (PDT)
Return-Path: <an7i21@gmail.com>
Received: from mail-it0-x22b.google.com (mail-it0-x22b.google.com. [2607:f8b0:4001:c0b::22b])
        by mx.google.com with ESMTPS id y139si925360ioy.132.2016.10.05.09.42.43
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 09:42:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of an7i21@gmail.com designates 2607:f8b0:4001:c0b::22b as permitted sender) client-ip=2607:f8b0:4001:c0b::22b;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of an7i21@gmail.com designates 2607:f8b0:4001:c0b::22b as permitted sender) smtp.mailfrom=an7i21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22b.google.com with SMTP id j69so205028258itb.0
        for <kurt@seifried.org>; Wed, 05 Oct 2016 09:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=GE6+PaWM6BhcfzOi52uXuxPPwfrxVcxFKbQbQc61gVI=;
        b=Kr1XfC/OFh79WgcJgclSMlVHJKyVWl3LUThF8q+rWjGQeUfByFzHQVgREt/tJz64kO
         HJK/PMThqQKsLh9vcoK2j4RFaPno5+hzglV7Oqg7WD39a6sir1ASstDpzHyaU7xixRGk
         It0jpzDBC81S2/Sp64h1fIffU/tdnZvCY855NTmy4cdIgvEaQ79hO1aw8hd9ZJBZrP94
         hEiv9IHb3kToQDas91Gkp5NoURCXw/Rk/HUDudT3ONvOV0Zuo/BWihQZC+I6RQfuK7fU
         h8RrPm0eJhgjgU3kbC6ucDimv5qYihpIhNXncOIokHzbqlBXMCMHt2QlKoLqxzV3hHUb
         hXLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=GE6+PaWM6BhcfzOi52uXuxPPwfrxVcxFKbQbQc61gVI=;
        b=PAh2mZD69qmIm0zJxk9zcjOnN/XFUsWm7JePQ0sSo/Prjm4pszZs06yBHpTFWPCUjW
         Q7HF6aQEgtDNhmbnoJBXWr5R6n5gqFcEXeK1BrHJBpixZsUPWYTCx/GKOH2ST5utAau9
         tjzG0QZ18KRCcD79y8Fkx92gnX/KK8bSj7DoIoiRDZObP06xIv9PHJE50VPY5GNSKAFV
         4Ye/RFfSZQVaKcmTlFbIsm59CJ6Hhe/HbR+jIbemZBziYg3i00Z3bsny6b0smmYGirb/
         aF8tv9UgHSLhcRpVT+jKZi4Uc09UQ0AsYeIb+cmZ+k87pYaxE64/wQ1n0VYVuVB9x4ib
         npmA==
X-Gm-Message-State: AA6/9Rl7bpiAxJ4ZhFCDpcgvSpUqQbhEWqBUcN26FUQrBi7m6cXQA+rpOZrB3JrVMky69UyVwNomDhUCDYUyxA==
X-Received: by 10.107.160.83 with SMTP id j80mr10229265ioe.27.1475685745285;
 Wed, 05 Oct 2016 09:42:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.1.156 with HTTP; Wed, 5 Oct 2016 09:42:24 -0700 (PDT)
Received: by 10.79.1.156 with HTTP; Wed, 5 Oct 2016 09:42:24 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: An7i <an7i21@gmail.com>
Date: Wed, 5 Oct 2016 20:42:24 +0400
Message-ID: <CALXB5nA1_pWVhn7pPYnO5RW+HGopqxT4kxGrA-rgEh-moNjvjA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a11405e32a5e26d053e20dcac

--001a11405e32a5e26d053e20dcac
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Oct 5, 2016 7:41 PM, "Kurt Seifried" <kurt@seifried.org> wrote:

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

--001a11405e32a5e26d053e20dcac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I accept</p>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Oct 5, 2016 7:=
41 PM, &quot;Kurt Seifried&quot; &lt;<a href=3D"mailto:kurt@seifried.org">k=
urt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><p class=3D"m_-8434638997730532205gmail-m_-3=
23732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-843=
4638997730532205gmail-m_-323732369566349682gmail-s1">Hi, I need to confirm =
that you have accepted the MITRE=C2=A0<span class=3D"m_-8434638997730532205=
gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-8434638997730532205gm=
ail-il">Use</span>=C2=A0for=C2=A0<span class=3D"m_-8434638997730532205gmail=
-il">CVE</span>, available at:</span></p><p class=3D"m_-8434638997730532205=
gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"><a href=3D"=
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Terms=
OfUse.md" target=3D"_blank">https://github.com/distributed<wbr>weaknessfili=
ng/DWF-Database/<wbr>blob/master/TermsOfUse.md</a><br><span class=3D"m_-843=
4638997730532205gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D=
"m_-8434638997730532205gmail-m_-323732369566349682gmail-p2" style=3D"font-s=
ize:12.8px">and quoted below, please reply with &quot;I accept&quot; and I&=
#39;ll be able to process your=C2=A0<span class=3D"m_-8434638997730532205gm=
ail-il">CVE</span>=C2=A0request. Thanks!<br><span class=3D"m_-8434638997730=
532205gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-843463=
8997730532205gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px=
"><span class=3D"m_-8434638997730532205gmail-il">Terms</span>=C2=A0of=C2=A0=
<span class=3D"m_-8434638997730532205gmail-il">Use</span><br><span class=3D=
"m_-8434638997730532205gmail-m_-323732369566349682gmail-s1"></span></p><p c=
lass=3D"m_-8434638997730532205gmail-m_-323732369566349682gmail-p2" style=3D=
"font-size:12.8px">LICENSE<br><span class=3D"m_-8434638997730532205gmail-m_=
-323732369566349682gmail-s1"></span></p><p class=3D"m_-8434638997730532205g=
mail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=
=3D"m_-8434638997730532205gmail-m_-323732369566349682gmail-s1">Submissions:=
 For all materials you submit to the Common Vulnerabilities and Exposures (=
<span class=3D"m_-8434638997730532205gmail-il">CVE</span>=C2=AE), you hereb=
y grant to The MITRE Corporation (MITRE) and all=C2=A0<span class=3D"m_-843=
4638997730532205gmail-il">CVE</span>=C2=A0Numbering Authorities (CNAs) a pe=
rpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable cop=
yright license to reproduce, prepare derivative works of, publicly display,=
 publicly perform, sublicense, and distribute such materials and derivative=
 works. Unless required by applicable law or agreed to in writing, you prov=
ide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CON=
DITIONS OF ANY KIND, either express or implied, including, without limitati=
on, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILIT=
Y, or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p class=3D"m_-8434638997=
730532205gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><s=
pan class=3D"m_-8434638997730532205gmail-m_-323732369566349682gmail-s1"><sp=
an class=3D"m_-8434638997730532205gmail-il">CVE</span>=C2=A0Usage: MITRE he=
reby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-f=
ree, irrevocable copyright license to reproduce, prepare derivative works o=
f, publicly display, publicly perform, sublicense, and distribute Common Vu=
lnerabilities and Exposures (<span class=3D"m_-8434638997730532205gmail-il"=
>CVE</span>=C2=AE). Any copy you make for such purposes is authorized provi=
ded that you reproduce MITRE&#39;s copyright designation and this license i=
n any such copy.</span></p><p class=3D"m_-8434638997730532205gmail-m_-32373=
2369566349682gmail-p2" style=3D"font-size:12.8px">DISCLAIMERS<br><span clas=
s=3D"m_-8434638997730532205gmail-m_-323732369566349682gmail-s1"></span></p>=
<p class=3D"m_-8434638997730532205gmail-m_-323732369566349682gmail-p1" styl=
e=3D"font-size:12.8px"><span class=3D"m_-8434638997730532205gmail-m_-323732=
369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN P=
ROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIB=
UTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE M=
ITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, D=
ISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO AN=
Y WARRANTY THAT THE=C2=A0<span class=3D"m_-8434638997730532205gmail-il">USE=
</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY=
 IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.=
</span></p><div><br></div>-- <br><div class=3D"m_-8434638997730532205gmail_=
signature">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"=
_blank">kurt@seifried.org</a></div>
</div>
</blockquote></div></div>

--001a11405e32a5e26d053e20dcac--
