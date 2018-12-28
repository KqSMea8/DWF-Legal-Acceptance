Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp231223uag;
        Wed, 10 May 2017 02:30:22 -0700 (PDT)
X-Received: by 10.55.0.65 with SMTP id 62mr4125113qka.158.1494408622919;
        Wed, 10 May 2017 02:30:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1494408622; cv=none;
        d=google.com; s=arc-20160816;
        b=segU2Ui5ffLu9C9tFlnDMM7EzTbbv4LDvXwcNZQNn4Bf7gEDoROLkxqppJLsWS/sFw
         KfYhmd9HkjKMG66uSxOiabg56h7K8SilCyojzsVFc7u2rQ2R1aO0e070RfO0v2MyWu6c
         F4TLtoW1N7F5W+wjPgmXmeIdcoDSczoHMmaMkBtHucMS7S4obBtO1N8KB2j3QBxucxNy
         ECmpHIf1Csztoe6cFZo3da2AO8GojHW/AghuHpqLHCcuO9Rbdc6LSxTSZjBLU2G/YCld
         788JHBDu3e8DYj1wH9bD3iVkGPlOF9E+E78QYbTwU6l6HbCzPiEKaA1ZjQYDNklq2cXT
         Zjmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=0awcECDppWpyf9rX/5gAtzgRuX0uC7zBeweqomKml2w=;
        b=mZwQ/Zw7RUKBhzet4D3PH7jlgzlIRXbtEt6NERMFabviGFU6rRLYBkDloXQ7F+TxAI
         pjKtBsQGwOzIbrlA5X1Zdxn81gFNQCxMiHSqJxFHRAv/0YeiA1UvSW1F6ChpENwOwa9E
         ci5Y8OE2OEsvNXlWmcwpNi8/yF7Jp5rPw//I/jEbpgMorBL7goZuSCSIFc991mXrwnP5
         k3DZCNRLHJg3Ydn5KE5c1YSvhs39IRKRNgEcrJUGmF/vRwbJPgwZj7fr4lctAZTf0ohH
         yZ7umWIf7ucioSrJEyiYI+6DtTmL1tWNizUBFGetxVnK9WXQJDWaqOuJK9qMsXsW9DWu
         qOSQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@lightbend-com.20150623.gappssmtp.com;
       spf=pass (google.com: domain of johannes.rudolph@lightbend.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=johannes.rudolph@lightbend.com
Return-Path: <johannes.rudolph@lightbend.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by mx.google.com with ESMTPS id b74si2687719qkg.39.2017.05.10.02.30.22
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 May 2017 02:30:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of johannes.rudolph@lightbend.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@lightbend-com.20150623.gappssmtp.com;
       spf=pass (google.com: domain of johannes.rudolph@lightbend.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=johannes.rudolph@lightbend.com
Received: by mail-qk0-x230.google.com with SMTP id y201so22939844qka.0
        for <kurt@seifried.org>; Wed, 10 May 2017 02:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightbend-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=0awcECDppWpyf9rX/5gAtzgRuX0uC7zBeweqomKml2w=;
        b=1LnmA/sth1zJE6lLvgLAd3kHI8GRvWM6t4SVDY8pE6wykrlY2scJ4J3j03crvmoHGI
         iDAgZiXMxXQt9ftlru7k8AOnJxjKSymU4kAgA9KF1qEu+N2hgeVMj42aNDAzMADuU3gi
         ZjX1OGQUlCrFf4k5waUVSA0kkBEKuT6tPx62Qe0wdz24ZtEpSotrxU6DodjY1xRUm+KZ
         /MCwGrwXoayScAHnx7h/6IIDC8lwkywVQQtG+O7ubSZWAtEkrbOmSHrbZ6tcoosx5g5c
         H4/jKKfW+wDTqAGZziUma4TNhOXqa4mY5JSOkq/iJdefls/DZv3w322V7t50ifBycyEy
         KZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=0awcECDppWpyf9rX/5gAtzgRuX0uC7zBeweqomKml2w=;
        b=AywYzENFUdgmX3mzC9NpO570DJkt9rSm7fK2Vga/CzOGEeljMFnkhc1iGsLZntD1Qq
         PJy9BViHnMc0SAbyKsLROxSXblJSKSsDVFI6ipIirM8w3PUhNZ7FFttxftlCoBAVoCbL
         YoLVDRMxLSvOeR84IHeU42Kvxz+P/NZC+R6Jd0Gj3V362ig4KxLDz82O3h3+lq+m6Ie1
         vLSTjI07FPtYPcznoUivgTnxoA9LPt7/AJ7PIskZcQcT+GEUkpnKOjtIclJfYpYU+5ra
         n2J0QWj+2wOimHgz5FwR4mdqq0thwkWkJl1H+iSRkMv7mT5haj/NdXNvsD/Ps1TgHvXk
         U51Q==
X-Gm-Message-State: AODbwcD7QkakmaJsP2V3z4onqv7Pa/jUKrhnCSxzAp1HuWxu1FBz70t2
	rdXh8qkgifbKme4DGEvZXhI5BwRtgQXTEFA=
X-Received: by 10.55.98.147 with SMTP id w141mr4315832qkb.90.1494408622420;
 Wed, 10 May 2017 02:30:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.0.82 with HTTP; Wed, 10 May 2017 02:30:21 -0700 (PDT)
In-Reply-To: <20170510022924.8102.72666@bigbox.local>
References: <20170510022924.8102.72666@bigbox.local>
From: Johannes Rudolph <johannes.rudolph@lightbend.com>
Date: Wed, 10 May 2017 11:30:21 +0200
Message-ID: <CAJ3aT-hiGLP1uVAfHv3PVFJ96pvGctxZv-WFhG8zAimXHWDMUQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for johannes.rudolph@lightbend.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=94eb2c05551616c690054f281f58

--94eb2c05551616c690054f281f58
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Wed, May 10, 2017 at 4:29 AM, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--94eb2c05551616c690054f281f58
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Wed, May 10, 2017 at 4:29 AM,  <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation ema=
il sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"=
noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to acce=
pt the MITRE CVE Terms of Use (assuming you filled out the CVE form and wan=
t one, we can&#39;t use the data until you accept the MITRE CVE Terms of Us=
e).<br>
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
</blockquote></div><br></div>

--94eb2c05551616c690054f281f58--
