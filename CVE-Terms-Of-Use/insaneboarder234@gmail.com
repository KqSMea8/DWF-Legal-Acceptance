Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp277797vkh;
        Wed, 5 Oct 2016 11:36:20 -0700 (PDT)
X-Received: by 10.36.65.22 with SMTP id x22mr28811158ita.111.1475692580751;
        Wed, 05 Oct 2016 11:36:20 -0700 (PDT)
Return-Path: <insaneboarder234@gmail.com>
Received: from mail-it0-x236.google.com (mail-it0-x236.google.com. [2607:f8b0:4001:c0b::236])
        by mx.google.com with ESMTPS id y67si14202387itb.111.2016.10.05.11.36.20
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 11:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of insaneboarder234@gmail.com designates 2607:f8b0:4001:c0b::236 as permitted sender) client-ip=2607:f8b0:4001:c0b::236;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of insaneboarder234@gmail.com designates 2607:f8b0:4001:c0b::236 as permitted sender) smtp.mailfrom=insaneboarder234@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x236.google.com with SMTP id o21so12283495itb.0
        for <kurt@seifried.org>; Wed, 05 Oct 2016 11:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=+8FnefFKh0V3cV+IZ6bdC21IfMiAWjE7rgXFCnUcxNs=;
        b=K6hOJCOA2j+qHfjpemkQaxs5U1fW++3M/H+kDsw3PXKObZFZ7IBfGcOqMG/WguPFg+
         72WBVEoZsD4/jIN0/0/GV8HVwGeTBkXX85mTeQJtKU32mo3ngufrc2esUZUJPBSICTVs
         DbHXpUSmPQSHZN0IZb98nfuOQ87fr7109zgeCGeZT8cHBfrB2BOZs4Px61bf8neWnBC3
         9zyGVHfzdyWpbulBd9Y2y83IfHz57BFCah3VR6K/hKcTeKFgGevV+Sv/0OYlgXL/aheg
         fG0bScz2uFMcLIzOTImjOccoItaw3OH249XWJ0TN9FnrJ8kdES6BiwswQ6YsTx13uJoh
         /qWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=+8FnefFKh0V3cV+IZ6bdC21IfMiAWjE7rgXFCnUcxNs=;
        b=cuT4Z5Rwm6jOo33p3SE1WzZLRt7bG24XOf5Vmg0yRDN4lN6rSdkbliZFx9BGBTFh6w
         EdX0xrVMqMvADSMciKEl2/zOuA7R5sK73rwglA7rpXhI1u21vBSg+5BRvXFqSDRb4CnH
         iQOQgNWWa2UUfUXMWkolH8EoEMhpAHF8kX/CESuRxTYKU0L1rQM1OsJB7ADahKQ41QJ+
         vLCYyJztZ5OhIsuK28+k31nrUI5GH58ButckphEtLacTSdWWvq0DzEsR+91jf8Dwd0HI
         HvkKEvgUT9n5zyzduIdARcJwFZdwTotaKvp05gEjfT+lGYaujkAr02p02lEk4KT63LSb
         nNaQ==
X-Gm-Message-State: AA6/9RkMoTQsD/XHWZLt74Z3c3Ln8EUkO7R6GQRJdYBnP3cta5OASJ/Gy1bV5UILc7ulR0wqK/lKNBO7LgCFPw==
X-Received: by 10.107.186.6 with SMTP id k6mr11325688iof.199.1475692553791;
 Wed, 05 Oct 2016 11:35:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.102.212 with HTTP; Wed, 5 Oct 2016 11:35:53 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Nick Bloor <insaneboarder234@gmail.com>
Date: Wed, 5 Oct 2016 19:35:53 +0100
Message-ID: <CABizLq=hAdNKpMUQqhSV-xyXWRtSHK5JbKufc-Pk=h+89+Fb2g@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c076a627776ff053e2272e8

--94eb2c076a627776ff053e2272e8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Kurt,

I accept the MITRE Terms of Use for CVE.

Regards,

-Nicky


On 5 October 2016 at 17:41, Kurt Seifried <kurt@seifried.org> wrote:

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

