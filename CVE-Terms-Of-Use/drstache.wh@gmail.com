Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp1771871otd;
        Thu, 19 Jul 2018 07:46:36 -0700 (PDT)
X-Received: by 2002:a50:b5e6:: with SMTP id a93-v6mr11356361ede.94.1532011596599;
        Thu, 19 Jul 2018 07:46:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1532011596; cv=none;
        d=google.com; s=arc-20160816;
        b=Th5SJpxcX1I/saeyPXQfxMdRF9APHMikEFqAv6CKLwVotmQkstnCGYAU0yeAWn0tDY
         aOWTKdFht44uDnXiZV0h00crqVz/6/QXdS84xH+y9SXRCJ8326FCJ+A48astBMq4+ixd
         nigr8LvZNk5JGM91WzagH03ZZu+B3cI6xPCRgcdVSJRV0rBg4XjxQW6WnujHGMT5UQAc
         83nHh7n1ydc7E5unDZ79NAMSer51k8y/oYugI77LId/8Akrkn2zMdwmZ+gcF8GH3Kzu7
         KGM9OMFyq8Wgrt5FmHPy+kBkqalXjKYb4FOLBUJoJT8rmJ1K682MnLZzEHswI+nRck/E
         Mcwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=0A2hA4bc3392n1ecHMvGWhVKXdD45qKv7x4thpiFX7Q=;
        b=DYQn5T3s0Zn8WQQoaDWMTZUp8efRjwibjrCpYtuck+NA/l6958bYu0bAHxNm87NkeV
         f217torEghZfoAPQb+WFrcsoy5iv8BqDa8+RrQWUn+XG4vyDYvZ5pRtyvV4WQ+mlx86C
         aYzsUL2uNBvKBPDFJjKcQ8f+W0Wrab88sDa+hRUExa/cew3VLEJXhiTGAOulgWODPcEo
         vIGKJjOdrk0qZbZy2oTLqXK3OAHhul/ggH7QRHJLZdMyll/2ef69G06CnJ/C4/06g1aC
         tkFUIFyrfy5+oKBqlA6CdQX08HpzceSZtLbLHm3aGZ53j27GGentclt54y+JddZ7Li2j
         e1DA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W3UdzU4g;
       spf=pass (google.com: domain of drstache.wh@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=drstache.wh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <drstache.wh@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id n1-v6sor4087912edo.31.2018.07.19.07.46.36
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 19 Jul 2018 07:46:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of drstache.wh@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W3UdzU4g;
       spf=pass (google.com: domain of drstache.wh@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=drstache.wh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=0A2hA4bc3392n1ecHMvGWhVKXdD45qKv7x4thpiFX7Q=;
        b=W3UdzU4glXJ0T5262NXaGm3/2vL1V8Zgmo07GWDK0o6smG4EuKMqqseizUzCfUHC0E
         BNrD68Fa0qGm6MdACOQNbUYCCArIBFqGboIldJXTDyW5XWhNoaP0GRS64NYjrM74fQSB
         p42alr//5b3udcE5tpNSgn5mMEUGTrxF49o7h1VtOSi1Ek1YpajGfjDlBx4uzkmOInXs
         MlXUd7NQDODKCgXFxcawN81oQ2eCjJXgxnEemJj/tW6gP/koe0RFkO+pHCyw0ym3fOjs
         oXKX4VkonA9sqTdtAJnh36YQkZLlx+/V9exSkqIw1e2BDMr0eXJEE2YLv9jqms+HzN4R
         1Brg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=0A2hA4bc3392n1ecHMvGWhVKXdD45qKv7x4thpiFX7Q=;
        b=U10hxkAt9t8v9haTdUf147lb2wTByir9EFEWcRT/7Tj96GesZA5yG/4LVygWg/EL/w
         2oldWofFl3J1gBYM9mzbTwiaErON++Qlac3GQvMW9eoHBCGyqlL01B1wFSestz/8Ac5s
         KbaConMSj77gEbpviqTMAtLNQeMGFaP68vMJYxG7BYqe6XyhowMmIDa1/w3mOXRPyrFq
         A0UdkOjvpNTHwV2roCrRomBqBRPa0gRXVjb+1mYxROH6QvQHsNFFEdfBLJ66bu9Oj9KC
         qkN0LwvL/GLq6ty4diJJjsMFaNRORoonYWJIn8qTjJaraUj+9YOpc7x6F/TBRpiyVJqz
         Yvtg==
X-Gm-Message-State: AOUpUlHBNiT4As+C6kg9nm3LeirFzGDpO0QjrJ7dPKEHG8FyPfzvxOVv
	UrAEeDydAodxVXFzUPbQ+DGRzMnX8uiq2WI59UIS4hM6
X-Google-Smtp-Source: AAOMgpe7t6utKn5KjPE+HYRUpzkE2Ec5gOAOCC6KLM+Z7lTmxBuaKfq8RyB4EVATVROnvb+xqElwOIeP9dDPoae74Oo=
X-Received: by 2002:a50:9943:: with SMTP id l3-v6mr11393882edb.272.1532011596139;
 Thu, 19 Jul 2018 07:46:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:83c5:0:0:0:0:0 with HTTP; Thu, 19 Jul 2018 07:46:35
 -0700 (PDT)
In-Reply-To: <20180719144346.7058.16718@shiny-2.local>
References: <20180719144346.7058.16718@shiny-2.local>
From: DrStache WH <drstache.wh@gmail.com>
Date: Thu, 19 Jul 2018 16:46:35 +0200
Message-ID: <CAEN6dr1T24TWrgE4Gio4p7x5SSh410TCV=hd33Z6oAScVnvp6w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for drstache.wh@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000fad0ff05715b3e23"

--000000000000fad0ff05715b3e23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 I accept

2018-07-19 16:43 GMT+02:00 <kurt@seifried.org>:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-
> Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--000000000000fad0ff05715b3e23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
I accept<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>2018-07-19 16:43 GMT+02:00  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@s=
eifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span>:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">This is a confirmation email sent from CVE request =
form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_bl=
ank">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of=
 Use (assuming you filled out the CVE form and want one, we can&#39;t use t=
he data until you accept the MITRE CVE Terms of Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>distribut=
edweaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a=
><br>
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
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc. <br=
>
<br>
</blockquote></div><br></div>

--000000000000fad0ff05715b3e23--
