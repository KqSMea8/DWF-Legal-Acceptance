Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3475:0:0:0:0:0 with SMTP id v108csp370535otb;
        Sat, 15 Dec 2018 01:50:40 -0800 (PST)
X-Received: by 2002:a19:d857:: with SMTP id p84mr3524320lfg.44.1544867440805;
        Sat, 15 Dec 2018 01:50:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544867440; cv=none;
        d=google.com; s=arc-20160816;
        b=Ir9kCykGnxfvnajCI18YXE8hvsv1z/nVAe0ki+Wy03hUTpJY9wJiNS3hqB3NzoJqvS
         s5HGR7RM1nRSVOzdu5IDnCwzMoGGlfgfdl2uqmRjS7mw3acDf0FYauYLCEPakGXl7E/p
         DnyTpX9dcFZjIu9WuTSslBw9KoDP0eg7KEjzx+Lon9NumvYOruKM1yBIxGzwDcjuaRfY
         ZVzk3ZiTH8Eo1TnKcgycyDqabS4CB/1lpayGvWutnsTJpMqVgs7X+qylh2+4mc987Wzf
         1YWTjx3vX10JKFm9I50b7NQy+e7yQm0/JhhMODClRcEx53/rKucbh1dVsM+WMgQqnfKy
         81og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=DkbRe5Du5wujlmzmg+o1rdVzxLKaMnv+rZzn6vNZjiU=;
        b=rFsOwdJCfZDxo0D37QZGH6nw77A/Hf48pHEcH4j3dppcP1jyeMvu+INsa4+n/Ehj2/
         +E2uCtuO1puMNBjSSA9//6IuHAYMDmQ2MQ8F8M3fnhAjIlAQ6hlhMJ+gcFY94VEM0+KI
         RxdZQEI3QM/KL93HoZq7K3khIwu9QHvCoCR1exmiSv8bnhtx6nWIXIfMPpfWxnkveqhf
         7SGWSSAdtaj7aixftQttwxeL0Sd7stckGQFuMjY+vQCI91m4E8xH869DzvgNqSMs94/j
         tqWftQUaLkF0GbhINI4xO5uF4HCBwopXYPJCl+eGebL8pwsXQ0mEB1lK2C2IAQ5CbpAF
         RL4Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fw8zUJJy;
       spf=pass (google.com: domain of sainadhjamalpur@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=sainadhjamalpur@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sainadhjamalpur@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id c7sor2180335lff.32.2018.12.15.01.50.40
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 15 Dec 2018 01:50:40 -0800 (PST)
Received-SPF: pass (google.com: domain of sainadhjamalpur@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fw8zUJJy;
       spf=pass (google.com: domain of sainadhjamalpur@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=sainadhjamalpur@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=DkbRe5Du5wujlmzmg+o1rdVzxLKaMnv+rZzn6vNZjiU=;
        b=Fw8zUJJywZj0uTgPFPlnDgH7cnoJqC/d51EcbKgJT9gM9MXyMb2pOkYvqSnE3a+1HM
         JMF9/ZU4wxcywGg4A8zpidVYZ9B6/jHX8uYwJUUMXe+s8zzs6Uwjy2IC1qBYQVtt1b6Q
         qax+MeBJvz8bUShlPqs1QW42TbDyt3y5sk4ZMhiT60PeI7//gnPr9CCAiieEAY1/nWsa
         FEiwOV5ZWOcskPwvJKYJtjeLgnFvjR4eT5M7es5urvY3jWXBrT1YxCrMzpKBUZY5B3XA
         yB9W9gLLxf8GN4Ft4GrLT2w7J6clJMKrF5+IqDm0IMLmjTPupWx29mLtpF9gUqSiEx5c
         dNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=DkbRe5Du5wujlmzmg+o1rdVzxLKaMnv+rZzn6vNZjiU=;
        b=thzkfUn0VNWuDh+ujU0JmiEgxCqyWqHL41qr7gxEdKSgCpHFQs+iq0y6c134NGZl5Z
         igilsLwlmUiLHG5gDb4u8KPQ8suvSw/TPvJZxfnNPu/4Oz39yE8n2gYbbhL0+xMLkBg/
         SjfogLj+pLG8DiwiiPZQFpyzAUaJLUK3h6l/4P6zcJqNLtl+qYH8cQbFS58W1LU+Eyo8
         HjWoCSMUgH3sP3mRqjakmYATpUp/3dbaXm1lzLvCxorvyWjaHLGM4mY2cz3P0OPSgB8S
         cVC2q3T2CZU2qdS4Oz7mF8leH6xKHl6FtgVq4+s8v30wTABwj5w7Ikgg03J2sXuDnF+k
         fqEQ==
X-Gm-Message-State: AA+aEWaR+HAGjIJU0v3v8eKr79+5YOY46Fp9XbNM7jl5lLOSMjKfnnY/
	RD8c5conqTmljW9JuoDCmlh+tf5M5YTxcO0wy891UA==
X-Google-Smtp-Source: AFSGD/WHgGx7l8DJ49R5TmTCu0EYVN2d5NT4AxJsXxcKLvthA+bIoDGLY4t0RSXBjYzIbYVMpzGPKUXphngYYLFLvN0=
X-Received: by 2002:a19:7352:: with SMTP id o79mr3829895lfc.104.1544867439515;
 Sat, 15 Dec 2018 01:50:39 -0800 (PST)
MIME-Version: 1.0
References: <20181215042937.59218.47587@bigbox.local>
In-Reply-To: <20181215042937.59218.47587@bigbox.local>
From: sainadh jamalpur <sainadhjamalpur@gmail.com>
Date: Sat, 15 Dec 2018 15:20:27 +0530
Message-ID: <CAJ+O5PEQauJuD7SCLG2Z4B8h5b3uqPq45=9P6vT-a4qCjaSPWg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for sainadhjamalpur@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000f51c48057d0c7aa9"

--000000000000f51c48057d0c7aa9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Sat, 15 Dec 2018, 09:59 <kurt@seifried.org wrote:

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

--000000000000f51c48057d0c7aa9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept</div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr">On Sat, 15 Dec 2018, 09:59  &lt;<a href=3D"mailto:kurt@seifried.org">k=
urt@seifried.org</a> wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is=
 a confirmation email sent from CVE request form at <a href=3D"https://iwan=
tacve.org/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://iwantac=
ve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you f=
illed out the CVE form and want one, we can&#39;t use the data until you ac=
cept the MITRE CVE Terms of Use). <br>
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

--000000000000f51c48057d0c7aa9--
