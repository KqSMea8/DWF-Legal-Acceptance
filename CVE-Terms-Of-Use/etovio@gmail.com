Delivered-To: kurt@seifried.org
Received: by 10.157.1.148 with SMTP id e20csp177622ote;
        Wed, 13 Sep 2017 19:17:10 -0700 (PDT)
X-Received: by 10.202.84.11 with SMTP id i11mr21202431oib.152.1505355430577;
        Wed, 13 Sep 2017 19:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505355430; cv=none;
        d=google.com; s=arc-20160816;
        b=DyKc4dr6qNu8oX44BbvGd69EV7laycNPbrEsL73Sj6gWbnFI5IKEzsRR7JNfAQXZPW
         xvJtRB3sKZxWTOrGNLlVtbWVfyNO56SluCY4NLnE061v/+lvCdRBro29kvQmGahNHzQB
         6JslogH7X8V3NKQM6BK4nE7HDuL0pPCePWgvTT718llgH2Ja9evtmrN1DcArjdd7OCRd
         gMFOfi36cihTAz0p/tb9pkvIpZV7zt7g3/9QWyM798WRA/6G7hXOC+TLzfEWonzv6f4M
         iuaAVdhxW4EQ/oOL3H8/jBmrT6o1PHOI+1e721j/Nd8JIo2VL56+GONzslW23eNVQRs9
         WVYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=HGoh9s2rzK5DxHFHJ1Gz5J2J6wq28J+vfOdUpSgb3ZM=;
        b=WFSp7bsu35menYOgR0q0bNSB8WQ4ExAKJPPLUfWZNrBxV2a1fcFcilfj//9ymQ2woQ
         iNCHCK9wQbYRvhSVmUB0p1kASmCr4CaekHri7SKLrOdeOAJrq0V8KFJwODGpXoL9aAEz
         WeChbDIvU/687XpNpsVaeAHYkfQxr/YviwA+9m9j8xEa3R7vCE3JT8Hlfv6g4Ucic86E
         R9zgoV6+8SIJB2iDMl6uThDyiRzTl3SPwjcOcnaWWwbGcqiP2NQty9UF4T+8YQt+8a71
         QhPxiWKDD80v0h6pldEaEjK9osnawRgXcsJ7ykE4sncQl7UojOMB1OUEIqckOsV6RRBC
         PrMA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TKlqkKTW;
       spf=pass (google.com: domain of etovio@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=etovio@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <etovio@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id o205sor2151732oib.276.2017.09.13.19.17.10
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 13 Sep 2017 19:17:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of etovio@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TKlqkKTW;
       spf=pass (google.com: domain of etovio@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=etovio@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=HGoh9s2rzK5DxHFHJ1Gz5J2J6wq28J+vfOdUpSgb3ZM=;
        b=TKlqkKTWeo6OwrSnmKDi3wiUeX/GA62owxxF4/aL//lvWHkixSIwo5XgaRfsfkK10S
         FGSHyP1PoDFWKCnLpxn2cf0BDj09XnaMpwMOjUm8fnTvbqXgTS5UXznNFyKW6Zc9/78w
         SXlmmc0ieDLTuVmu2SEr3T53QOoz7D7WGNoiuzZ0d1XmmBw3ZgVWnjUmUMIioCYaCkUp
         3vSCLIERHJriIsUnzo161LksKlqhJVfom5gxSsX0Y0ZFka8n0sWpO0Bz5PDZEoOdjvFH
         bMKcS/Hkk0bRSW7hTvVAaeP4/PFh/KtOjBaTqkRXovmk6UR1RROAkXKSG2zLbe6yyUiv
         aJXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=HGoh9s2rzK5DxHFHJ1Gz5J2J6wq28J+vfOdUpSgb3ZM=;
        b=ESwLaF7efEmY3zL0bXAEEXFaPKTcsmBSz2XOE/3NW1XAWTLpLrIAyyQmsZPI9wRY5z
         7TEciMzSk3x8BjGGlOgg5h0MBM7CmvX1HHtfBcrqzeAvQPio4OuEOCQYOgbtJj/y/+yn
         qL/PUEFriU8F3LmyumJJLFqiBYbssHVNh41blPk3kKKdYBvELoYXWZAQ8RFK3pe8eYho
         omS/FOTbhcVX28ewJOxa8qXxXr0jRw+pTAFj9MuSE3x2gwBM7+umgTqjOlNDkX5FFdwU
         doLoqLYu748psxKYMmQR8f93r/XNbeWO5UkH2L9TqcnpkyevYveS4pGBdOksOfbR2Uy/
         W02Q==
X-Gm-Message-State: AHPjjUjXOJK/3cjCjPZR6ynANo8yqogwjuqCILuomhjrsdiPzWPsP3Rb
	Gu9/t6W8mgDGONZv4F4MIo58a/qHxvxPbXRnx/avfQ==
X-Google-Smtp-Source: AOwi7QAvvP51djX24DfSHWWoMSW7axQeZdv1jsFiLYEz+2yrrYP017FwsEsVOnF7zhxfgyiPeQjd9gbY2V/sxloF6wU=
X-Received: by 10.202.75.211 with SMTP id y202mr22566904oia.140.1505355430082;
 Wed, 13 Sep 2017 19:17:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.166.198 with HTTP; Wed, 13 Sep 2017 19:17:09 -0700 (PDT)
In-Reply-To: <20170913203718.2669.70447@222.1.168.192.in-addr.arpa>
References: <20170913203718.2669.70447@222.1.168.192.in-addr.arpa>
From: Ziqiang Gu <etovio@gmail.com>
Date: Thu, 14 Sep 2017 02:17:09 +0000
Message-ID: <CALwpKNv+nmF+jN5e7OS5S_Qcv9Z2PykXa6fxDWEwmE08HVBmTA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for etovio@gmail.com
To: kurt@seifried.org, vio eto <etovio@gmail.com>
Content-Type: multipart/alternative; boundary="001a1134e188abbcdb05591cdf83"

--001a1134e188abbcdb05591cdf83
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept


This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at https://github.com/
distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when
they were accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically
in future (you'll have to manually ask). But again, if you have no idea
what a CVE is then you can ignore this/ask to be added to the block list
with no problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) an=
d all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-
Database/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.

2017-09-13 20:37 GMT+00:00 <kurt@seifried.org>:

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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>


--=20
-------------------------------
etovio@gmail.com

--001a1134e188abbcdb05591cdf83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font size=3D"4">I accept</font><br><div><span style=3D"fo=
nt-size:14px"><br></span></div><div><span style=3D"font-size:14px"><br></sp=
an></div><div><span style=3D"font-size:14px">This is a confirmation email s=
ent from CVE request form at=C2=A0</span><a href=3D"https://iwantacve.org/"=
 rel=3D"noreferrer" target=3D"_blank" style=3D"font-size:14px">https://iwan=
tacve.org/</a><span style=3D"font-size:14px">=C2=A0asking you to accept the=
 MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,=
 we can&#39;t use the data until you accept the MITRE CVE Terms of Use).</s=
pan><br style=3D"font-size:14px"><br style=3D"font-size:14px"><span style=
=3D"font-size:14px">Simply quote the email and reply with &quot;I accept&qu=
ot; at the top if you agree to the MITRE CVE Terms of Use and we will add a=
 copy of the email to the DWF MITRE CVE Terms of Use acceptance data at=C2=
=A0</span><a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal=
-Acceptance/tree/master/Terms-Of-Use" rel=3D"noreferrer" target=3D"_blank" =
style=3D"font-size:14px">https://github.com/<wbr>distributedweaknessfiling/=
DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a><br style=3D"fon=
t-size:14px"><br style=3D"font-size:14px"><span style=3D"font-size:14px">Th=
e reason we use a complete copy of the email is that it provides an artifac=
t showing that the email address accepted the Terms of Use, when they were =
accepted and so on.</span><br style=3D"font-size:14px"><br style=3D"font-si=
ze:14px"><span style=3D"font-size:14px">If you did not submit a CVE request=
 to the DWF you can safely ignore this message, however we may resend it at=
 some point in the future, if you don&#39;t want any future emails simply r=
eply with &quot;unsubscribe&quot; or &quot;DON&#39;T SEND ME THIS EMAIL EVE=
R AGAIN&quot; and I&#39;ll add your email address to the block list so we d=
on&#39;t spam you with these, please note that this will prevent you from b=
eing able to accept the MITRE CVE Terms of Use via the DWF automatically in=
 future (you&#39;ll have to manually ask). But again, if you have no idea w=
hat a CVE is then you can ignore this/ask to be added to the block list wit=
h no problems.</span><br style=3D"font-size:14px"><br style=3D"font-size:14=
px"><span style=3D"font-size:14px">MITRE CVE Terms of Use</span><br style=
=3D"font-size:14px"><br style=3D"font-size:14px"><span style=3D"font-size:1=
4px">LICENSE</span><br style=3D"font-size:14px"><br style=3D"font-size:14px=
"><span style=3D"font-size:14px">Submissions: For all materials you submit =
to the Common Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant t=
o The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a =
perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable c=
opyright license to reproduce, prepare derivative works of, publicly displa=
y, publicly perform, sublicense, and distribute such materials and derivati=
ve works. Unless required by applicable law or agreed to in writing, you pr=
ovide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR C=
ONDITIONS OF ANY KIND, either express or implied, including, without limita=
tion, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABIL=
ITY, or FITNESS FOR A PARTICULAR PURPOSE.</span><br style=3D"font-size:14px=
"><br style=3D"font-size:14px"><span style=3D"font-size:14px">CVE Usage: MI=
TRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, roy=
alty-free, irrevocable copyright license to reproduce, prepare derivative w=
orks of, publicly display, publicly perform, sublicense, and distribute Com=
mon Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make for such p=
urposes is authorized provided that you reproduce MITRE&#39;s copyright des=
ignation and this license in any such copy.</span><br style=3D"font-size:14=
px"><br style=3D"font-size:14px"><span style=3D"font-size:14px">DISCLAIMERS=
</span><br style=3D"font-size:14px"><br style=3D"font-size:14px"><span styl=
e=3D"font-size:14px">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PR=
OVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBU=
TOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MI=
TRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DI=
SCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY=
 WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIG=
HTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULA=
R PURPOSE.</span><br style=3D"font-size:14px"><br style=3D"font-size:14px">=
<span style=3D"font-size:14px">A copy is available at=C2=A0</span><a href=
=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/master/T=
ermsOfUse.md" rel=3D"noreferrer" target=3D"_blank" style=3D"font-size:14px"=
>https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/blob/m=
aster/<wbr>TermsOfUse.md</a><br style=3D"font-size:14px"><br style=3D"font-=
size:14px"><span style=3D"font-size:14px">To contact the DWF either hit rep=
ly, or email=C2=A0</span><a href=3D"mailto:kurt@seifried.org" style=3D"font=
-size:14px">kurt@seifried.org</a><span style=3D"font-size:14px">=C2=A0manua=
lly with your question/concerns/etc.</span><br></div></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">2017-09-13 20:37 GMT+00:00  <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kur=
t@seifried.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is =
a confirmation email sent from CVE request form at <a href=3D"https://iwant=
acve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> =
asking you to accept the MITRE CVE Terms of Use (assuming you filled out th=
e CVE form and want one, we can&#39;t use the data until you accept the MIT=
RE CVE Terms of Use).<br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">-------------------=
------------<br><a href=3D"mailto:etovio@gmail.com" target=3D"_blank">etovi=
o@gmail.com</a></div>
</div>

--001a1134e188abbcdb05591cdf83--
