Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp4981vkh;
        Wed, 5 Oct 2016 11:59:38 -0700 (PDT)
X-Received: by 10.200.42.122 with SMTP id l55mr2811114qtl.157.1475693978742;
        Wed, 05 Oct 2016 11:59:38 -0700 (PDT)
Return-Path: <guillebrgs@gmail.com>
Received: from mail-qt0-x235.google.com (mail-qt0-x235.google.com. [2607:f8b0:400d:c0d::235])
        by mx.google.com with ESMTPS id t188si5974669qkb.265.2016.10.05.11.59.38
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 11:59:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillebrgs@gmail.com designates 2607:f8b0:400d:c0d::235 as permitted sender) client-ip=2607:f8b0:400d:c0d::235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of guillebrgs@gmail.com designates 2607:f8b0:400d:c0d::235 as permitted sender) smtp.mailfrom=guillebrgs@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x235.google.com with SMTP id q7so7305433qtq.1
        for <kurt@seifried.org>; Wed, 05 Oct 2016 11:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=C8hXoS64lHaVAktOAd74IBEAThQH94qeYcQRbQZqixg=;
        b=MQ8ySegm1y2WOYeK5eibpu8Sjh53wTAMLhCfb1/9kXk9L3Sj+HVORJyuXDuRgRvB8d
         GNHg4y1P0vPLKkUY9zJ5UOG4fWW+QPMeCTkQSyeM9RUYIozAFCYrxiVMNeJDy0iWNr5O
         h+Vpm1dtllG6uUup7m1dywpAVcr+SAFBl1CrXoFckp9tjzg77maiMVoZKXWNb6VC0ZRw
         yjKjWKNWqR16wRlD8DgJ9Z7DRj+fP0wOgAhsXIm7VapyjEkc7yiK6UDrkx+Oe0xdxRUJ
         DLZCdKhr70ZK9PCc2hCSeahD+z2HTpx9wliVkBYuX6qfRDCT35ldx++iOCyT9vToyrbG
         kGjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=C8hXoS64lHaVAktOAd74IBEAThQH94qeYcQRbQZqixg=;
        b=kSLaqUsfBcaVmhd/GG4xdmST99EClWt6+bY5nxACgs0wP9luB7Cqn0XwdcuNa4fmaq
         ZCu1wKlQyqJz67ccBv8IeweuacAJ1sd0KYPJ1qIOsdE34X0odFH/V1HmRhLXQa0+WE/y
         sJByw16pOGP+V1SgpamQHau/dM07kVNEKc5HFfB2O6i+iImP2XwZBdOuGmMznyyuNiKg
         7grI4Vw8CXxrPcWxnf0nmuMMSWsCETN8D+kkw9b1Vs6Yh97Uhgr5PWn8aZZ+Zrhv88SN
         /tMO9AZdG9m90abOAibSGPiFAUI6ZxnoTa0TC3bH88+gefQccYj+QIHDfTe4CTnxsieE
         5qWQ==
X-Gm-Message-State: AA6/9Rn1ciSyRfCKZTK/WPGYDjrKS3aB7sY8t+rdnz8BWVhnFfVdBh3IwwXVjWFVbIahV2SJ0vRoIWbl5fj6AA==
X-Received: by 10.200.33.152 with SMTP id 24mr10266516qty.104.1475693978284;
 Wed, 05 Oct 2016 11:59:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.53.41 with HTTP; Wed, 5 Oct 2016 11:59:37 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Guille G <guillebrgs@gmail.com>
Date: Wed, 5 Oct 2016 20:59:37 +0200
Message-ID: <CAHSpe-10d7=oDjNovPFjt3aVkAsvmUufE1+nCQ3=hid4Sgs4zg@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a11403bd45f7809053e22c75d

--001a11403bd45f7809053e22c75d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

2016-10-05 18:41 GMT+02:00 Kurt Seifried <kurt@seifried.org>:

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

