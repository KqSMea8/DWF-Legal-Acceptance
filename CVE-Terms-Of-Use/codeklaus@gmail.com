Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp157129ivl;
        Tue, 10 Apr 2018 17:01:28 -0700 (PDT)
X-Received: by 2002:a24:114f:: with SMTP id 76-v6mr1801038itf.75.1523404888467;
        Tue, 10 Apr 2018 17:01:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523404888; cv=none;
        d=google.com; s=arc-20160816;
        b=db27AvrKAWd8q+gShu0dxH8x4Bodv5H39wV8LiflDvLwdCWixnNLMt715yDgyRxIFQ
         VPrMynDUjf4m0xAupWG6bp3MNDOAfrmGGCLF2OSZJkmQyCUGMiAMiHCiIUeqwnTnGhyy
         PPrbW+PCsxwuXlzq8W5fbsG3DbqrbDZo6dn9DMYfBiLVxhyMl+cpAsO32i8HxwFdhBAO
         6SiofXV+5N97RdtuDvjYEnzc9iy7j0uPlxdSLCXebOfe+5cYzm1R719U8Hvjm9S1F27Q
         272JDJ8V/A2eli2jXNAdw/Iw8HdPXKn116oyBjEFss8orJNCCXJqYrLNCXbWwpXNkFYX
         KdpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=3J5eYNtm6xUDvgSNtE3tEbcOiIPGpqrevIW61t6B3D0=;
        b=DPgQe0Z/cUXhKcU2b5VEcNDZfVT/qZRqisrE2udNryUnhQImDMweo/co3Qcw5Ejm2f
         XA4rSMqzrrsFhpjuYPAMDa6OoSp1bf2HZ1kTQNtJDdQmoW9oH9yE4enarWlWVFsTC5CE
         Mht4yOq4/aCRDsc2sgozqryCk9gU/zeNcjTYHKmOvdsW14/h/dK6J+jkxwS05rrj4QCr
         OYCNQ/9KS/JvCFRtlUWh0HHbjDJ5J4p6uOGkxvrr5XaQ3GxBGmA6XsrLMEyn0OGTP5er
         SkNWzo4f5l3FiBSvLNEy4cLf5DuOxTmXB+Cdb9fJBMGt60SvCaXWGwEHVpjKczdaUard
         EHug==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gro6k1zc;
       spf=pass (google.com: domain of codeklaus@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=codeklaus@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <codeklaus@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f83sor1883745ioa.310.2018.04.10.17.01.28
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 10 Apr 2018 17:01:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of codeklaus@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gro6k1zc;
       spf=pass (google.com: domain of codeklaus@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=codeklaus@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=3J5eYNtm6xUDvgSNtE3tEbcOiIPGpqrevIW61t6B3D0=;
        b=gro6k1zckQQJqQ7QWe2vogE6Q4D+fI+Wr4/CNPzk1V+sWs7B2QQC0uXqWA38djCHmb
         gcdFU80BwX2v2IxL4X4lTq4xo/Vkeu83wp+4+2im8W3AS0073yNOYZoUAzLq+bM5FE4w
         ZU6IFpZAajLrT1Ve/7/v68cQoKXkk9+jMn+g2IToi11bARj0RNhWRT5q3rFWcPM2iiGt
         zhr7oAX60wrKtHFQ12cAs2aUOMqaGK8WNfRf5VpOW9wu7JMtXR/ebrU6rclnIuTcSUuy
         OC357fdfdicVQqCnBglA6Voxfl+t3Y87S12GQ1WW5LaQZpbxnYIyjTg1k9AR4YVTIOD2
         Btkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=3J5eYNtm6xUDvgSNtE3tEbcOiIPGpqrevIW61t6B3D0=;
        b=MmTFL3/EezaDRKYx/xD+FmqIjp3oxn6RuMuHZi1IUB1u/7wBQbLNh584zHUaNNxkJH
         Vc7fwNnZUV9aoGMRX9Lj4NRz7OcJPqPWCOTVj+helSw1j+FxYpGIB133nMhNxMQZRbXl
         IBq8rTAYDs5KmrEh01dC/olBOv5FNBYKimUITgQ5mJLM8cXj1Ey1oCWvRJyL7pyTB0jp
         nTqMobNJvls4E1qyCnn4ntuiYpZM3II6Yu6Ddy/fPgrgNqlLPre3D6o2xbfD2KpiQaOw
         GerdIYR2OeavvFUR0UZcvciGrDohByjlIyO/XY90OJrlSci/hsaHJ6tLI4Mi6lTwf7Ux
         8XOg==
X-Gm-Message-State: ALQs6tAfigWpvYiTYymI6BEM4Ir4oK5XK8nIXoo2Y2aH8uzmKROkBWV3
	3uDbMATDWkdzvKWIIxU4kjjibnQpFj5/yMK2fz0=
X-Google-Smtp-Source: AIpwx49e+aEegcambo0iqSkPUl/hDou5c0nRLoIQ1Db0oeWtScA5JlERFZAVNRTiY1ry3abryfak2zBk98uarMVqw7g=
X-Received: by 10.107.138.88 with SMTP id m85mr2590851iod.150.1523404887778;
 Tue, 10 Apr 2018 17:01:27 -0700 (PDT)
MIME-Version: 1.0
References: <20180410182700.97071.23605@slab.local>
In-Reply-To: <20180410182700.97071.23605@slab.local>
From: Klaus <codeklaus@gmail.com>
Date: Wed, 11 Apr 2018 00:01:16 +0000
Message-ID: <CANtxazUhud=rK3au37h1h3Ou6N1i_BR38Cdcpk3R+ugaEuQFLw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for codeklaus@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a113fa3f42f6acb05698757b5"

--001a113fa3f42f6acb05698757b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

<kurt@seifried.org>=E4=BA=8E2018=E5=B9=B44=E6=9C=8811=E6=97=A5 =E5=91=A8=E4=
=B8=8902:27=E5=86=99=E9=81=93=EF=BC=9A

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically
> in future (you'll have to manually ask). But again, if you have no idea
> what a CVE is then you can ignore this/ask to be added to the block list
> with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
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
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
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
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a113fa3f42f6acb05698757b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept</div><br><div class=3D"gmail_quote"><div>&l=
t;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt;=E4=BA=8E20=
18=E5=B9=B44=E6=9C=8811=E6=97=A5 =E5=91=A8=E4=B8=8902:27=E5=86=99=E9=81=93=
=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation em=
ail sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D=
"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to acc=
ept the MITRE CVE Terms of Use (assuming you filled out the CVE form and wa=
nt one, we can&#39;t use the data until you accept the MITRE CVE Terms of U=
se). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on. <br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems. <br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc. <br>
<br>
</blockquote></div></div>

--001a113fa3f42f6acb05698757b5--
