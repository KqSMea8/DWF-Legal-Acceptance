Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp240655vkh;
        Wed, 5 Oct 2016 10:11:39 -0700 (PDT)
X-Received: by 10.107.173.36 with SMTP id w36mr5263370ioe.186.1475687499738;
        Wed, 05 Oct 2016 10:11:39 -0700 (PDT)
Return-Path: <helpme@gmail.com>
Received: from mail-it0-x231.google.com (mail-it0-x231.google.com. [2607:f8b0:4001:c0b::231])
        by mx.google.com with ESMTPS id v80si13863723ioi.180.2016.10.05.10.11.39
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 10:11:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of helpme@gmail.com designates 2607:f8b0:4001:c0b::231 as permitted sender) client-ip=2607:f8b0:4001:c0b::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of helpme@gmail.com designates 2607:f8b0:4001:c0b::231 as permitted sender) smtp.mailfrom=helpme@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x231.google.com with SMTP id j69so206514167itb.0
        for <kurt@seifried.org>; Wed, 05 Oct 2016 10:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=DAllcMPejYNCGesLlBb+sC+RpGKWgCuJiXoc0uUreHk=;
        b=WTPWIrgwZM9A7grL54TSDipGcTWc3BCdZ5reLvU3MP2Z1kbva5cVBd8irgGiL9VqYe
         oeCh6eVJyiG7Z+7FZqa9gT/idMsWovvbyWjKJRU17yijQa1QS98mZrvAeA8hKPGAVGYg
         q55YXN92YnG/gKIE7P9zJxJ+n4ics+wz6HUFR/nby3vj4Y8RqU6Mi8jCo4FDeD/P8CLO
         8Aj0AgIgARSANRweiVEsMgaIuRUhITdaY8rQLbjCFZfNC68zmGOhvMGMCSpfnXjSOn7r
         iCOoLRUnxVy56+xb5Q8bqsjPbs4xwpOa8o56gFYT3q0Lzd+fBZ46uZ+Ah80tRUL4OxB8
         pMqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=DAllcMPejYNCGesLlBb+sC+RpGKWgCuJiXoc0uUreHk=;
        b=CSboBWKyh5nNWa/1G+xSY5/AdgQrs3qqShbMKPW8AeeH4rh+NJeJ6OPDy4+WuW6Oml
         7lZkfw5W5usqvB146SYvvqZdh/B7qzrxV5d3DX9HuOR1ztivN2pOfw3aLW04ofp1WQjf
         oos7Qc6f37whtlFhN0uWl44aaPIVjXW00t32EweMahpkYVaBWd3OsMgbgImU9Yb3J67H
         kNYjvMF9ouYHn6oXKzED6+XNxEfyC78/SKfUf48XioJu8JbXPvzQCfYhDUjBfWKqoGjc
         yh/fOtkSIiuWjZrTVrBoQLEaKOgM2ZypuTJ2faHODAOK684E1gzcDPNlQu6DnmJtq/cx
         Kq8g==
X-Gm-Message-State: AA6/9Rm+xPSnnuslQSvSvZbKah2aBmQ8znELa1OGl3Zc9VXAkqz5l81G9uWzk7dKIe9NAw==
X-Received: by 10.107.31.141 with SMTP id f135mr10402286iof.5.1475687498787;
        Wed, 05 Oct 2016 10:11:38 -0700 (PDT)
Return-Path: <helpme@gmail.com>
Received: from [192.168.1.46] (198-84-189-177.cpe.teksavvy.com. [198.84.189.177])
        by smtp.gmail.com with ESMTPSA id g65sm3955265ioj.24.2016.10.05.10.11.38
        for <kurt@seifried.org>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 05 Oct 2016 10:11:38 -0700 (PDT)
From: Matt Sergeant <helpme@gmail.com>
Content-Type: multipart/alternative;
	boundary=Apple-Mail-7A7031FC-2C7A-4DFE-8BF3-3AE1874FBB0C
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (1.0)
Date: Wed, 5 Oct 2016 13:11:37 -0400
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
Message-Id: <9DE662E1-2C1D-4D2C-B833-38B443973364@gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
To: Kurt Seifried <kurt@seifried.org>
X-Mailer: iPhone Mail (14A456)


--Apple-Mail-7A7031FC-2C7A-4DFE-8BF3-3AE1874FBB0C
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I accept

> On Oct 5, 2016, at 12:41 PM, Kurt Seifried <kurt@seifried.org> wrote:
>=20
> Hi, I need to confirm that you have accepted the MITRE Terms of Use for CV=
E, available at:
>=20
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md
>=20
> and quoted below, please reply with "I accept" and I'll be able to process=
 your CVE request. Thanks!