--001a11403bd45f7809053e22c75d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">I accept=C2=A0</span><br>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2016-10-05 =
18:41 GMT+02:00 Kurt Seifried <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@=
seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span>:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr"><p class=3D"m_-627989960320613509=
6gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span clas=
s=3D"m_-6279899603206135096gmail-m_-323732369566349682gmail-s1">Hi, I need =
to confirm that you have accepted the MITRE=C2=A0<span class=3D"m_-62798996=
03206135096gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-6279899603=
206135096gmail-il">Use</span>=C2=A0for=C2=A0<span class=3D"m_-6279899603206=
135096gmail-il">CVE</span>, available at:</span></p><p class=3D"m_-62798996=
03206135096gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">=
<a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/m=
aster/TermsOfUse.md" target=3D"_blank">https://github.com/distributed<wbr>w=
eaknessfiling/DWF-Database/<wbr>blob/master/TermsOfUse.md</a><br><span clas=
s=3D"m_-6279899603206135096gmail-m_-323732369566349682gmail-s1"></span></p>=
<p class=3D"m_-6279899603206135096gmail-m_-323732369566349682gmail-p2" styl=
e=3D"font-size:12.8px">and quoted below, please reply with &quot;I accept&q=
uot; and I&#39;ll be able to process your=C2=A0<span class=3D"m_-6279899603=
206135096gmail-il">CVE</span>=C2=A0request. Thanks!<br><span class=3D"m_-62=
79899603206135096gmail-m_-323732369566349682gmail-s1"></span></p><p class=
=3D"m_-6279899603206135096gmail-m_-323732369566349682gmail-p2" style=3D"fon=
t-size:12.8px"><span class=3D"m_-6279899603206135096gmail-il">Terms</span>=
=C2=A0of=C2=A0<span class=3D"m_-6279899603206135096gmail-il">Use</span><br>=
<span class=3D"m_-6279899603206135096gmail-m_-323732369566349682gmail-s1"><=
/span></p><p class=3D"m_-6279899603206135096gmail-m_-323732369566349682gmai=
l-p2" style=3D"font-size:12.8px">LICENSE<br><span class=3D"m_-6279899603206=
135096gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-627989=
9603206135096gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px=
"><span class=3D"m_-6279899603206135096gmail-m_-323732369566349682gmail-s1"=
>Submissions: For all materials you submit to the Common Vulnerabilities an=
d Exposures (<span class=3D"m_-6279899603206135096gmail-il">CVE</span>=C2=
=AE), you hereby grant to The MITRE Corporation (MITRE) and all=C2=A0<span =
class=3D"m_-6279899603206135096gmail-il">CVE</span>=C2=A0Numbering Authorit=
ies (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, pu=
blicly display, publicly perform, sublicense, and distribute such materials=
 and derivative works. Unless required by applicable law or agreed to in wr=
iting, you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WA=
RRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, w=
ithout limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT,=
 MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p class=
=3D"m_-6279899603206135096gmail-m_-323732369566349682gmail-p1" style=3D"fon=
t-size:12.8px"><span class=3D"m_-6279899603206135096gmail-m_-32373236956634=
9682gmail-s1"><span class=3D"m_-6279899603206135096gmail-il">CVE</span>=C2=
=A0Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no=
-charge, royalty-free, irrevocable copyright license to reproduce, prepare =
derivative works of, publicly display, publicly perform, sublicense, and di=
stribute Common Vulnerabilities and Exposures (<span class=3D"m_-6279899603=
206135096gmail-il">CVE</span>=C2=AE). Any copy you make for such purposes i=
s authorized provided that you reproduce MITRE&#39;s copyright designation =
and this license in any such copy.</span></p><p class=3D"m_-627989960320613=
5096gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">DISCLAI=
MERS<br><span class=3D"m_-6279899603206135096gmail-m_-323732369566349682gma=
il-s1"></span></p><p class=3D"m_-6279899603206135096gmail-m_-32373236956634=
9682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-6279899603206135=
096gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMATION C=
ONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BAS=
IS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED =
BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS=
, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT=
 NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=3D"m_-62798996032061=
35096gmail-il">USE</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INFRINGE=
 ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A P=
ARTICULAR PURPOSE.</span></p><span class=3D"HOEnZb"><font color=3D"#888888"=
><div><br></div>-- <br><div class=3D"m_-6279899603206135096gmail_signature"=
>Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank">ku=
rt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--001a11403bd45f7809053e22c75d--
