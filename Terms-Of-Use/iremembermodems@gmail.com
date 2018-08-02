Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp3359118otd;
        Sun, 29 Jul 2018 16:09:13 -0700 (PDT)
X-Received: by 2002:ac8:1a46:: with SMTP id q6-v6mr14934573qtk.5.1532905753370;
        Sun, 29 Jul 2018 16:09:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1532905753; cv=none;
        d=google.com; s=arc-20160816;
        b=D6VnY144iistuDpIqRApPrLeeC/g/IKoEIN7BWVejWToNCuDe9eZLcOz9vk0K/o0og
         3Pfh0riBpso83LdKLjpGuwbVoQ2gc/dhXRvcoZBdP5yR1pSXR/oI/FPLd2iDe9rGME+M
         XmLxEMwEguG1MZpCHXAttbvFpyElwhVUpvbvUj9cWKM3nGHCm9IGy3a8uu1XZy+UUDG3
         CDCzIchXdHyITfLzAlzpUA5hLku259fArI9DhgSj4TZuHLeiSVw/+n0vm4CuJ+QVOU9L
         ZW7Hmn2DC/cJOkRuxwYIEu7qlqZKsSRCLoiz75kqkx/Forshko5WyQb0JDCO3RRaatkM
         lLCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=4/oqr957n5jGjRzxJf2Y8CECk1RYeIYp/Y3EgRCGOqg=;
        b=l3jFNogGHjEU/gFiyQZX6D/p1RoFVeLNZqlhGjSOfVHEPALUeHwReKyRMs0cROfb8D
         dOYO83wxqlZU31GbAL0LxirFidiGzykFXMrIKwYmdKfW9ov6h+Kkr9XaD8vpcpZ+Fhpu
         Z2spr/VeUvx3s3ccWmvbz5AIYNs+mPUtbc4wS8Z3FHpAZHWHpnoUg0umALDK7Br75Yte
         Q+1kAahwBLInRSGp/GxEDNq1rnfR7WXWFS4bLreezVqWH+PhT6EfWP9LVXximpP3V3XD
         GjvcHuBqe9qxyEGXT7RRh1Ct72lOqnxXweUChmjuykETtyTj627y3Jz6XJ6JpJNyJ2Gf
         sNPw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e/m4ARPE";
       spf=pass (google.com: domain of iremembermodems@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=iremembermodems@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <iremembermodems@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f25-v6sor5181623qtp.35.2018.07.29.16.09.12
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 29 Jul 2018 16:09:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of iremembermodems@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e/m4ARPE";
       spf=pass (google.com: domain of iremembermodems@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=iremembermodems@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=4/oqr957n5jGjRzxJf2Y8CECk1RYeIYp/Y3EgRCGOqg=;
        b=e/m4ARPETT1hLdETXnFxddmsYyNvcpE3muCNxKMwesmABN2WG+ovk0k/rROzrhtpvh
         Wlz3XaqfOWoycl7y2S2nENtjm6cMsTM2dJTvZNtF7Uma4g/vEr3Qvwm8xLN5NwvD4h1t
         UdkSRBw1gpK9kt6XmWBqYyuO9N1eHTuiW0f4Ra35AHshYVnxRa84Y6/nt+aPG1z7Yat2
         1mUq7ffg30mquRGbJwZ8dsJOMKNjgJ1DWr/bgB+8ZLPP7ixr+yV62D4A4QQ/TpIwTTiL
         Egm6uoZASqF0kOKMMewt1q4lC/rnk0e3f2r+QiXW/qJ4Nl6JiZVVkH1qcKe+97TlMry4
         PRVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=4/oqr957n5jGjRzxJf2Y8CECk1RYeIYp/Y3EgRCGOqg=;
        b=Ce4XPGqi2umbbo69uh6HQFV382j1EQ3XNG9bcrmLVopQvl55ts7oPeJ78h7riO55sR
         70C+g2be7puBDrYGOpivBSmRIREj7q//wr8fwwaU5shXRJN3b+oOVz4Inx/gzH5/Hpuz
         05UDTha+ZJWfpYDQ2Fo27LEguZFzcPDS4rHPoaFbVchIBHEWxL7MrhSLCIVA5i0veS48
         YH/SMovL5LO1ZKQ0/tOTNZl1XggCIySWLuxqrUUKTZkhCYFqO44t9Ef28Unor+ZS9eys
         iIYhDFn3uAvJzIrO9JPO+wvUqTETeSOVM2q6OQ3H0B+PP1xfnKtNYLZelEgT38UwtYTX
         Z+jw==
X-Gm-Message-State: AOUpUlHw9QHNvlE9lpxR01J9NYEZji2uuYE+dBgev6CfhTeRjr+OMfxT
	Sl/ele9LkN2UbD+9+QtE/N2cKdz8X7Ss6FnrgI14Bg==
X-Google-Smtp-Source: AAOMgpc+e/OHeRMxYfIY8q7CnHlhKFRetPyg/awWVBWce4rhWuCj7W5TwAlE7fWUFXUPnqTdpO8MbCuNLQ+o97uSGiE=
X-Received: by 2002:ac8:28bb:: with SMTP id i56-v6mr14270500qti.140.1532905752532;
 Sun, 29 Jul 2018 16:09:12 -0700 (PDT)
MIME-Version: 1.0
References: <20180729223744.17994.99326@shiny-2.local>
In-Reply-To: <20180729223744.17994.99326@shiny-2.local>
From: Nick - l00ph0le <iremembermodems@gmail.com>
Date: Sun, 29 Jul 2018 19:09:01 -0400
Message-ID: <CAGe8Tx7eccDH2OhpmY+MYCT7+O9CnuvB1a=Fmn1+Mp4HW6dv1g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for iremembermodems@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000da9df705722b6e8a"

--000000000000da9df705722b6e8a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

=E2=80=9CThis is a confirmation email sent from CVE request form at
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
with your question/concerns/etc.
=E2=80=9D

On Sun, Jul 29, 2018 at 6:37 PM <kurt@seifried.org> wrote:

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

--000000000000da9df705722b6e8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">=E2=80=9C<span style=3D"color:rgb(49,49,49);word-spacing:1px;back=
ground-color:rgb(255,255,255)">This is a confirmation email sent from CVE r=
equest form at=C2=A0</span><a href=3D"https://iwantacve.org/" rel=3D"norefe=
rrer" target=3D"_blank" style=3D"font-size:1rem;word-spacing:1px">https://i=
wantacve.org/</a><span style=3D"color:rgb(49,49,49);word-spacing:1px;backgr=
ound-color:rgb(255,255,255)">=C2=A0asking you to accept the MITRE CVE Terms=
 of Use (assuming you filled out the CVE form and want one, we can&#39;t us=
e the data until you accept the MITRE CVE Terms of Use).=C2=A0</span></div>=
<br style=3D"color:rgb(49,49,49);word-spacing:1px"><span style=3D"color:rgb=
(49,49,49);word-spacing:1px;background-color:rgb(255,255,255)">Simply quote=
 the email and reply with &quot;I accept&quot; at the top if you agree to t=
he MITRE CVE Terms of Use and we will add a copy of the email to the DWF MI=
TRE CVE Terms of Use acceptance data at=C2=A0</span><a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank" style=3D"font-size:1rem;word-spac=
ing:1px">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/=
tree/master/Terms-Of-Use</a><br style=3D"color:rgb(49,49,49);word-spacing:1=
px"><br style=3D"color:rgb(49,49,49);word-spacing:1px"><span style=3D"color=
:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,255)">The reas=
on we use a complete copy of the email is that it provides an artifact show=
ing that the email address accepted the Terms of Use, when they were accept=
ed and so on.=C2=A0</span><br style=3D"color:rgb(49,49,49);word-spacing:1px=
"><br style=3D"color:rgb(49,49,49);word-spacing:1px"><span style=3D"color:r=
gb(49,49,49);word-spacing:1px;background-color:rgb(255,255,255)">If you did=
 not submit a CVE request to the DWF you can safely ignore this message, ho=
wever we may resend it at some point in the future, if you don&#39;t want a=
ny future emails simply reply with &quot;unsubscribe&quot; or &quot;DON&#39=
;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your email address =
to the block list so we don&#39;t spam you with these, please note that thi=
s will prevent you from being able to accept the MITRE CVE Terms of Use via=
 the DWF automatically in future (you&#39;ll have to manually ask). But aga=
in, if you have no idea what a CVE is then you can ignore this/ask to be ad=
ded to the block list with no problems.=C2=A0</span><br style=3D"color:rgb(=
49,49,49);word-spacing:1px"><br style=3D"color:rgb(49,49,49);word-spacing:1=
px"><span style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rg=
b(255,255,255)">MITRE CVE Terms of Use</span><br style=3D"color:rgb(49,49,4=
9);word-spacing:1px"><br style=3D"color:rgb(49,49,49);word-spacing:1px"><sp=
an style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,2=
55,255)">LICENSE</span><br style=3D"color:rgb(49,49,49);word-spacing:1px"><=
br style=3D"color:rgb(49,49,49);word-spacing:1px"><span style=3D"color:rgb(=
49,49,49);word-spacing:1px;background-color:rgb(255,255,255)">Submissions: =
For all materials you submit to the Common Vulnerabilities and Exposures (C=
VE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) and all CVE Nu=
mbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge=
, royalty-free, irrevocable copyright license to reproduce, prepare derivat=
ive works of, publicly display, publicly perform, sublicense, and distribut=
e such materials and derivative works. Unless required by applicable law or=
 agreed to in writing, you provide such materials on an &quot;AS IS&quot; B=
ASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or impli=
ed, including, without limitation, any warranties or conditions of TITLE, N=
ON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</spa=
n><br style=3D"color:rgb(49,49,49);word-spacing:1px"><br style=3D"color:rgb=
(49,49,49);word-spacing:1px"><span style=3D"color:rgb(49,49,49);word-spacin=
g:1px;background-color:rgb(255,255,255)">CVE Usage: MITRE hereby grants you=
 a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocabl=
e copyright license to reproduce, prepare derivative works of, publicly dis=
play, publicly perform, sublicense, and distribute Common Vulnerabilities a=
nd Exposures (CVE=C2=AE). Any copy you make for such purposes is authorized=
 provided that you reproduce MITRE&#39;s copyright designation and this lic=
ense in any such copy.</span><br style=3D"color:rgb(49,49,49);word-spacing:=
1px"><br style=3D"color:rgb(49,49,49);word-spacing:1px"><span style=3D"colo=
r:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,255)">DISCLAI=
MERS</span><br style=3D"color:rgb(49,49,49);word-spacing:1px"><br style=3D"=
color:rgb(49,49,49);word-spacing:1px"><span style=3D"color:rgb(49,49,49);wo=
rd-spacing:1px;background-color:rgb(255,255,255)">ALL DOCUMENTS AND THE INF=
ORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS=
&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS =
SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICE=
RS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INC=
LUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THER=
EIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILI=
TY OR FITNESS FOR A PARTICULAR PURPOSE.</span><br style=3D"color:rgb(49,49,=
49);word-spacing:1px"><br style=3D"color:rgb(49,49,49);word-spacing:1px"><s=
pan style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,=
255,255)">A copy is available at=C2=A0</span><a href=3D"https://github.com/=
distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md"=
 rel=3D"noreferrer" target=3D"_blank" style=3D"font-size:1rem;word-spacing:=
1px">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob=
/master/Terms-Of-Use.md</a><br style=3D"color:rgb(49,49,49);word-spacing:1p=
x"><br style=3D"color:rgb(49,49,49);word-spacing:1px"><span style=3D"color:=
rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,255)">To contac=
t the DWF either hit reply, or email=C2=A0</span><a href=3D"mailto:kurt@sei=
fried.org" target=3D"_blank" style=3D"font-size:1rem;word-spacing:1px">kurt=
@seifried.org</a><span style=3D"color:rgb(49,49,49);word-spacing:1px;backgr=
ound-color:rgb(255,255,255)">=C2=A0manually with your question/concerns/etc=
.=C2=A0</span><br style=3D"color:rgb(49,49,49);word-spacing:1px"><div dir=
=3D"auto">=E2=80=9D</div><br><div class=3D"gmail_quote"><div>On Sun, Jul 29=
, 2018 at 6:37 PM &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.or=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirma=
tion email sent from CVE request form at <a href=3D"https://iwantacve.org/"=
 rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you=
 to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form=
 and want one, we can&#39;t use the data until you accept the MITRE CVE Ter=
ms of Use). <br>
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
</blockquote></div></div>

--000000000000da9df705722b6e8a--
