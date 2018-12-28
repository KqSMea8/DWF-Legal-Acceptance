Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp268178vkh;
        Wed, 5 Oct 2016 11:13:59 -0700 (PDT)
X-Received: by 10.25.40.74 with SMTP id o71mr4663807lfo.36.1475691239333;
        Wed, 05 Oct 2016 11:13:59 -0700 (PDT)
Return-Path: <matthew.sullivan@workiva.com>
Received: from mail-lf0-x22d.google.com (mail-lf0-x22d.google.com. [2a00:1450:4010:c07::22d])
        by mx.google.com with ESMTPS id b81si5942555lfh.95.2016.10.05.11.13.59
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 11:13:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of matthew.sullivan@workiva.com designates 2a00:1450:4010:c07::22d as permitted sender) client-ip=2a00:1450:4010:c07::22d;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@workiva.com;
       spf=pass (google.com: domain of matthew.sullivan@workiva.com designates 2a00:1450:4010:c07::22d as permitted sender) smtp.mailfrom=matthew.sullivan@workiva.com;
       dmarc=pass (p=NONE dis=NONE) header.from=workiva.com
Received: by mail-lf0-x22d.google.com with SMTP id b75so87896203lfg.3
        for <kurt@seifried.org>; Wed, 05 Oct 2016 11:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=workiva.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=UdJ7y/q8Qg1jQs8makCMGuH10zNMWolYOIw/XqU1MUE=;
        b=Pja2ASSWyX2ZB2I4w36hDCtQq/QzofTfd2xr8bKnTbNfyNcB4SV0qkigk4KvPwI5cM
         NO2jZeFLV+FF3ZbSXV8zS9ndkjc9rbKePFqSMVOfB6n/Wo9jFa7XnVX78Di6GVZgn16N
         TyxNJWw1cCxxbbO6Zj1wN8k2BdT+amd3J5xNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=UdJ7y/q8Qg1jQs8makCMGuH10zNMWolYOIw/XqU1MUE=;
        b=dTp34GRdqmW4vEN84D4TKyHYTcD50w6f0meGMD9IbekxjA+g7DtGYyo2kqdLoOLhhf
         mNfE7dfMaepfshqJcZXlujxwgcDAw70lTlDemWnmBRDmD4d7q2gPmigLkmfo+0oRZTyt
         IfH6rWzUYLORLG72Ni2vMPYYzX8cYDLOYou//5aBuCkpwAc96YUySKYDLpTJ73ZFdvuB
         fOSEos5htdlJ0QSdd+1PLRyys1hqGOUxBwZyjv/HQp80Za/LADv5ClL1uF88rx2JmyvE
         QBMEOTerSSQD8mhYD0dnvh4yq4t5NDpYznHmGXlsnmQkBAbAGO8OptiOI5q6JUBvB7pF
         aIrA==
X-Gm-Message-State: AA6/9Rm4+DPekIKm8lleeqVj0aRvbssgbnqvjFO3OK5eloMDh/DLiHVZsiXrBzM+rsE1DzEZOjHXVjFsZHmJ+nwT
X-Received: by 10.46.1.166 with SMTP id f38mr4710888lji.76.1475691238617; Wed,
 05 Oct 2016 11:13:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.87.130 with HTTP; Wed, 5 Oct 2016 11:13:17 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Matthew Sullivan <matthew.sullivan@workiva.com>
Date: Wed, 5 Oct 2016 13:13:17 -0500
Message-ID: <CAHhdrNKg-KY-nutCgoNGVRm7umYYU5bFUbESL=58cVFmnQs3JA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a1142bb4a13931d053e22243e

--001a1142bb4a13931d053e22243e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

Thanks!

On Wed, Oct 5, 2016 at 11:41 AM, Kurt Seifried <kurt@seifried.org> wrote:

> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/
> blob/master/TermsOfUse.md
>
> and quoted below, please reply with "I accept" and I'll be able to proces=
s
> your CVE request. Thanks!
>
> Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE)
> and all CVE Numbering Authorities (CNAs) a perpetual, worldwide,
> non-exclusive, no-charge, royalty-free, irrevocable copyright license to
> reproduce, prepare derivative works of, publicly display, publicly perfor=
m,
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
=AE).
> Any copy you make for such purposes is authorized provided that you
> reproduce MITRE's copyright designation and this license in any such copy=
.
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
> --
> Kurt Seifried
> kurt@seifried.org
>



--=20


*Matthew Sullivan | Sr. Security
EngineerGPG | https://keybase.io/matthewsullivan
<https://keybase.io/matthewsullivan>*
2900 University Blvd, Ames, Iowa, 50010

*Workiva, Inc | * *Redefining the way enterprises work.*

--001a1142bb4a13931d053e22243e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.<div><br></div><div>Thanks!</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Oct 5, 2016 at 11:4=
1 AM, Kurt Seifried <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.o=
rg" target=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr"><p style=3D"font-size:12.8px"><span>H=
i, I need to confirm that you have accepted the MITRE=C2=A0<span>Terms</spa=
n>=C2=A0of=C2=A0<span>Use</span>=C2=A0for=C2=A0<span>CVE</span>, available =
at:</span></p><p style=3D"font-size:12.8px"><a href=3D"https://github.com/d=
istributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" target=3D"=
_blank">https://github.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr=
>blob/master/TermsOfUse.md</a><br><span></span></p><p style=3D"font-size:12=
.8px">and quoted below, please reply with &quot;I accept&quot; and I&#39;ll=
 be able to process your=C2=A0<span>CVE</span>=C2=A0request. Thanks!<br><sp=
