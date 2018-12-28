Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp1359320ivl;
        Sat, 26 May 2018 21:07:28 -0700 (PDT)
X-Received: by 2002:ab0:96:: with SMTP id 22-v6mr1998634uaj.4.1527394048662;
        Sat, 26 May 2018 21:07:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1527394048; cv=none;
        d=google.com; s=arc-20160816;
        b=peEuX0fXZHwbmEUoQrO3dbY4yM0npKt3ipntuncEE/EYX9BtTkKB4yvCT3C/MalLw9
         4+iqbavn9qqPJYelfK/tA8qyLPEh9RaeXg6E49eidAMtKSqSHt/Wkpxgfw2l482QGi0d
         U2pm/yKWvkPlwygGom8vPomFf3cYC7oVa4Kz3hotSS8hkwYOd/BxDY7R7wvRExHEsMZs
         UBQKKkhpoq2yZIHApa+rIOPIRSB/Ewv/L2oGaBy9oX6jYBFzO+scvJ9GMRY79/Sv42s0
         VpUVK+t+Bh6VKn2TxDL0RjnhRldOiMeFKHZp/gMELpFPCwDT/RqIIvoB6sheRAuDBFNX
         HPJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=4ZRAeRRMUcX4L//NutXrTEjNqpu/CrhoVFglC3y8gVA=;
        b=FU86i4EFV8v+0/s7n7KsPQXW3ipxonNeJquA8wIhfEJ14jNJCwCfsFKXV1/nUNQcL0
         Bf9JoN+B5eZK63719u+ynFdOgJB6c7AJT9OcipGJlwXIlccuzMz5tELdJMEjktY9gMbr
         4NhbAvy6ysYGbkyhZh65k2w4Yc0iUe/fveufGJFjmW6qjntDJhJZhXEVJeu0aWNRj9+I
         ic2IqzPkVr95CLCM4sSsJ2AannxZ9nDzXk98YLzvK7DEgSV3u9N6YbzkFpaL+VVJcGXF
         SWaGv72Czo7TlZ7Ab5tJivFkOkcdyGXL1WIOJOn0b0Jdn/8cE0cB4uYbiCaGzm2Ff+jy
         89Mg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qLgggARN;
       spf=pass (google.com: domain of 3ntr0py1337@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=3ntr0py1337@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <3ntr0py1337@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e38-v6sor13289820uae.286.2018.05.26.21.07.28
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 26 May 2018 21:07:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ntr0py1337@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qLgggARN;
       spf=pass (google.com: domain of 3ntr0py1337@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=3ntr0py1337@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=4ZRAeRRMUcX4L//NutXrTEjNqpu/CrhoVFglC3y8gVA=;
        b=qLgggARNY9numw6EIqLn6/GUwez3X6QwatiJohyTLURDT8xLR9kmGoNzN2T0Aea9Qk
         Pv3SqJdqRriUdcKLKYjfhLOzOGUR+42viW6PD0OJQzTl7D6yrc2GexLh3PLtSLrh662r
         kJtvHKafcgfVei8JcB+9btf3Gw4MIKiEufNJ9QbXXWVsenwnmxJYPhTki81Bl/23deoM
         Wd7rBUMm6QAt3JLhIZ0d9F7lVHMFvmvfA3l7rrUhOWzDRGVJZ3O42rYaQJEYe8aJvqw9
         nNv0GauDsHdnTV78FT6+J2ap2SjpUTZWwc9PImQSjSaTDwDHF5WSmoKSNLrJ9CWcPpGv
         M5pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=4ZRAeRRMUcX4L//NutXrTEjNqpu/CrhoVFglC3y8gVA=;
        b=jjnxq0lPjtjB1RzmWvxJDOEBdsO9piN4zkL72kwnoiSsgtf4tdRxNT7HcdqMgufPF8
         Vz7bijfQc5OeMbPiXASuzgj95sCI2/Ss2zRe16f5LY7vA+JKeANBY9UIgJXiKhlkDCMf
         nGsCCo3t+susyusteiBcd5ZuBmvTuLBGG267Vvc3LIsTuOVt2TQrz0oL5OuwW3BkoZe1
         TZIIlerqx2X8AHyo0N9grR7xBkJFpV6fYxWKn0jJwWakIIieROnYyALOoFj7afgn2UQ2
         XXXUVd7ckDz2wV/Kqk8VKStHhruaoxh+w+wj7R/YAYJWyfBti9hNOXVTTHMVAPjEtINP
         +03w==
X-Gm-Message-State: ALKqPwfzBGmqIY85Q3SbPEif/r4Bwon19LdcZNrkshlSMcousaLmHJZT
	X+8bFSWwDWJEJEM0ZTIQMoYJ16ibIFBR5CR6GSakng==
X-Google-Smtp-Source: ADUXVKJd3n8MWP9nKrP04fxDj1QF3H91lCSBcCFUf33MSwse/1w9uHGf8wBJ5yxBYp1SkPTwc+Xv6C3DGBVa8lbBvPM=
X-Received: by 2002:a9f:33d8:: with SMTP id y24-v6mr714383uab.155.1527394048027;
 Sat, 26 May 2018 21:07:28 -0700 (PDT)
MIME-Version: 1.0
References: <20180527031052.8054.9032@shiny-2.local>
In-Reply-To: <20180527031052.8054.9032@shiny-2.local>
From: Entropy Moe <3ntr0py1337@gmail.com>
Date: Sun, 27 May 2018 08:07:17 +0400
Message-ID: <CALzBtjKD0HczcUfOWkw16Eq-X3+7YcOryYMP4EV9WK4qMBxgrA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for 3ntr0py1337@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000aa30fc056d282302"

--000000000000aa30fc056d282302
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

On Sun, 27 May 2018, 07:10 , <kurt@seifried.org> wrote:

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

--000000000000aa30fc056d282302
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yes, I accept.=C2=A0</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr">On Sun, 27 May 2018, 07:10 , &lt;<a href=3D"mailto:kurt@se=
ifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">This is a confirmation email sent from CVE request form at <a hre=
f=3D"https://iwantacve.org/" rel=3D"noreferrer noreferrer" target=3D"_blank=
">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Us=
e (assuming you filled out the CVE form and want one, we can&#39;t use the =
data until you accept the MITRE CVE Terms of Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/dis=
tributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br=
>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank" rel=3D"noreferrer">kurt@seifried.org</a> manually=
 with your question/concerns/etc. <br>
<br>
</blockquote></div>

--000000000000aa30fc056d282302--
