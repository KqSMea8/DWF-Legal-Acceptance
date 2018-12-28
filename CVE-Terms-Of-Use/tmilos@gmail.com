Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1010031ivl;
        Thu, 5 Apr 2018 03:01:35 -0700 (PDT)
X-Received: by 10.107.44.199 with SMTP id s190mr20594833ios.123.1522922495269;
        Thu, 05 Apr 2018 03:01:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522922495; cv=none;
        d=google.com; s=arc-20160816;
        b=RSGDLNzg8J+BHdOEuUnlVfO1aeL7u/oMINr9tA2dWY/kAQUoTSh83zcU4s+pl08JrV
         0hs2QNFYfM8pj7CHbhRrf4i+tFaCNglQApwCEWE5vaMhxXhXRXfBjRlW7kIheaZ2LDTC
         2+Zow7INLudOlDiMTJQrMZVZPkbnpAoF4wmfEyKetj9Kv/8CqV6iMJ9R4zBAqdBRDCX2
         mt5BRxcc21EjgYC0oiwxP2UwU7UiDZnS8LQ0alHnzI8CZTihG2VQbmQq8WIdVqi8Kl+G
         IInnYnSJUn0mLDCRDW4YDRYe4DhkDL4ug1k/yVN4Xqxbe8ZjP0rLNGb1ULHXIEWXVumt
         VUlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=laBgy7uhswujeK7V1n4hdso9C5oRQtmFvSKhkQcXLvw=;
        b=uvoZr9wxmkAqpCJ2qE1db192ItX/k25wbMzlRwVKm5dHeCzkMrevK0orJtjFwWauLi
         kGkZlPZL7/lpI8vnHsemLYxf1Xym8Sh1uSlJTE1J0FFIMZP3u20+fHZhZR7cTP8HP3W7
         QDysVUoyfEYCUD4StywM5XkhUb2L6ynyrOGODHe+ZJCfIe6np9dCfvsqC/9aj1VPwrwF
         UN7jYKjdI9DPtSnqVaMqc/n8XXi/jYuEUy/uPrL//Yu2/GAbWExQN+EzGCmBND3GMpGO
         pjCxdovJGcZI12h82If5cg9t4/E7Q4Ro4v8iU4oIn2XF8bCOFBuoga1CLFjNLdm4lT3/
         LeQQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DYfTeLBh;
       spf=pass (google.com: domain of tmilos@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tmilos@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tmilos@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id l5-v6sor461232itl.59.2018.04.05.03.01.35
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 05 Apr 2018 03:01:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of tmilos@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DYfTeLBh;
       spf=pass (google.com: domain of tmilos@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tmilos@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=laBgy7uhswujeK7V1n4hdso9C5oRQtmFvSKhkQcXLvw=;
        b=DYfTeLBhVj1eoy7k0w9NdoJhO1+nbhdpUAYuKWenunvPuqwrr5tATR8pt1s3WLJ6I/
         vO7sxNW4VGYeyoy0nljIgY0rkANwuNlXqXg0sTS500EJLLzBPhM71yE1LK08LbtIIx0n
         6KAqiS/xMF3TERR69qokM/SG31PtxK+CVBsJWWbw8Yr1jqgLoRR9hiKfFpbIt7sgsOp+
         GMYQKcCSyjcq67sfz6dm2bRjRlfSuJVcpqIfBTeBBXAIWDW6vwrcYCoYIpa/npCOi5Oo
         8dYyvPNIf3tUF54vmUx8is0faZ3kZOzWx1iJBdflvuceomOhf8U8IkqtQsXPVdMDkoMt
         QB+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=laBgy7uhswujeK7V1n4hdso9C5oRQtmFvSKhkQcXLvw=;
        b=mxEk4a6KGCbkC4Y5E+xHXjYk80HojK+eu0HwpyN5jEmAfFuk/8IGHA9AwoHsUU9YNJ
         ZgpM6Sp/lURVuhudoitGnFOjpXtn5we/S1uhNMMxxeiXQBQNGKW2nD4JjkUkk8OuHoYO
         J8VXsDXWag1ntklYjUiCuCi1HihtxkdcamLAMOoXCaFyGSXn0e8I1jYfdAvNbwaYc/hC
         GJkJZbgttlsFcvzR7p5lMVHceM+eU0981PPaX/g2Z7yURPrWahmLnKxeU8m3Y546Hh5n
         0OzjbbuPh6v70YooujdoYJeNT71YoY2HjyxJKBFNp+6P2gCMqh8OLiTMAJorc0CBe2LF
         BcpQ==
X-Gm-Message-State: ALQs6tAVrfZ8koYVDIvuaahEkFnDCRW68iOFbwDk21sL+cGo1igeugO3
	5QhG6CDXGkgJMc80LMPSrRGMcLEvHSZQoME2SatmIK2J
X-Google-Smtp-Source: AIpwx49LtU3EsbfvhmY7csRpw0dTgomM8LP0CjCvM0OGvy9/vPXbSLvpH9bm+MuuvQspWp9qpJI/kuRrbD8CiIW7ilY=
X-Received: by 2002:a24:4592:: with SMTP id c18-v6mr10936069itd.125.1522922494522;
 Thu, 05 Apr 2018 03:01:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.62.69 with HTTP; Thu, 5 Apr 2018 03:01:33 -0700 (PDT)
In-Reply-To: <20180405090620.26722.49110@slab.local>
References: <20180405090620.26722.49110@slab.local>
From: Milos Tomic <tmilos@gmail.com>
Date: Thu, 5 Apr 2018 12:01:33 +0200
Message-ID: <CAJmfrYWXTL_CukYGf8QzU_YaJXx7fyPo=WYj0BFRWyVu9ZFk=g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for tmilos@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000004e7a59056917061c"

--0000000000004e7a59056917061c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Apr 5, 2018 at 11:06 AM, <kurt@seifried.org> wrote:

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

--0000000000004e7a59056917061c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">I accept</span><br><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Apr 5, 2018 at 11:0=
6 AM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D=
"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">This is a confirmation email sent from CVE request form at <a href=
=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iw=
antacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming =
you filled out the CVE form and want one, we can&#39;t use the data until y=
ou accept the MITRE CVE Terms of Use).<br>
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
e accepted and so on.<br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div>

--0000000000004e7a59056917061c--