an></span></p><p style=3D"font-size:12.8px"><span>Terms</span>=C2=A0of=C2=
=A0<span>Use</span><br><span></span></p><p style=3D"font-size:12.8px">LICEN=
SE<br><span></span></p><p style=3D"font-size:12.8px"><span>Submissions: For=
 all materials you submit to the Common Vulnerabilities and Exposures (<spa=
n>CVE</span>=C2=AE), you hereby grant to The MITRE Corporation (MITRE) and =
all=C2=A0<span>CVE</span>=C2=A0Numbering Authorities (CNAs) a perpetual, wo=
rldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright lice=
nse to reproduce, prepare derivative works of, publicly display, publicly p=
erform, sublicense, and distribute such materials and derivative works. Unl=
ess required by applicable law or agreed to in writing, you provide such ma=
terials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF =
ANY KIND, either express or implied, including, without limitation, any war=
ranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNE=
SS FOR A PARTICULAR PURPOSE.</span></p><p style=3D"font-size:12.8px"><span>=
<span>CVE</span>=C2=A0Usage: MITRE hereby grants you a perpetual, worldwide=
, non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly perform,=
 sublicense, and distribute Common Vulnerabilities and Exposures (<span>CVE=
</span>=C2=AE). Any copy you make for such purposes is authorized provided =
that you reproduce MITRE&#39;s copyright designation and this license in an=
y such copy.</span></p><p style=3D"font-size:12.8px">DISCLAIMERS<br><span><=
/span></p><p style=3D"font-size:12.8px"><span>ALL DOCUMENTS AND THE INFORMA=
TION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quo=
t; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPON=
SORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, =
AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDI=
NG BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span>USE</span>=C2=A0OF T=
HE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTI=
ES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span></p><span =
class=3D"HOEnZb"><font color=3D"#888888"><div><br></div>-- <br><div>Kurt Se=
ifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifr=
ied.org</a></div>
</font></span></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div style=3D"color:rgb(80,0,80);margin:0px;padding:0px;border:0=
px;vertical-align:baseline"><font style=3D"margin:0px;padding:0px;border:0p=
x;vertical-align:baseline"><b style=3D"margin:0px;padding:0px;border:0px;fo=
nt-size:12px;vertical-align:baseline"><font color=3D"#33CC00" face=3D"sans-=
serif" style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">=
Matthew Sullivan=C2=A0</font><font color=3D"#333333" face=3D"sans-serif" st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">| Sr. Sec=
urity Engineer<br><b style=3D"font-size:x-small;color:rgb(80,0,80);font-fam=
ily:arial,sans-serif;margin:0px;padding:0px;border:0px;vertical-align:basel=
ine"><font color=3D"#33CC00" face=3D"sans-serif" style=3D"margin:0px;paddin=
g:0px;border:0px;vertical-align:baseline">GPG=C2=A0</font><font color=3D"#3=
33333" face=3D"sans-serif" style=3D"margin:0px;padding:0px;border:0px;verti=
cal-align:baseline">|=C2=A0</font></b><font color=3D"#333333" face=3D"sans-=
serif" style=3D"font-size:x-small;font-weight:normal"><span style=3D"line-h=
eight:18px"><b><a href=3D"https://keybase.io/matthewsullivan" target=3D"_bl=
ank">https://keybase.io/matthewsullivan</a></b></span></font><br></font></b=
></font></div><font style=3D"margin:0px;padding:0px;border:0px;vertical-ali=
gn:baseline"><div style=3D"color:rgb(80,0,80)"><div style=3D"margin:0px;pad=
ding:0px;border:0px;vertical-align:baseline"><font color=3D"#333333" face=
=3D"sans-serif" style=3D"margin:0px;padding:0px;border:0px;vertical-align:b=
aseline"><span style=3D"font-family:arial,sans-serif;color:rgb(34,34,34)">2=
900 University Blvd</span>, Ames, Iowa, 50010<br></font></div></div><div st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline"><p><b sty=
le=3D"color:rgb(51,51,51);font-size:12px;font-family:&#39;Lucida Grande&#39=
;,&#39;Lucida Sans&#39;,&#39;Lucida Sans Unicode&#39;,Verdana,Arial,Helveti=
ca,sans-serif;line-height:18px;margin:0px;padding:0px;border-width:0px;vert=
ical-align:baseline"><u style=3D"margin:0px;padding:0px;border-width:0px;ve=
rtical-align:baseline"><font color=3D"#33CC00" face=3D"sans-serif" style=3D=
"margin:0px;padding:0px;border-width:0px;vertical-align:baseline">Workiva, =
Inc</font></u><font color=3D"#33CC00" face=3D"sans-serif" style=3D"margin:0=
px;padding:0px;border-width:0px;vertical-align:baseline">=C2=A0</font><font=
 color=3D"#333333" style=3D"margin:0px;padding:0px;border-width:0px;vertica=
l-align:baseline">|=C2=A0</font></b><span style=3D"color:rgb(51,51,51);font=
-size:12px;font-family:&#39;Lucida Grande&#39;,&#39;Lucida Sans&#39;,&#39;L=
ucida Sans Unicode&#39;,Verdana,Arial,Helvetica,sans-serif;line-height:18px=
">=C2=A0</span><font color=3D"#333333" face=3D"sans-serif"><span style=3D"f=
ont-size:12px;line-height:18px"><b>Redefining the way enterprises work.</b>=
</span></font><br></p></div></font></div></div></div></div></div></div></di=
v></div></div></div>
</div>

--001a1142bb4a13931d053e22243e--
