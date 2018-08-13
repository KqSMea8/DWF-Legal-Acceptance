Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2784003otd;
        Mon, 13 Aug 2018 00:13:02 -0700 (PDT)
X-Received: by 2002:a6b:ef0b:: with SMTP id k11-v6mr7186112ioh.12.1534144382626;
        Mon, 13 Aug 2018 00:13:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1534144382; cv=none;
        d=google.com; s=arc-20160816;
        b=u6HZKIkKAcdcnZVOQi9hFatQmpR4vBzsIwFx1++Acokb30dpvHEa/8FyID3b3Hn6IJ
         GNaNQWq65V77ZahhTSJxbpRDWuPk1q5yLcAiEmAKeMH7rvBZ2YfBQ+i9dJ870yQ88HPd
         BHN6SeezfopJcM6YVMipKtQw7I+sgzHWw7ec6zy5f+9pGziVRWs7PkFIVPW6EFoy0gCA
         Z9x0Tnurpu03lpavBuq7caitdja6Fz7OHmmjtgeijl3jVHZxaubZayXDrxQCL3SMZm0x
         F18NkozzqX0+ly3GuR5qFfkBvZ3WLapuiGLqdrpuvfhtTfuJdYuIqi3LkW3p4Ahfp8bU
         A1Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=3LaR3R71FfkCIUbzDVtWVwpA9RqRryz9Bgv35hnAUvU=;
        b=wi9G7Ba/7+lI6K5NT4JWAt7inKWPwTyTUZ3d8LRFcEnDhi2GOsyed+Rcrc34OVQxA9
         V4Y9zL9G7pRbHrxeC0yK1d0MfdhsQB0Mp1mXIi1yiWrKS4Qv0ng6+THpSJrpJPcuEKKV
         eO/8Kvv2gvY0rSWfUj+ctNOkoSbKE/12UX/W+HTwltY8iHj9j7YZwcfeDx8A/RfU95/a
         E00Bd8+GS/5gO909FEUtxrjprzNAgc/LLfQ8Ugd/ceP1M74bNdplCXKJqZtsW8pTAG2k
         VzK3fb+5R+ne+EaB9QHyEa8QygAcO2i2eiItv7RXkBbpmn65iefmXom43+aTi7G2hF4t
         hxvQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b7mmG6AP;
       spf=pass (google.com: domain of epitectus.agamemon@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=epitectus.agamemon@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <epitectus.agamemon@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 19-v6sor5964685iou.304.2018.08.13.00.13.02
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 13 Aug 2018 00:13:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of epitectus.agamemon@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b7mmG6AP;
       spf=pass (google.com: domain of epitectus.agamemon@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=epitectus.agamemon@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=3LaR3R71FfkCIUbzDVtWVwpA9RqRryz9Bgv35hnAUvU=;
        b=b7mmG6APYW6lavRVqtvtLUZz4ovdFe08cg+aalxt/jam7d3V32EV1hGrE5iQ9vKOh+
         fLKq6qG9sfeO+RTkEVNMfbsTnNmVQ3LDarLnfI0TJBppZHlOCz87uL8NxufuuPaYFHWA
         1p/3Szng3jWz1ZWLgajK7OKGSHHvPrC4X1k9Miu6MVNW4R1FTcwDJl6tgC8gVV0uEdnZ
         1h+DHGPjFVBeMFwCuaTTM+JoXY19n9whz/YMvUARthfPoR92NjRA3g0dyOKJC2J1uX3H
         7CZQq0n5BvBv0jrChpo9nV4VHbctlG/XEqoRTo9stt0IU4JvB4sBf7RdmyqFwJmX9g+z
         Lw6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=3LaR3R71FfkCIUbzDVtWVwpA9RqRryz9Bgv35hnAUvU=;
        b=qfh3KTOvqC03UPGKB3iiY5QlAuvd5hCB39c+Aroo9LZ1rM8llZPkXB39K3xonrfA0R
         SIw/nZ4kMLDoENA2rYoCfIUb7WrTtWVmKarIuyb/mBrgN7RXYnKQYNJX+pSK/bLb6Fat
         OnkRu8cJ9Sizm93aS3zAUEr5yeAeeCnR58Ewcda1K7eaWarftZJ5LMLRwBNXbMidaXpC
         HzFPBgqCANenO7KHkKxZKjYJY3CNUmpqDkM5ZhaizuElDLxKNsIZJSJaQADHGN6HNY6H
         4/TYaqz/DQsaHkYF/LVz94w0NHrKnT67bn44fZ4Y6rfVT7xjetCD/eYGotUEzYdB50SS
         Dd/g==
X-Gm-Message-State: AOUpUlHJWQ6aUPbPcsrI7uDVJsndag7Yy3zG4WrlXVPb5w4FMTab8OvH
	aE4JWqCs4RqmvigP5dSR5bow3+OZM0C17WoVA7WeNTN5
X-Google-Smtp-Source: AA+uWPxQ4V2VRnRqasuzJsALAKdYK3W+YcL5pHt1dP5ZMlnr8YFY504YilU8jSYRZSChCBfYu+wGR/Sqp6aH9x8zTwo=
X-Received: by 2002:a6b:1505:: with SMTP id 5-v6mr14153959iov.56.1534144382043;
 Mon, 13 Aug 2018 00:13:02 -0700 (PDT)
MIME-Version: 1.0
References: <20180810221320.2668.49942@shiny-2.local>
In-Reply-To: <20180810221320.2668.49942@shiny-2.local>
From: Epitectus Agamemnon <epitectus.agamemon@gmail.com>
Date: Mon, 13 Aug 2018 10:12:51 +0300
Message-ID: <CAN7hghqixrnP8VWV+76hRRrCUA=B_1uEJrM19Hr4zUP3NW+6uA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for epitectus.agamemon@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000ed143e05734bd264"

--000000000000ed143e05734bd264
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

"This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mast=
er/Terms-Of-Use

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

A copy is available at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mast=
er/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc."

On Sat, Aug 11, 2018 at 1:13 AM <kurt@seifried.org> wrote:

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

--000000000000ed143e05734bd264
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div><br></div><div>&quot;<span style=3D"font-size=
:12.8px">This is a confirmation email sent from CVE request form at=C2=A0</=
span><a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank=
" style=3D"font-size:12.8px">https://iwantacve.org/</a><span style=3D"font-=
size:12.8px">=C2=A0asking you to accept the MITRE CVE Terms of Use (assumin=
g you filled out the CVE form and want one, we can&#39;t use the data until=
 you accept the MITRE CVE Terms of Use).=C2=A0</span></div><br style=3D"fon=
t-size:12.8px"><span style=3D"font-size:12.8px">Simply quote the email and =
reply with &quot;I accept&quot; at the top if you agree to the MITRE CVE Te=
rms of Use and we will add a copy of the email to the DWF MITRE CVE Terms o=
f Use acceptance data at=C2=A0</span><a href=3D"https://github.com/distribu=
tedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"nor=
eferrer" target=3D"_blank" style=3D"font-size:12.8px">https://github.com/di=
stributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><b=
r style=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span style=3D"=
font-size:12.8px">The reason we use a complete copy of the email is that it=
 provides an artifact showing that the email address accepted the Terms of =
Use, when they were accepted and so on.=C2=A0</span><br style=3D"font-size:=
12.8px"><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">If =
you did not submit a CVE request to the DWF you can safely ignore this mess=
age, however we may resend it at some point in the future, if you don&#39;t=
 want any future emails simply reply with &quot;unsubscribe&quot; or &quot;=
DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your email a=
ddress to the block list so we don&#39;t spam you with these, please note t=
hat this will prevent you from being able to accept the MITRE CVE Terms of =
Use via the DWF automatically in future (you&#39;ll have to manually ask). =
But again, if you have no idea what a CVE is then you can ignore this/ask t=
o be added to the block list with no problems.=C2=A0</span><br style=3D"fon=
t-size:12.8px"><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8=
px">MITRE CVE Terms of Use</span><br style=3D"font-size:12.8px"><br style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">LICENSE</span><br st=
yle=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span style=3D"font=
-size:12.8px">Submissions: For all materials you submit to the Common Vulne=
rabilities and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corpora=
tion (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwid=
e, non-exclusive, no-charge, royalty-free, irrevocable copyright license to=
 reproduce, prepare derivative works of, publicly display, publicly perform=
, sublicense, and distribute such materials and derivative works. Unless re=
quired by applicable law or agreed to in writing, you provide such material=
s on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KI=
ND, either express or implied, including, without limitation, any warrantie=
s or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR=
 A PARTICULAR PURPOSE.</span><br style=3D"font-size:12.8px"><br style=3D"fo=
nt-size:12.8px"><span style=3D"font-size:12.8px">CVE Usage: MITRE hereby gr=
ants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, ir=
revocable copyright license to reproduce, prepare derivative works of, publ=
icly display, publicly perform, sublicense, and distribute Common Vulnerabi=
lities and Exposures (CVE=C2=AE). Any copy you make for such purposes is au=
thorized provided that you reproduce MITRE&#39;s copyright designation and =
this license in any such copy.</span><br style=3D"font-size:12.8px"><br sty=
le=3D"font-size:12.8px"><span style=3D"font-size:12.8px">DISCLAIMERS</span>=
<br style=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN P=
ROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIB=
UTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE M=
ITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, D=
ISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO AN=
Y WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RI=
GHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICUL=
AR PURPOSE.</span><br style=3D"font-size:12.8px"><br style=3D"font-size:12.=
8px"><span style=3D"font-size:12.8px">A copy is available at=C2=A0</span><a=
 href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/=
blob/master/Terms-Of-Use.md" rel=3D"noreferrer" target=3D"_blank" style=3D"=
font-size:12.8px">https://github.com/distributedweaknessfiling/DWF-Legal-Ac=
ceptance/blob/master/Terms-Of-Use.md</a><br style=3D"font-size:12.8px"><br =
style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">To contact the =
DWF either hit reply, or email=C2=A0</span><a href=3D"mailto:kurt@seifried.=
org" target=3D"_blank" style=3D"font-size:12.8px">kurt@seifried.org</a><spa=
n style=3D"font-size:12.8px">=C2=A0manually with your question/concerns/etc=
.</span>&quot;</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sat,=
 Aug 11, 2018 at 1:13 AM &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seif=
ried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a c=
onfirmation email sent from CVE request form at <a href=3D"https://iwantacv=
e.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> ask=
ing you to accept the MITRE CVE Terms of Use (assuming you filled out the C=
VE form and want one, we can&#39;t use the data until you accept the MITRE =
CVE Terms of Use). <br>
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

--000000000000ed143e05734bd264--