>=20
> Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities an=
d Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BAS=
IS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,=
 including, without limitation, any warranties or conditions of TITLE, NON-I=
NFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare d=
erivative works of, publicly display, publicly perform, sublicense, and dist=
ribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyright=
 designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REP=
RESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRU=
STEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR I=
MPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORM=
ATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERC=
HANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
>=20
> --=20
> Kurt Seifried
> kurt@seifried.org

--Apple-Mail-7A7031FC-2C7A-4DFE-8BF3-3AE1874FBB0C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div></div><div>I accept</div><div><br>On O=
ct 5, 2016, at 12:41 PM, Kurt Seifried &lt;<a href=3D"mailto:kurt@seifried.o=
rg">kurt@seifried.org</a>&gt; wrote:<br><br></div><blockquote type=3D"cite">=
<div><div dir=3D"ltr"><p class=3D"gmail-m_-323732369566349682gmail-p1" style=
=3D"font-size:12.8px"><span class=3D"gmail-m_-323732369566349682gmail-s1">Hi=
, I need to confirm that you have accepted the MITRE&nbsp;<span class=3D"gma=
il-il">Terms</span>&nbsp;of&nbsp;<span class=3D"gmail-il">Use</span>&nbsp;fo=
r&nbsp;<span class=3D"gmail-il">CVE</span>, available at:</span></p><p class=
=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"><a href=3D=
"https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Terms=
OfUse.md" target=3D"_blank">https://github.com/<wbr>distributedweaknessfilin=
g/DWF-<wbr>Database/blob/master/<wbr>TermsOfUse.md</a><br><span class=3D"gma=
il-m_-323732369566349682gmail-s1"></span></p><p class=3D"gmail-m_-3237323695=
66349682gmail-p2" style=3D"font-size:12.8px">and quoted below, please reply w=
ith "I accept" and I'll be able to process your&nbsp;<span class=3D"gmail-il=
">CVE</span>&nbsp;request. Thanks!<br><span class=3D"gmail-m_-32373236956634=
9682gmail-s1"></span></p><p class=3D"gmail-m_-323732369566349682gmail-p2" st=
yle=3D"font-size:12.8px"><span class=3D"gmail-il">Terms</span>&nbsp;of&nbsp;=
<span class=3D"gmail-il">Use</span><br><span class=3D"gmail-m_-3237323695663=
49682gmail-s1"></span></p><p class=3D"gmail-m_-323732369566349682gmail-p2" s=
tyle=3D"font-size:12.8px">LICENSE<br><span class=3D"gmail-m_-323732369566349=
682gmail-s1"></span></p><p class=3D"gmail-m_-323732369566349682gmail-p1" sty=
le=3D"font-size:12.8px"><span class=3D"gmail-m_-323732369566349682gmail-s1">=
Submissions: For all materials you submit to the Common Vulnerabilities and E=
xposures (<span class=3D"gmail-il">CVE</span>=C2=AE), you hereby grant to Th=
e MITRE Corporation (MITRE) and all&nbsp;<span class=3D"gmail-il">CVE</span>=
&nbsp;Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no=
-charge, royalty-free, irrevocable copyright license to reproduce, prepare d=
erivative works of, publicly display, publicly perform, sublicense, and dist=
ribute such materials and derivative works. Unless required by applicable la=
w or agreed to in writing, you provide such materials on an "AS IS" BASIS, W=
ITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, incl=
uding, without limitation, any warranties or conditions of TITLE, NON-INFRIN=
GEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p c=
lass=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><spa=
n class=3D"gmail-m_-323732369566349682gmail-s1"><span class=3D"gmail-il">CVE=
</span>&nbsp;Usage: MITRE hereby grants you a perpetual, worldwide, non-excl=
usive, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicense, a=
nd distribute Common Vulnerabilities and Exposures (<span class=3D"gmail-il"=
>CVE</span>=C2=AE). Any copy you make for such purposes is authorized provid=
ed that you reproduce MITRE's copyright designation and this license in any s=
uch copy.</span></p><p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D=
"font-size:12.8px">DISCLAIMERS<br><span class=3D"gmail-m_-323732369566349682=
gmail-s1"></span></p><p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D=
"font-size:12.8px"><span class=3D"gmail-m_-323732369566349682gmail-s1">ALL D=
OCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDE=
D ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENT=
S OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES,=
 OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIE=
D, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE&nbsp;<span class=3D"gm=
ail-il">USE</span>&nbsp;OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIG=
HTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR=
 PURPOSE.</span></p><div><br></div>-- <br><div class=3D"gmail_signature">Kur=
t Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@se=
ifried.org</a></div>
</div>
</div></blockquote></body></html>=

--Apple-Mail-7A7031FC-2C7A-4DFE-8BF3-3AE1874FBB0C--
