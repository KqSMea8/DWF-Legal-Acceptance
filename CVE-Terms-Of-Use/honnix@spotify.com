Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2356:0:0:0:0:0 with SMTP id k22csp4351646otd;
        Tue, 6 Nov 2018 10:54:49 -0800 (PST)
X-Received: by 2002:a17:906:a35a:: with SMTP id bz26-v6mr17626427ejb.98.1541530489439;
        Tue, 06 Nov 2018 10:54:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541530489; cv=none;
        d=google.com; s=arc-20160816;
        b=EDl16VI1Iu7s8BNJwr0MAmjPeE6dZEd1KfG7wvYQRvPd/pkfJbPAUHKUrZtO8ENcT8
         PuEQk3MMZPqqsh8BdwwYDX4euI4aZ3mLOgtPwp577JAP7Dz/UdMMFioZTVpu0MyHHV+s
         T3BC3/MyNT/zlBYz7d4UWtTgKcTdPlkKRRph6TAeYrnkrR2GBpm+KCyGdruAO2BtUoRx
         vph8heisCJnJIKBdgTydrUYSmPbfiSQjddG8ctDy00eyx30clK4qgljVyhnqdW3VonjF
         s3h/bgqKP0WomB/NhiCYRfEitDNu6mu2s7Z6EzDNDU9/DO72Y8dIm3YQRCwR8aRsAj6J
         8gsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Ee2j8RfM/qqdd+X/kRFiw1RKL6VpFyJKmedlvI9JZEM=;
        b=ojkin3OHbUNrktd7kmZSEEqV464J7w+KN0Um+CU+BNAa4SvY0aQb4tS8HCcZl6gqG7
         MaeeRL5XxnM40WTXKhsiXeXKUBrl1IkR+3qebHKjDC6L7+/2O6vh13S3rOK0n/ld+H8b
         kwvvsCeEBAOFD2KD1sXDXhsUjjqmNtWK1xKFlMSfHNKNQ3lIFo/Vw5u7zMGud9BMhSfh
         wQWtTEGRtvyvdq0LZ9MtdVqh6gyj+mlZt9Ik6M0DEOPDxDdI8NwivfG+ZVwLyXA0L9Sf
         NIdjYYn1T1n41gkNiBtlNV8ZOsij0C6LuZkOjIybjeGVte1oJs5i0KvXfJqhA0iB77l2
         3F9A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@spotify.com header.s=google header.b=dDWJLXzD;
       spf=pass (google.com: domain of honnix@spotify.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=honnix@spotify.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=spotify.com
Return-Path: <honnix@spotify.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p13-v6sor9569222ejg.36.2018.11.06.10.54.49
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 06 Nov 2018 10:54:49 -0800 (PST)
Received-SPF: pass (google.com: domain of honnix@spotify.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@spotify.com header.s=google header.b=dDWJLXzD;
       spf=pass (google.com: domain of honnix@spotify.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=honnix@spotify.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=spotify.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=spotify.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Ee2j8RfM/qqdd+X/kRFiw1RKL6VpFyJKmedlvI9JZEM=;
        b=dDWJLXzDcMvnjvRUURnuU5CKb2QpHfl84NhSKb1YheWW3VpDuDOFFTzkhjitppr4bc
         rEQPXjwyryQzvDs6pmV5ke1loIToLtG6s6UjiXrkYksyghBsHEsxi9YRobXr122ydg5/
         TI5gAx+VGgL3FEj6aWAw0V+C2l2xsz0h3Pttg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Ee2j8RfM/qqdd+X/kRFiw1RKL6VpFyJKmedlvI9JZEM=;
        b=QVjsf1XCTy6FLhOfWMr8nUYD9VKFLNItMkXI8w7sagkHFo/ltYNKiuh0fmRwboDs9Y
         7g1rVDr/FDXhtZ4/z7ceOyJBhovDLEqdXXDeoL3jjbuTakn0HEO62nh6wdHgElxr7YkF
         hFDvlbAKIImSPaOTPYi5p0T5Y13SUI9H2ksrhg7r0CW/SLge9DTK24LXx/LnxueRCgdX
         jxaQKLXoDLOu2DnLXASLup/Sgltbr1eCWBaMOVpTOt+JEkxl5MMK/8R95ZCn5JWKQHbD
         pket/LdfR9Dr51/6gfCEKwxryGo4t8ImNKbJ0rl8lMvubbUJ8q4FNa0sp27On8wzgaUC
         2vvA==
X-Gm-Message-State: AGRZ1gKpU1anF1Dth0yhME7RszDG0+xi9LFMbffsHaM+YMWKO4xm2Loz
	ZZMD43PxMRoyPqhKt9kC7Z+wZxz0ITVRjW7ivlVLYitc
X-Google-Smtp-Source: AJdET5eNNiZvT1m5evGqltEAprMCYqT8GFXU0b6z6liX7CvRwdxXqCYSgnud/VmnqyVwyoWOQN6l1QTsLz4UB1Brt8U=
X-Received: by 2002:a17:906:a301:: with SMTP id j1-v6mr3025799ejz.188.1541530488565;
 Tue, 06 Nov 2018 10:54:48 -0800 (PST)
MIME-Version: 1.0
References: <20181106164208.7670.36687@bigbox.local>
In-Reply-To: <20181106164208.7670.36687@bigbox.local>
From: Hongxin Liang <honnix@spotify.com>
Date: Tue, 6 Nov 2018 19:54:35 +0100
Message-ID: <CAHaSb9GGEFLe7Lj+s2xuFuPtg+8aA2r6wNsNovUyLE7SrP9C_w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for honnix@spotify.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000002e9fd2057a038937"

--0000000000002e9fd2057a038937
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Tue, Nov 6, 2018, 17:42 <kurt@seifried.org wrote:

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

--0000000000002e9fd2057a038937
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept</div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr">On Tue, Nov 6, 2018, 17:42  &lt;<a href=3D"mailto:kurt@seifried.org">k=
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

--0000000000002e9fd2057a038937--
