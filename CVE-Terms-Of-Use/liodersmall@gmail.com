Delivered-To: kurt@seifried.org
Received: by 2002:a9d:246c:0:0:0:0:0 with SMTP id p99-v6csp4916487ota;
        Mon, 25 Jun 2018 21:59:48 -0700 (PDT)
X-Received: by 2002:a5e:9812:: with SMTP id s18-v6mr5049241ioj.117.1529989188398;
        Mon, 25 Jun 2018 21:59:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1529989188; cv=none;
        d=google.com; s=arc-20160816;
        b=aA3XusYZs47V2Rx27APUB1vNjPd515Xpoce+zJ3Z5Ki9fRu5EFk9lSUTi3+MgS16lo
         ENwOJRq8y5H+uEldQjDG0d+fMfqVNv5U2oTlO0ItLWh5tTSDYuyiOWXUxVoQNp546Nzz
         57qJfNDMIqw1hlevbwvXIRy8wEHpiKDWiI3sn8Oe4AsQYf8hQgV2oHwnP0leVH239G7s
         12i5CfbRRFN9nIX3/0qhs/pb/nGo7GHW5+JQfTKQVGNdtWg5zrALvl6gEHmgz7DSJMIC
         osJ0qVKGHR0empzN0YfiiJv2XW3iMSq8X7KPx3XzL8A626WgZ07xrb9GIBzRSPavx1tW
         tV+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=q2hS6Ki6nZZ4cpIyLIcmKNIUbAUnpFLLQDwN7miEc0c=;
        b=GQJhejTOtzF5CZxqkuZMc3w+e1U7YvxJY68rJyV2CUBBnRUzOHZguoO98BxcY+QWfJ
         DL+R4dogoA7mPRF4b2D3GczOhJsPHV6T99s0zNN1FhrYMZopC0/x/BMZ2/ftHoTE2VUA
         qRE4lnchuT0YyNolkYe/jwbqxhPHY9wpMkhe3zDKkg1uOZzYq2STk19/8VisgWKnESuU
         zj0F9T/7zD36onqsDCFyFYtSaDeAFZ2yfuVsGWYZrv/gbT22k0YVPG6fgmVG8s3vcEXx
         admQAMpy9kXwHh/s6kuNGf+0W0rzBS1YqwDfLps0gywoevw9TKr9dCgeKPpG4TwP2nRd
         GEYw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mHDmXpcJ;
       spf=pass (google.com: domain of liodersmall@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=liodersmall@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <liodersmall@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f130-v6sor225198ioa.272.2018.06.25.21.59.48
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 25 Jun 2018 21:59:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of liodersmall@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mHDmXpcJ;
       spf=pass (google.com: domain of liodersmall@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=liodersmall@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=q2hS6Ki6nZZ4cpIyLIcmKNIUbAUnpFLLQDwN7miEc0c=;
        b=mHDmXpcJVPPnyTviKUBAGWE9fecMM54O8cBgkFMxUEh5cKBaGqX135Gn3PV8DfFEmX
         6K2NtIcXSL6KIQ6AxqH4H+bW5e0VnRoLFNxOtW8NRNxVwL2CtIeo9vOx0ocy9fQ8Yt2F
         9xIoa3PYsYQurwqU9/figEign7tAmcU4H5c88nV5dWxblBjKeQ/Wxz5RVC+R6hrXB0Iv
         UATyKYDSlm80FyY7xKJuj54AdZaoD5gTNTx3Mj1/i+Al+AMV5qyi9A1Z17M3hGLwXBW2
         UTBEp9DfrxC+7LORY87kLtwLoJ1LaNE5sZiJvtRy+ymr+Hm6oDyyWwprMVEWSlzlxOZm
         qMVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=q2hS6Ki6nZZ4cpIyLIcmKNIUbAUnpFLLQDwN7miEc0c=;
        b=mZC0h9YAJYpCXdV8UM4sjyuBFQGin6YGJpKJzUX9guZbm+XVsyrUJkYz+UWNaKFmG6
         nx/6cFhP/AeWthaddcpDmNC4ezetJunu1jzgOmVjflTxaOk38SVymDTUgEXIKXA9fdGP
         007CpMd9ZhL++/88clhLbnBTZENuDbeVXv6WzSgpgY3d8nLg/xRTT1bQGlZhB7k63spl
         k8sBW3PsWGuhFw28Ipt4sossQIWOWH74V/MqApN6a6SN8hCDNGddgNtttQA4sKiitymU
         h8c75d0SsLcZd5lUEfhpJ6A1iry2hnWCtU66VQuBYq8+qwG2ToP+CjX+z/vVkIPiUQBd
         X6zQ==
X-Gm-Message-State: APt69E0NN7COm8/7itaIKHxk60MgCKXD0MDJRn4a67/M5jmGflfZCnVt
	7Av76l+pR0/OiU0/DOYg7HZ51GyjZAb6AJ2tBfJmWg==
X-Google-Smtp-Source: AAOMgpdS+31F9QYrOhQPDkXrucoUstL4JSDL9i1aj2JwrR3nYH2iwdPXpqOq6a7c/jag+IPAbwgfntODOhRDmw/Gtqw=
X-Received: by 2002:a6b:1745:: with SMTP id 66-v6mr12279609iox.154.1529989188056;
 Mon, 25 Jun 2018 21:59:48 -0700 (PDT)
MIME-Version: 1.0
References: <20180623170620.15857.10472@shiny-2.local>
In-Reply-To: <20180623170620.15857.10472@shiny-2.local>
From: ioder L <liodersmall@gmail.com>
Date: Tue, 26 Jun 2018 12:59:37 +0800
Message-ID: <CAC6eGPZR5qqjo3bpus8apRkDR_V9YWbodVxtWt2X8_OnhArXNg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for liodersmall@gmail.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary="000000000000107f2c056f845e82"

--000000000000107f2c056f845e82
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

<kurt@seifried.org> =E4=BA=8E2018=E5=B9=B46=E6=9C=8824=E6=97=A5=E5=91=A8=E6=
=97=A5 =E4=B8=8A=E5=8D=881:06=E5=86=99=E9=81=93=EF=BC=9A

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

--000000000000107f2c056f845e82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I accept.=C2=A0<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.=
org</a>&gt; =E4=BA=8E2018=E5=B9=B46=E6=9C=8824=E6=97=A5=E5=91=A8=E6=97=A5 =
=E4=B8=8A=E5=8D=881:06=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">This is a confirmation email sent from CVE request form at <=
a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">http=
s://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (ass=
uming you filled out the CVE form and want one, we can&#39;t use the data u=
ntil you accept the MITRE CVE Terms of Use). <br>
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
</blockquote></div>

--000000000000107f2c056f845e82--
