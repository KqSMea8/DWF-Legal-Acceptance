Delivered-To: kurt@seifried.org
Received: by 2002:a4f:65c4:0:0:0:0:0 with SMTP id z187-v6csp1203360ivb;
        Wed, 20 Jun 2018 12:57:22 -0700 (PDT)
X-Received: by 2002:a6b:b791:: with SMTP id h139-v6mr17968475iof.201.1529524642322;
        Wed, 20 Jun 2018 12:57:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1529524642; cv=none;
        d=google.com; s=arc-20160816;
        b=J4jv+LzbhNQGxgldJ/zD95LTUg8E/gY/83kMZqQB5MqF9w3WZwqzI053DBIwVWs6Gy
         Tk6max5DMPVkzjP6tq0QKCm7U4VahJf6cC89CuCFU+Y5VFtE9MS6JKT6RCXXfkS9y+eG
         btjWT8Yiuc6XN8ApQ57cFvb5vSQJ0syMAv++6cZYM7s3CGx3yzTl+yb4brDHBzTaeISS
         V2ZJ2Ii4Nhc2Z/tJoajT4oS7lfpQNjr2NRZYyPlIb4VaCRSFYI7X9/dkGgqEtAsQed2I
         KEKuBJ87P374k4zVjy6K2jLoqhjLoF5IasnvYfPASAJPzAsWXMzy2yXqGHOZIVEnO8pO
         9Z2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=znphYrO+e3INYwqnJ49eOYs34cvTR47QavCbQ9DP5Z0=;
        b=Q/JiaE+JM57lwmtnt1bXyvfqe7KpK0xSDvSjkwrenxP0dhqccY9iMWdhUBKs8G9Lsu
         JHVfthEakQd1648PtiES1Q1XoYT9VRdCldEdilI9lFkmdSNAnQEop0LkBwfowQpKTtRu
         mYXGVQqgydb1Riq4d6MLM/q19oxz4OpShpjFD2XZpJOz4h54xhuKAruatvCG+GjSa0Bu
         7Q+FD6TPqGlmx7tgt4ZmCCnL7Xzq0ETd3jcjHYXXDcGFDC0sNpYZX2OQeoZ/YIKWGjUI
         qipYJ2DWhvOtr/aDh/ujWenDFnoobdvdjE3q9EbiAFquaKigEY1kfDHHAcMcnY6eGo+f
         NQEg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aYVnRmv9;
       spf=pass (google.com: domain of moreau.indiana@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=moreau.indiana@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <moreau.indiana@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z13-v6sor1220365jaz.128.2018.06.20.12.57.22
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 20 Jun 2018 12:57:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of moreau.indiana@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aYVnRmv9;
       spf=pass (google.com: domain of moreau.indiana@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=moreau.indiana@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=znphYrO+e3INYwqnJ49eOYs34cvTR47QavCbQ9DP5Z0=;
        b=aYVnRmv9O5CxeAjesLWi9actj9WyVhgMC66d3DwjR21xnoYYNfCEWNZqp6COZg9ObS
         LptEQgZRm5cEvChPokouiEF7F6IieXGJE+Up8TYLtv7rQnqmKgByryB5zh4fQdOjxlJh
         vpgkXM2EJH+hTyxJEVIl0jC8PpTp+IwqSjgOEq5SXdnCJ53flq6aRngSpsCaUbk+7yts
         f2i/ihM+lt4JSFvkvHPMAeS3tXKs7tcQKwmgZf4P5wsAyCkwOhVQEke4Opj3ilUN6ctb
         jk0olDP0Vbi+n7DQgKqUxByH5fNGjsq7F8I9jk07fRSqxGLOvGLkr52eptNIRfVEUa+z
         CaWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=znphYrO+e3INYwqnJ49eOYs34cvTR47QavCbQ9DP5Z0=;
        b=hHiXdgOgCBdRfuxUh719oS0X3ATced7mwho3D5n/zoAXzCdLyOhXiUQjk3B4RQqzcN
         WmViA/1p9PimVVL0zkiOrb9Its+A6rkimE3DigPxCpcihtVc1p3+RfKkAiyEzROT2lv6
         umCdKVqG4UVylmfktJvCmuQFv4I7Fdica3n8riQnr8ozsTRQ07NUcFt82dB22INJZrXH
         6mSCnyKUOY8ZCtvP/htiCf8hwf539acweO5R1vK5ueyANAV+ZikBi8c6N0Qi5XxvujjF
         Mz28sCcTO/O8aErr+kCuhasfTqn91CeEWyc34sqtoP3SsmTaKfc75BMwajZn8sKCWgXm
         LlFQ==
X-Gm-Message-State: APt69E3CK3E2i04pUm1oxPee2I2GXeUrmBDyLJYycWKiOSnMHuil8uq3
	nIDinfjBz9KQ9kqgv6+3cdcNaEfWaliBvF3+ZZ8=
X-Google-Smtp-Source: ADUXVKIsqFvhC3rYRpskzC2U36Sjdb9U7TAFtQ7pHl0pi3tsNn9MScQUwJk58TfWtamcxGS44UtjCid0AhGUO92fT4M=
X-Received: by 2002:a02:6d21:: with SMTP id m33-v6mr18977974jac.96.1529524641799;
 Wed, 20 Jun 2018 12:57:21 -0700 (PDT)
MIME-Version: 1.0
References: <20180620194534.10662.70552@shiny-2.local>
In-Reply-To: <20180620194534.10662.70552@shiny-2.local>
From: Indiana Moreau <moreau.indiana@gmail.com>
Date: Wed, 20 Jun 2018 15:57:11 -0400
Message-ID: <CAACxW0kQ--OUEFqf85HD0wBQdS+Unb-Rp-JdSGb--38K+ApM+A@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for moreau.indiana@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000f3231b056f1834b3"

--000000000000f3231b056f1834b3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Wed, Jun 20, 2018, 3:45 PM <kurt@seifried.org> wrote:

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

--000000000000f3231b056f1834b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I accept</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Jun 20, 2018, 3:45 =
PM  &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sen=
t from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"norefe=
rrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the=
 MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,=
 we can&#39;t use the data until you accept the MITRE CVE Terms of Use). <b=
r>
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

--000000000000f3231b056f1834b3--
