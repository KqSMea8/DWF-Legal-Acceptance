Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp161933uag;
        Tue, 9 May 2017 22:07:31 -0700 (PDT)
X-Received: by 10.28.74.134 with SMTP id n6mr3013793wmi.40.1494392851119;
        Tue, 09 May 2017 22:07:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1494392851; cv=none;
        d=google.com; s=arc-20160816;
        b=HUF2abEPPPZIRLm+msLmKECHpbUtARWZ2NdDrAcQGR+MI1RsVpiqxFL5xB069MpnLG
         dbyyjb7sYUUkazAcHKYpUW8JyNDezbDNEaVEDOt9XuVCfFeGAX1x8UfHeUn/RRKaFkYr
         +54U4kX4XCr4NCyvIcbabnRRJFOBUx8TnkNF3SvXCgkO7xSe1OoRryVhborOuPpPIZo+
         BxRQmZtocuW8Uojsc2CginuaT8TzV3S+JpfsDy2glGFQ6E3475oq5nqvrETESO7X6VnY
         0pVLNfZrwdCJQbS/a5xABvYUOyT8d6gj6NTPpJ+ijA4S48A+3Lko/OS8gA8L/TEKZx9M
         Bzzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=smGVm8SO8K/CPBlnFepVt/O7eRp2VBxH+9z/P45V4bg=;
        b=KwzAFCjiUbV6c7k5zdS+zbLnK5iR1tmcpN1vB+9gN74KunfKrEz8a/vC2h+lRyQUaN
         4+wlt0dx9EkuRA610dEr605BhAJpFfdMWc4edfqqLGqwsWE/zlRcRLOFWcNpng7FW3C9
         L7/kv+T8MSKD+E/7YMA7CW0j1DjJJaHptOWinBiayrS1H0DWW4Nu2SMABZHM4TW4is2Z
         Kl46fxwKO59VlbjJZefQHPX6KiGwFOILfkxgc1UIl50EvkyLm+85Or0zLjBU1gBZKkIy
         LI7so29tnoLwzqiIOBxJpo9JtDvLZhybYRTiz6IgY1kvqMQfFq8ZPXVTsvyPnwrRPi67
         pSIg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of artem.moskowsky@gmail.com designates 2a00:1450:400c:c0c::232 as permitted sender) smtp.mailfrom=artem.moskowsky@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <artem.moskowsky@gmail.com>
Received: from mail-wr0-x232.google.com (mail-wr0-x232.google.com. [2a00:1450:400c:c0c::232])
        by mx.google.com with ESMTPS id m206si2127852wmf.126.2017.05.09.22.07.30
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 May 2017 22:07:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of artem.moskowsky@gmail.com designates 2a00:1450:400c:c0c::232 as permitted sender) client-ip=2a00:1450:400c:c0c::232;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of artem.moskowsky@gmail.com designates 2a00:1450:400c:c0c::232 as permitted sender) smtp.mailfrom=artem.moskowsky@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x232.google.com with SMTP id z52so26619170wrc.2
        for <kurt@seifried.org>; Tue, 09 May 2017 22:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=smGVm8SO8K/CPBlnFepVt/O7eRp2VBxH+9z/P45V4bg=;
        b=bb5jgwH7l64ufMbI9QU4GCIj5lU8d/qn1nhVzlC29JZk8plLHdYCg9P15pTlGRmrf6
         1u72JrnDagnfgjn5VAsUGzq/om5nZIpGC50vyoLbWRZLzwyIjS40h02si3a+4Gpw/3If
         2bYwkAfBqZt6nuapZ7xi0mvRdLpuA9n6zyPoRlRSQMV8tyrxHYN0/ws41HajApe4tl/A
         ya4refrsgjwYY+KRQTKGzpOikL9TnOhJgY9XSXfg8qaCrYDTkbeHBvVDGUrHmvtFMcS1
         O+9FhAhbCEfzmzB4wq+9p93g9d5MwHOs4a6uHduaJI+k/WJJrygbR81UGJMxeCemb+3c
         URyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=smGVm8SO8K/CPBlnFepVt/O7eRp2VBxH+9z/P45V4bg=;
        b=X5Q+N1StHk+44D85kJNkq+BhAXT+3BMj5/ea4KupvtnLt/WaDQvWxtfH/SJs140P4j
         N1xDFT4VwZCD1/0IZBlhr3pukg0omOeFMNdzFuSlLuEUDvAM2RYMiGXUD5quhKS//ddm
         Tcv3Fkkn1diF8M5Hrv/oHgiUtZNuwzvkJ5Y/FwtHzPRx/DdKr4XYVAVvFuturxbLGMYj
         G6o0KD86R9VCrgMfojl4Ucu/+orTAWkMSe3/f/ahLfH40JR9c/TQQQvx4epQ1WysT/0T
         /kt2cZYip53VepbQhuIqtNK/rkobVTUhKPuk/T9Gdgb8QvB81LBe6IKQnW6GQNC58SoQ
         3VfQ==
