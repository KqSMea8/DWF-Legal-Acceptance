Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp226939vkh;
        Wed, 5 Oct 2016 09:42:49 -0700 (PDT)
X-Received: by 10.36.144.68 with SMTP id x65mr9743978itd.70.1475685769318;
        Wed, 05 Oct 2016 09:42:49 -0700 (PDT)
Return-Path: <officialyogeshmodi@gmail.com>
Received: from mail-it0-x233.google.com (mail-it0-x233.google.com. [2607:f8b0:4001:c0b::233])
        by mx.google.com with ESMTPS id n199si31996470itb.93.2016.10.05.09.42.49
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 09:42:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of officialyogeshmodi@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) client-ip=2607:f8b0:4001:c0b::233;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of officialyogeshmodi@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) smtp.mailfrom=officialyogeshmodi@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x233.google.com with SMTP id j69so205033389itb.0
        for <kurt@seifried.org>; Wed, 05 Oct 2016 09:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=C9pkmsLCVbPcVKMPvVw1RQgDI0LJDLnXPdvAkZ5joD4=;
        b=ZACXMKsK0LgwwoNpKPFwKgQEh211SKT/1Qu/Q7VUCd3gDFH+QyHARw4d/FBjPoRD2e
         jTL/ddyKFDOatgokhaVXs1s8nbRRme7ztulkXhhCMX3FdOmz6+hHnGkSyX5pNOkhn+Z2
         L2G+L6ENFvEe09ozdRBg3U6eh0muZzLTBFW612xwwl3G4tUDWRkAnjt05bjy4bVZBf00
         V6YqCIL+k/Cgy1cGRWO49fySsUyttz2whRHC931xYfYHKw/9g0FX5ze7HUFkp7Xj2wk6
         vfxViMQ6i5fL8XABtgaGRggbVgXxwi1LHgJCQLxNWJInpbJHiafeGdpAgNX8hC/2Rr1g
         iM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=C9pkmsLCVbPcVKMPvVw1RQgDI0LJDLnXPdvAkZ5joD4=;
        b=HKSvJ+eQDUqQLNs/W5aD1ldcnswcpttfLgymjIUrtuDGcUM4B3mxFYGmiSmFXIZmyX
         qkRDTtoAj6YVH6rxfcPpEIhB6gQSyLgP24k6B9r14l9fUPDYlIUGHON9v73vzlVcrrlA
         Cyt/LmhxPji7MgRcmSBTT9pfgxhFiCvfKFgGVRKR2VujuyJzMWwb70eEYIST4ZOJayLg
         ufpcw4I/+Rs/rZ3LNNi5W2ogSAzfsxArWhE0cBWJLaJNRMeCfaUQ2HZLPnQwfdaEFz1+
         FQy1QN2ObBVCJ/HhXhJE7O1NaiTwr4W0a1Zn6rU8CArBfY3BATTYWCoPRU1jHZg0B0Ho
         IirQ==
X-Gm-Message-State: AA6/9Rkm67HCKK+bS6/5YfKfJ0JOOm14cmqIZFj9xh05QlsuDQ+wXPkGvOHCu9uV+Yx/nqJbxCiOG0n0xm8ZNw==
X-Received: by 10.36.130.135 with SMTP id t129mr10986940itd.31.1475685751185;
 Wed, 05 Oct 2016 09:42:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.72.98 with HTTP; Wed, 5 Oct 2016 09:42:30 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Yogesh Modi <officialyogeshmodi@gmail.com>
Date: Wed, 5 Oct 2016 22:12:30 +0530
Message-ID: <CALOgz=CQ3ovna-ttv4_jzH61v1R4d=QBSteK+Cge4g_5P9NTsA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c0890faffe682053e20dce0

--94eb2c0890faffe682053e20dce0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Wed, Oct 5, 2016 at 10:11 PM, Kurt Seifried <kurt@seifried.org> wrote:

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

