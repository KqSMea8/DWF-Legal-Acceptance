Delivered-To: kurt@seifried.org
Received: by 10.79.37.80 with SMTP id l77csp1442994ivl;
        Tue, 10 Oct 2017 14:44:57 -0700 (PDT)
X-Received: by 10.36.26.133 with SMTP id 127mr21656888iti.88.1507671897033;
        Tue, 10 Oct 2017 14:44:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507671897; cv=none;
        d=google.com; s=arc-20160816;
        b=V4KZEFGoSrSDpX3ChMZR/yv1MTgOERUYAi/7WZQy0AYhct+A2axeEMGXnxE/lNzZmC
         13VTGemCkMci5Id7sonKkn+vFxkJNiGmovRZPKaURBLOgYC5sYvlT80KJBBm1MH3Wdfd
         vd+hqspGeD1c+N1znd7im41TnHo8VSe5k10y7L5PaLUY/3h4AJEjPrNrhy8YUDNZjvf2
         XK/zjmY8FBp0oNI9aceG/Tg0Ge2+9WD4CMrTqu59Yqk4z5M7r2odoe9g/74Jgn+92oDo
         NSUdajchroIm7A6hUeIHGt3hg4o1qp72eifXp+VRs0Eq4MExJ58HYHa7SGSVP3jmTUXW
         UMeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=w4x6ydHL/NQpj9HJGfAwak9m8fH7LGKC/WjXtjnby94=;
        b=qIBgx9jJGftFZMKoWlRckozPZTgUHEv7ucFlaVJQ2atvyHmWVzzIgTi+yzDeoIphW+
         kq8o2SR7CxBf+PiL8tLYovBiVlNzjgNpA+i1CDk/BbfLR59DR+9Lk0crIz6Rvz5Gbg4o
         KC3RI9mowsaHjSQ7oI0/o+S0oWsHR2b44PTYx55ROXPYqvAVpDmLBsvtzmEug++bj/AC
         8PFBZr210t2h5vuee/BdEHVXeFMscW0o1b0xILPnB7xXg+HYT3NZv4wvVeZ6MrH7NVET
         iJ660uM0kpdx2x2IPddf4K3UN7jRgnzjhx/AJ8eU1catVCfHbwlfB6xlcr4Isl0cQc/+
         t2PQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KBjRgKiw;
       spf=pass (google.com: domain of ismail.sec.dev@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ismail.sec.dev@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <ismail.sec.dev@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d8sor5313185iti.59.2017.10.10.14.44.56
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 10 Oct 2017 14:44:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ismail.sec.dev@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KBjRgKiw;
       spf=pass (google.com: domain of ismail.sec.dev@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ismail.sec.dev@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=w4x6ydHL/NQpj9HJGfAwak9m8fH7LGKC/WjXtjnby94=;
        b=KBjRgKiwddtC+Vz9L1aHbffEuZVzvKl+MSCILJr8W1qR1O87Hv67vbKDyqwi9jxEbx
         1HqPEHpJdDtzYeo0gRm+cU0rjzR7RiUa+9Y+Sp2bQ+Xx4wiuYFStdJ1MVVt6P9N1FlxI
         GnKvL1GOvGujk4fKWJa99DBYizdUeMwHxwPIQotXLQkyrbPLDO3IIsMzq1Q/Knbxdlow
         YVscCdIL3KE1+m95N8mPhyJqd+/5XnO3wGmzTzIQdnDcUdAioIb4W/QC/snSH9kUUOHf
         umel7zy4sKahijtOx/Xwk4lcP/yN6/JjV9hx3cbOYHRobYyaDXXZF14dIL64YS11I9rR
         FzMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=w4x6ydHL/NQpj9HJGfAwak9m8fH7LGKC/WjXtjnby94=;
        b=HfU+AwKMQ/yphfdOb9KsF+2t+n2pzqMIF4Bb1tHuerY+VwdDZl4rrbEwpCN3RZdz92
         NQUbKdzoj8nS7YyQGp4Kk1t5S3B2eRGtf4d0Z0Y4AlPUy9PoVY7Z5U+Fr2CLAHMec0XY
         H2gCCRXiVrtCP89ZkVzREstetAOee26FgfnBUgwn1mH7KHoTfYm+DUBIYQ9rHfWn+PLW
         CUjx7aFa3fY4QaKpJ/AiGNiXtgzRxKr6rKYJ9afwZHTlhZ7Ab0cdO2Jl5+bEFL3vKryA
         vQ9DJnvCzGY9lIo15jrMB4TyqXrQe1TA7xjRtGXC94nhPHwRLlasKUbFc3uVYmZEsInN
         nBBQ==
X-Gm-Message-State: AMCzsaVEygTmmV/ZqCq08HenXsG6uN6UD9HdODyfGua5DsszAL8DoQtg
	506ud5cQttojPpJwbeVVCBfdNccez1ruklsXdlCW7g==
X-Google-Smtp-Source: AOwi7QBS+Azz9+Sjd5QwFLp0ERppfL/0IQHNccVwCzTO98NX5ALN63CDamjFbocofDPFFNj1MmGv9Oup4Dkubi7seV4=
X-Received: by 10.36.155.130 with SMTP id o124mr21015158itd.69.1507671896238;
 Tue, 10 Oct 2017 14:44:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.133.157 with HTTP; Tue, 10 Oct 2017 14:44:55 -0700 (PDT)
In-Reply-To: <20171002202220.11491.81073@slab.local>
References: <20171002202220.11491.81073@slab.local>
From: Ismail Doe <ismail.sec.dev@gmail.com>
Date: Tue, 10 Oct 2017 17:44:55 -0400
Message-ID: <CAM+tmNVBXhGDsxYcbygZh=eVH+4os8Ccw67mHb_uOCgwD_+s-Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for ismail.sec.dev@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c060118d033ec055b3837b0"

--94eb2c060118d033ec055b3837b0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

"This is a confirmation email sent from CVE request form at
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
Legal-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc."

--94eb2c060118d033ec055b3837b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">I=C2=A0<span style=3D"font-size=
:12.8px">accept</span></div><div class=3D"gmail_extra"><span style=3D"font-=
size:12.8px"><br></span></div><div class=3D"gmail_extra">&quot;<span style=
=3D"font-size:12.8px">This is a confirmation email sent from CVE request fo=
rm at=C2=A0</span><a href=3D"https://iwantacve.org/" rel=3D"noreferrer" tar=
get=3D"_blank" style=3D"font-size:12.8px">https://iwantacve.org/</a><span s=
tyle=3D"font-size:12.8px">=C2=A0asking you to accept the MITRE CVE Terms of=
 Use (assuming you filled out the CVE form and want one, we can&#39;t use t=
he data until you accept the MITRE CVE Terms of Use).</span></div><br style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Simply quote the ema=
il and reply with &quot;I accept&quot; at the top if you agree to the MITRE=
 CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE =
Terms of Use acceptance data at=C2=A0</span><a href=3D"https://github.com/d=
istributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=
=3D"noreferrer" target=3D"_blank" style=3D"font-size:12.8px">https://github=
.com/<wbr>distributedweaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master/<=
wbr>Terms-Of-Use</a><br style=3D"font-size:12.8px"><br style=3D"font-size:1=
2.8px"><span style=3D"font-size:12.8px">The reason we use a complete copy o=
f the email is that it provides an artifact showing that the email address =
accepted the Terms of Use, when they were accepted and so on.</span><br sty=
le=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span style=3D"font-=
size:12.8px">If you did not submit a CVE request to the DWF you can safely =
ignore this message, however we may resend it at some point in the future, =
if you don&#39;t want any future emails simply reply with &quot;unsubscribe=
&quot; or &quot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll =
add your email address to the block list so we don&#39;t spam you with thes=
e, please note that this will prevent you from being able to accept the MIT=
RE CVE Terms of Use via the DWF automatically in future (you&#39;ll have to=
 manually ask). But again, if you have no idea what a CVE is then you can i=
gnore this/ask to be added to the block list with no problems.</span><br st=
yle=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span style=3D"font=
-size:12.8px">MITRE CVE Terms of Use</span><br style=3D"font-size:12.8px"><=
br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">LICENSE</spa=
n><br style=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">Submissions: For all materials you submit to the Comm=
on Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant to The MITRE=
 Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, =
worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright li=
cense to reproduce, prepare derivative works of, publicly display, publicly=
 perform, sublicense, and distribute such materials and derivative works. U=
nless required by applicable law or agreed to in writing, you provide such =
materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS O=
F ANY KIND, either express or implied, including, without limitation, any w=
arranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FIT=
NESS FOR A PARTICULAR PURPOSE.</span><br style=3D"font-size:12.8px"><br sty=
le=3D"font-size:12.8px"><span style=3D"font-size:12.8px">CVE Usage: MITRE h=
ereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-=
free, irrevocable copyright license to reproduce, prepare derivative works =
of, publicly display, publicly perform, sublicense, and distribute Common V=
ulnerabilities and Exposures (CVE=C2=AE). Any copy you make for such purpos=
es is authorized provided that you reproduce MITRE&#39;s copyright designat=
ion and this license in any such copy.</span><br style=3D"font-size:12.8px"=
><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">DISCLAIMER=
S</span><br style=3D"font-size:12.8px"><br style=3D"font-size:12.8px"><span=
 style=3D"font-size:12.8px">ALL DOCUMENTS AND THE INFORMATION CONTAINED THE=
REIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE C=
ONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY),=
 THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOY=
EES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED=
 TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE =
ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PA=
RTICULAR PURPOSE.</span><br style=3D"font-size:12.8px"><br style=3D"font-si=
ze:12.8px"><span style=3D"font-size:12.8px">A copy is available at=C2=A0</s=
pan><a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Accep=
tance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" target=3D"_blank" sty=
le=3D"font-size:12.8px">https://github.com/<wbr>distributedweaknessfiling/D=
WF-<wbr>Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br style=3D"f=
ont-size:12.8px"><br style=3D"font-size:12.8px"><span style=3D"font-size:12=
.8px">To contact the DWF either hit reply, or email=C2=A0</span><a href=3D"=
mailto:kurt@seifried.org" style=3D"font-size:12.8px">kurt@seifried.org</a><=
span style=3D"font-size:12.8px">=C2=A0manually with your question/concerns/=
etc.&quot;</span></div>

--94eb2c060118d033ec055b3837b0--
