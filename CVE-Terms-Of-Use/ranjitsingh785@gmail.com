Delivered-To: kurt@seifried.org
Received: by 10.79.37.80 with SMTP id l77csp7317974ivl;
        Sun, 22 Oct 2017 05:40:59 -0700 (PDT)
X-Received: by 10.55.42.73 with SMTP id q70mr14527435qkh.337.1508676059102;
        Sun, 22 Oct 2017 05:40:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508676059; cv=none;
        d=google.com; s=arc-20160816;
        b=g0AR7HCwVHtdCAeoSy5eClUlcG74Bwdsg6L4LqR9LufVF6FXkeZMo+GsG0FJ0xZ3AT
         RttYra3BjAMXFqNEr2O7weVWXhxd9bvheEtHLL+TlYq9bVKIv8iYK3SpPUe7vaW5QAcC
         fPEw2kXhHlxgDN0WLDEIWNpoJBc9OT7u5L4G3bbSZQ8NVYPNZOho/uBKzbt9VazAfoDX
         5Bop40p9W1jBnCW7Tn1gMor1gxf2poHy7Cwj4tiT4of3mLsKFFHuOed7RaxoAnaAoXIz
         6kH/gRtetXhhpIE7UUr9TWqnG+SxAcVK2JQtFt8ZcdCu5ai/zTz/+g72Su3OHNhaeW6f
         lmEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=eIf30qhlJnCtjxtgLNSjU+n02d1wSaYqYfVO/UX3Lcg=;
        b=lDtFGrbiqn3bcAw17NvyGo8T/g+lADfsbm1H/YYFWqHjTF2oJV3NxEWiZClo53wwmo
         i6IuAkCYzJmLzbKMLwLt/SFm2wMoga9m3wa+8qATILdjKfdNK9QqjaZj8xRLbl4MMKuo
         vHFJd6LiW320Rl1+AMtid33XcuxPghjKkyH/0GFkuzEqsJ3OWJEZCYEcBPs/Y54wVJ3x
         U+pl4Lw4nZ2ohVRtI87hN7AK2G/AOhwN+LJ3/M5WJDEV34TWqUAhUDuChilvlTP4I5gN
         927Nv9BkofXdpiZKUOCIWmJrUUzMk9RYT4Dz4BzmkJP4g1Lz3I9XYwGWnlWx4eiwO4Rv
         KyOQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QiU1AH3d;
       spf=pass (google.com: domain of ranjitsingh785@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ranjitsingh785@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <ranjitsingh785@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id s51sor3305566qtk.42.2017.10.22.05.40.58
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 22 Oct 2017 05:40:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ranjitsingh785@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QiU1AH3d;
       spf=pass (google.com: domain of ranjitsingh785@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ranjitsingh785@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=eIf30qhlJnCtjxtgLNSjU+n02d1wSaYqYfVO/UX3Lcg=;
        b=QiU1AH3dru1F1Ktxvz5gWHJ6x29ZGmfuegTgwgI0VVBajOELMEYid1+jJQ9bBfRb6M
         QSTbUiTPZcTQv5XQGYaQWBfqFLMsnXVQZtAf1MKaIrzTSS3Jw4tFObYH0UwSsPGtWvqz
         PbLxQ8jxl+SYxVrGHdJvb1OdPV7SRF/rOVEAA6vFvGAhAaPyV3W1ygSWCVXkvdJZl+L3
         lUJBQcszwZUL+xjJzEn8Cd1rOKZGRSsoSfb68Mm4lVuI7QenLWUmasLAsJeuaM6UqVEV
         GrNUKX0/45DRKAqTbfyZs6NjESRIFi+V3m6Un+B/AWBNIFcEPO7SdOjweI6mx1tJDTXS
         TBzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=eIf30qhlJnCtjxtgLNSjU+n02d1wSaYqYfVO/UX3Lcg=;
        b=IheKe1Aja97uqRssB2DsffQk4wICusHL+KdvnGR0T1Zcd4/apIWoFidwfKoNiC0kRS
         dO2SDsCK8QkljvYgf+lR3epEinffXOhF2/3zlQ2FnEL5gVufLhq4OHKwvbXqeyqROOue
         yxOSnQ9kFScz0OdJMhliRz7hn2BdpGNmiWUsnzDvvUWsx0Z7fF31z3iLQcK1wxRT0L4+
         aeRuAi6gCSIW7AgJ0qPVp1lQ/epCjuzBW+eBjJP5Xf2Ov3K+uwN5sW74cO3Bbjp8gdRE
         Ok9Xd4CP2D2FgBR6ByuYeW44XIxjRHCKBjINnvPVQg/cQk/t3ZbWOp6zJSs6wfFpzZ8f
         A2ug==
X-Gm-Message-State: AMCzsaX3EEDgDObl6w8g4ISnd5ZhdlihfKC5x8wX6qRR7fK9vz8yN8/u
	hy/slEC5cJv6oR5DU6VfvnBfX2aBzuPx/n25/q+BOg==
X-Google-Smtp-Source: ABhQp+R4cLXNqYtDxX+KveK4qaVRUiA3ft7JAOlx4tnpbS1ttKAcH1G9Gf9r2jCZq6B46DLfsmZ8p1eJJ824Ouhnt4k=
X-Received: by 10.200.36.150 with SMTP id s22mr15793087qts.237.1508676058581;
 Sun, 22 Oct 2017 05:40:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.84.115 with HTTP; Sun, 22 Oct 2017 05:40:58 -0700 (PDT)
In-Reply-To: <20171021210025.19234.70350@shiny-2.local>
References: <20171021210025.19234.70350@shiny-2.local>
From: ranjit singh <ranjitsingh785@gmail.com>
Date: Sun, 22 Oct 2017 18:10:58 +0530
Message-ID: <CAPNBpXs4yVUSCaLEjgMrPcSD9_a3Sx8AmMuaFKS2GFejUBn6=w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for ranjitsingh785@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114078868d8e3c055c2204d7"

--001a114078868d8e3c055c2204d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

On Sun, Oct 22, 2017 at 2:30 AM, <kurt@seifried.org> wrote:

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


Thanks and Regards
*Ranjit Kumar Singh*
contact:ranjitsingh785@gmail.com

--001a114078868d8e3c055c2204d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.<div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Sun, Oct 22, 2017 at 2:30 AM,  <span dir=3D"ltr">&lt;<a href=3D=
"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">This is a co=
nfirmation email sent from CVE request form at <a href=3D"https://iwantacve=
.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> aski=
ng you to accept the MITRE CVE Terms of Use (assuming you filled out the CV=
E form and want one, we can&#39;t use the data until you accept the MITRE C=
VE Terms of Use).<br>
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
</blockquote></div><br><br clear=3D"all"><br></div><div class=3D"gmail_extr=
a">Thanks and Regards<br></div><div class=3D"gmail_extra"><div class=3D"gma=
il_signature"><div dir=3D"ltr"><div><div><b>Ranjit Kumar Singh</b><br></div=
></div>contact:<a href=3D"mailto:ranjitsingh785@gmail.com" target=3D"_blank=
">ranjitsingh785@gmail.com</a><br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 <br></div></div>
</div></div>

--001a114078868d8e3c055c2204d7--