--94eb2c076a627776ff053e2272e8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Kurt,<div><br></div><div>I accept the MITRE Terms of Us=
e for CVE.</div><div><br></div><div>Regards,</div><div><br></div><div>-Nick=
y</div><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On 5 October 2016 at 17:41, Kurt Seifried <span dir=3D"ltr">&lt;=
<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><p c=
lass=3D"m_-9196154471772056528gmail-m_-323732369566349682gmail-p1" style=3D=
"font-size:12.8px"><span class=3D"m_-9196154471772056528gmail-m_-3237323695=
66349682gmail-s1">Hi, I need to confirm that you have accepted the MITRE=C2=
=A0<span class=3D"m_-9196154471772056528gmail-il">Terms</span>=C2=A0of=C2=
=A0<span class=3D"m_-9196154471772056528gmail-il">Use</span>=C2=A0for=C2=A0=
<span class=3D"m_-9196154471772056528gmail-il">CVE</span>, available at:</s=
pan></p><p class=3D"m_-9196154471772056528gmail-m_-323732369566349682gmail-=
p2" style=3D"font-size:12.8px"><a href=3D"https://github.com/distributedwea=
knessfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">https=
://github.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>blob/master/=
TermsOfUse.md</a><br><span class=3D"m_-9196154471772056528gmail-m_-32373236=
9566349682gmail-s1"></span></p><p class=3D"m_-9196154471772056528gmail-m_-3=
23732369566349682gmail-p2" style=3D"font-size:12.8px">and quoted below, ple=
ase reply with &quot;I accept&quot; and I&#39;ll be able to process your=C2=
=A0<span class=3D"m_-9196154471772056528gmail-il">CVE</span>=C2=A0request. =
Thanks!<br><span class=3D"m_-9196154471772056528gmail-m_-323732369566349682=
gmail-s1"></span></p><p class=3D"m_-9196154471772056528gmail-m_-32373236956=
6349682gmail-p2" style=3D"font-size:12.8px"><span class=3D"m_-9196154471772=
056528gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-919615447177205=
6528gmail-il">Use</span><br><span class=3D"m_-9196154471772056528gmail-m_-3=
23732369566349682gmail-s1"></span></p><p class=3D"m_-9196154471772056528gma=
il-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">LICENSE<br><sp=
an class=3D"m_-9196154471772056528gmail-m_-323732369566349682gmail-s1"></sp=
an></p><p class=3D"m_-9196154471772056528gmail-m_-323732369566349682gmail-p=
1" style=3D"font-size:12.8px"><span class=3D"m_-9196154471772056528gmail-m_=
-323732369566349682gmail-s1">Submissions: For all materials you submit to t=
he Common Vulnerabilities and Exposures (<span class=3D"m_-9196154471772056=
528gmail-il">CVE</span>=C2=AE), you hereby grant to The MITRE Corporation (=
MITRE) and all=C2=A0<span class=3D"m_-9196154471772056528gmail-il">CVE</spa=
n>=C2=A0Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applica=
ble law or agreed to in writing, you provide such materials on an &quot;AS =
IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expres=
s or implied, including, without limitation, any warranties or conditions o=
f TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PUR=
POSE.</span></p><p class=3D"m_-9196154471772056528gmail-m_-3237323695663496=
82gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-919615447177205652=
8gmail-m_-323732369566349682gmail-s1"><span class=3D"m_-9196154471772056528=
gmail-il">CVE</span>=C2=A0Usage: MITRE hereby grants you a perpetual, world=
wide, non-exclusive, no-charge, royalty-free, irrevocable copyright license=
 to reproduce, prepare derivative works of, publicly display, publicly perf=
orm, sublicense, and distribute Common Vulnerabilities and Exposures (<span=
 class=3D"m_-9196154471772056528gmail-il">CVE</span>=C2=AE). Any copy you m=
ake for such purposes is authorized provided that you reproduce MITRE&#39;s=
 copyright designation and this license in any such copy.</span></p><p clas=
s=3D"m_-9196154471772056528gmail-m_-323732369566349682gmail-p2" style=3D"fo=
nt-size:12.8px">DISCLAIMERS<br><span class=3D"m_-9196154471772056528gmail-m=
_-323732369566349682gmail-s1"></span></p><p class=3D"m_-9196154471772056528=
gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=
=3D"m_-9196154471772056528gmail-m_-323732369566349682gmail-s1">ALL DOCUMENT=
S AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON A=
N &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPR=
ESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRU=
STEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR=
 IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span cla=
ss=3D"m_-9196154471772056528gmail-il">USE</span>=C2=A0OF THE INFORMATION TH=
EREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABI=
LITY OR FITNESS FOR A PARTICULAR PURPOSE.</span></p><span class=3D"HOEnZb">=
<font color=3D"#888888"><div><br></div>-- <br><div class=3D"m_-919615447177=
2056528gmail_signature">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.or=
g" target=3D"_blank">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--94eb2c076a627776ff053e2272e8--