--94eb2c0890faffe682053e20dce0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">I accept</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Wed, Oct 5, 2016 at 10:11 PM, Kurt Seifried <span dir=
=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@se=
ifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><p class=3D"m_5368377804316239617gmail-m_-323732369566349682gmail-=
p1" style=3D"font-size:12.8px"><span class=3D"m_5368377804316239617gmail-m_=
-323732369566349682gmail-s1">Hi, I need to confirm that you have accepted t=
he MITRE=C2=A0<span class=3D"m_5368377804316239617gmail-il">Terms</span>=C2=
=A0of=C2=A0<span class=3D"m_5368377804316239617gmail-il">Use</span>=C2=A0fo=
r=C2=A0<span class=3D"m_5368377804316239617gmail-il">CVE</span>, available =
at:</span></p><p class=3D"m_5368377804316239617gmail-m_-323732369566349682g=
mail-p2" style=3D"font-size:12.8px"><a href=3D"https://github.com/distribut=
edweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank">=
https://github.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>blob/ma=
ster/TermsOfUse.md</a><br><span class=3D"m_5368377804316239617gmail-m_-3237=
32369566349682gmail-s1"></span></p><p class=3D"m_5368377804316239617gmail-m=
_-323732369566349682gmail-p2" style=3D"font-size:12.8px">and quoted below, =
please reply with &quot;I accept&quot; and I&#39;ll be able to process your=
=C2=A0<span class=3D"m_5368377804316239617gmail-il">CVE</span>=C2=A0request=
. Thanks!<br><span class=3D"m_5368377804316239617gmail-m_-32373236956634968=
2gmail-s1"></span></p><p class=3D"m_5368377804316239617gmail-m_-32373236956=
6349682gmail-p2" style=3D"font-size:12.8px"><span class=3D"m_53683778043162=
39617gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_53683778043162396=
17gmail-il">Use</span><br><span class=3D"m_5368377804316239617gmail-m_-3237=
32369566349682gmail-s1"></span></p><p class=3D"m_5368377804316239617gmail-m=
_-323732369566349682gmail-p2" style=3D"font-size:12.8px">LICENSE<br><span c=
lass=3D"m_5368377804316239617gmail-m_-323732369566349682gmail-s1"></span></=
p><p class=3D"m_5368377804316239617gmail-m_-323732369566349682gmail-p1" sty=
le=3D"font-size:12.8px"><span class=3D"m_5368377804316239617gmail-m_-323732=
369566349682gmail-s1">Submissions: For all materials you submit to the Comm=
on Vulnerabilities and Exposures (<span class=3D"m_5368377804316239617gmail=
-il">CVE</span>=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all=C2=A0<span class=3D"m_5368377804316239617gmail-il">CVE</span>=C2=A0N=
umbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charg=
e, royalty-free, irrevocable copyright license to reproduce, prepare deriva=
tive works of, publicly display, publicly perform, sublicense, and distribu=
te such materials and derivative works. Unless required by applicable law o=
r agreed to in writing, you provide such materials on an &quot;AS IS&quot; =
BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or impl=
ied, including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</sp=
an></p><p class=3D"m_5368377804316239617gmail-m_-323732369566349682gmail-p1=
" style=3D"font-size:12.8px"><span class=3D"m_5368377804316239617gmail-m_-3=
23732369566349682gmail-s1"><span class=3D"m_5368377804316239617gmail-il">CV=
E</span>=C2=A0Usage: MITRE hereby grants you a perpetual, worldwide, non-ex=
clusive, no-charge, royalty-free, irrevocable copyright license to reproduc=
e, prepare derivative works of, publicly display, publicly perform, sublice=
nse, and distribute Common Vulnerabilities and Exposures (<span class=3D"m_=
5368377804316239617gmail-il">CVE</span>=C2=AE). Any copy you make for such =
purposes is authorized provided that you reproduce MITRE&#39;s copyright de=
signation and this license in any such copy.</span></p><p class=3D"m_536837=
7804316239617gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px=
">DISCLAIMERS<br><span class=3D"m_5368377804316239617gmail-m_-3237323695663=
49682gmail-s1"></span></p><p class=3D"m_5368377804316239617gmail-m_-3237323=
69566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_5368377804=
316239617gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND THE INFORMA=
TION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quo=
t; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPON=
SORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, =
AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDI=
NG BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=3D"m_536837780=
4316239617gmail-il">USE</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT INF=
RINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FO=
R A PARTICULAR PURPOSE.</span></p><span class=3D"HOEnZb"><font color=3D"#88=
8888"><div><br></div>-- <br><div class=3D"m_5368377804316239617gmail_signat=
ure">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank=
">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--94eb2c0890faffe682053e20dce0--