X-Gm-Message-State: AODbwcC49AJQNJYX8j6EsGekuuxiStF8KpnXhV6817nE5R1nWYUUxX3c
	qBigCR+up4IjuhYcPLGExUvZuFiw6A==
X-Received: by 10.28.165.80 with SMTP id o77mr2068106wme.109.1494392850556;
 Tue, 09 May 2017 22:07:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.58.21 with HTTP; Tue, 9 May 2017 22:07:30 -0700 (PDT)
Received: by 10.28.58.21 with HTTP; Tue, 9 May 2017 22:07:30 -0700 (PDT)
In-Reply-To: <20170510023049.8102.20532@bigbox.local>
References: <20170510023049.8102.20532@bigbox.local>
From: =?UTF-8?B?0JDRgNGC0ZHQvCDQnNC+0YHQutC+0LLRgdC60LjQuQ==?= <artem.moskowsky@gmail.com>
Date: Wed, 10 May 2017 08:07:30 +0300
Message-ID: <CAFrosQkLcph2j5Ty-y9Cr-rU1AAhR-T3VOrEdfHa2Bqp5PBNDw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for artem.moskowsky@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a114b3812033893054f2473ff

--001a114b3812033893054f2473ff
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

10 =D0=BC=D0=B0=D1=8F 2017 =D0=B3. 5:30 =D0=BF=D0=BE=D0=BB=D1=8C=D0=B7=D0=
=BE=D0=B2=D0=B0=D1=82=D0=B5=D0=BB=D1=8C <kurt@seifried.org> =D0=BD=D0=B0=D0=
=BF=D0=B8=D1=81=D0=B0=D0=BB:

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Terms of
Use acceptance data at https://github.com/distributedweaknessfiling/DWF-
Legal-Acceptance/tree/master/Terms-Of-Use

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically
in future (you'll have to manually ask). But again, if you have no idea
what a CVE is then you can ignore this/ask to be added to the block list
with no problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) an=
d all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-
Database/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.

--001a114b3812033893054f2473ff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept<br><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">10 =D0=BC=D0=B0=D1=8F 2017 =D0=B3. 5:30 =D0=BF=D0=BE=D0=
=BB=D1=8C=D0=B7=D0=BE=D0=B2=D0=B0=D1=82=D0=B5=D0=BB=D1=8C  &lt;<a href=3D"m=
ailto:kurt@seifried.org">kurt@seifried.org</a>&gt; =D0=BD=D0=B0=D0=BF=D0=B8=
=D1=81=D0=B0=D0=BB:<br type=3D"attribution"><blockquote class=3D"quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This i=
s a confirmation email sent from CVE request form at <a href=3D"https://iwa=
ntacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a=
> asking you to accept the MITRE CVE Terms of Use (assuming you filled out =
the CVE form and want one, we can&#39;t use the data until you accept the M=
ITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/=
DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a><br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute such materials and derivative works. Unless required by appl=
icable law or agreed to in writing, you provide such materials on an &quot;=
AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either exp=
ress or implied, including, without limitation, any warranties or condition=
s of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div></div>

--001a114b3812033893054f2473ff--
