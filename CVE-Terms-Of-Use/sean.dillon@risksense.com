Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp230300vkh;
        Wed, 5 Oct 2016 09:50:23 -0700 (PDT)
X-Received: by 10.107.132.217 with SMTP id o86mr10922350ioi.81.1475686223390;
        Wed, 05 Oct 2016 09:50:23 -0700 (PDT)
Return-Path: <sean.dillon@risksense.com>
Received: from mail-it0-x231.google.com (mail-it0-x231.google.com. [2607:f8b0:4001:c0b::231])
        by mx.google.com with ESMTPS id 68si13770343iol.11.2016.10.05.09.50.23
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 09:50:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sean.dillon@risksense.com designates 2607:f8b0:4001:c0b::231 as permitted sender) client-ip=2607:f8b0:4001:c0b::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@risksense.com;
       spf=pass (google.com: domain of sean.dillon@risksense.com designates 2607:f8b0:4001:c0b::231 as permitted sender) smtp.mailfrom=sean.dillon@risksense.com
Received: by mail-it0-x231.google.com with SMTP id j69so205419176itb.0
        for <kurt@seifried.org>; Wed, 05 Oct 2016 09:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=risksense.com; s=google-email-auth;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=28OqpNlOW1Se+SVWrunmfsxTkhSfNiE7V2UpOiWlT7o=;
        b=eGFjxbHEBA7HDErprF48O01rcCASVDqcI42uJg8kqt2gNM9EeWR28u3GsRwVwUWFP1
         ZKTvoodoTHk2+7+oS3Vhdmome7KfVRlSKQg2lRN6lcz7t5vo8AsZy6ufSfCgLe2MRPVo
         T+yhDaYpDYz+LqXjQ/NVuUnGydWItXMrxvt+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=28OqpNlOW1Se+SVWrunmfsxTkhSfNiE7V2UpOiWlT7o=;
        b=b+KOy4hR0Xp0V+QY7Zv66Q0GaGq3cxCHnu7DE80mNFUhS/zVXjQ16gu7T29oOsBFRL
         s31Uz1ck9FGXNEIMANkluym1ypVl+DWnumMncLKGs5YcQBuv5wL3prstWTrXwTVICHw8
         +Y/DTTn81WqjoOBx9ISCOOIFS2pdhMzUvFaHGT5G40uSB9NwLh+yH7wIt9jLzXR2eZQB
         vEc+vlgw27IyMuf4eMBlTGxNR1xWCZ3ciKwIewAhj2bZQRAJDjiC4dM+baHCzsY87l2Y
         wvA0bze7uaLJFMyK81AJR0EtACS9CAkvDxExK1glcBYjtenkGK2dV+84dbpmiOI4vmpg
         yaBw==
X-Gm-Message-State: AA6/9Rn5ZCNjbrhhy+3fzl7ZhzyzAtqpqZ/JNrtw2M/UQmkqmQzwYUD4Tw7Wrfn01Ut+CY+5EeY3FqMgzPoF67U4
X-Received: by 10.36.245.10 with SMTP id k10mr26298630ith.120.1475686219854;
 Wed, 05 Oct 2016 09:50:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.195.204 with HTTP; Wed, 5 Oct 2016 09:49:59 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: "Dillon, Sean" <sean.dillon@risksense.com>
Date: Wed, 5 Oct 2016 16:49:59 +0000
Message-ID: <CAKjEuLiA9H2nR3=SV0OM-1DL9yqjdBq-aAQeAB858KGDAdsfmg@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c035942ef623b053e20f88c

--94eb2c035942ef623b053e20f88c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

*Sean Dillon*
Senior Security Analyst
RiskSense, Inc. (formerly CAaNES, LLC)
4200 Osuna Rd NE 3-300
Albuquerque, NM 87109

Cell:     1-505-267-7416
Office:  1-505-217-9411 ext. 132
Direct:  1-505-796-8186
Fax:     1-505-212-0084
sean.dillon@risksense.com


*PGP Fingerprint: *2E3C 8D72 353C 9B8C 9FF7 97E7 53EC 4C98 76D5 727B
<https://pgp.mit.edu/pks/lookup?op=3Dvindex&search=3D0x2E3C8D72353C9B8C9FF7=
97E753EC4C9876D5727B>

On Wed, Oct 5, 2016 at 4:41 PM, Kurt Seifried <kurt@seifried.org> wrote:

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

--94eb2c035942ef623b053e20f88c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br clear=3D"all"=
><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"=
ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><p style=3D"font-size:=
small"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b>Sean =
Dillon</b><br></span><span style=3D"font-family:Arial,sans-serif">Senior Se=
curity Analyst<br></span><span style=3D"font-family:Arial,sans-serif;font-s=
ize:9pt">RiskSense, Inc. (formerly CAaNES, LLC)</span><span style=3D"font-f=
amily:Arial,sans-serif;font-size:9pt"><br></span><span style=3D"font-family=
:Arial,sans-serif;font-size:9pt">4200 Osuna Rd NE 3-300</span><span style=
=3D"font-family:Arial,sans-serif;font-size:9pt"><br></span><span style=3D"f=
ont-family:Arial,sans-serif;font-size:9pt">Albuquerque, NM 87109</span></p>=
<p style=3D"font-size:small"><span style=3D"font-family:Arial,sans-serif;fo=
nt-size:9pt">Cell: =C2=A0 =C2=A0 <a href=3D"tel:1-505-267-7416" target=3D"_=
blank">1-505-267-7416</a><br>Office: =C2=A0<a href=3D"tel:1-505-217-9411" t=
arget=3D"_blank">1-505-217-9411</a> ext. 132<br>Direct: =C2=A0<a href=3D"te=
l:1-505-796-8186" target=3D"_blank">1-505-796-8186</a><br>Fax: =C2=A0 =C2=
=A0 <a href=3D"tel:1-505-212-0084" target=3D"_blank">1-505-212-0084</a><br>=
</span><a href=3D"mailto:sean.dillon@risksense.com" style=3D"color:rgb(17,8=
5,204);font-size:12px;font-family:Arial,sans-serif" target=3D"_blank">sean.=
dillon@risksense.com</a></p><p style=3D"font-size:small;color:rgb(80,0,80);=
margin:0in 0in 0.0001pt"><b><span style=3D"font-size:10pt;color:rgb(35,35,3=
5)"><img src=3D"https://docs.google.com/uc?export=3Ddownload&amp;id=3D0B8Ma=
WfHkgiZ8UzZKaEhBRUN4WWs&amp;revid=3D0B8MaWfHkgiZ8Nm5kQUZtNkNJNTBzN2liWmxvYT=
Bwb3ErQllBPQ" width=3D"200" height=3D"48"><br></span></b></p><p style=3D"ma=
rgin:0in 0in 0.0001pt"><font color=3D"#232323"><b><font size=3D"1" face=3D"=
monospace, monospace">PGP Fingerprint:=C2=A0</font></b></font><font color=
=3D"#232323" face=3D"monospace, monospace" size=3D"1"><a href=3D"https://pg=
p.mit.edu/pks/lookup?op=3Dvindex&amp;search=3D0x2E3C8D72353C9B8C9FF797E753E=
C4C9876D5727B" target=3D"_blank">2E3C 8D72 353C 9B8C 9FF7 97E7 53EC 4C98 76=
D5 727B</a></font></p></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div>
<br><div class=3D"gmail_quote">On Wed, Oct 5, 2016 at 4:41 PM, Kurt Seifrie=
d <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_bla=
nk">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr"><p class=3D"m_-980535430587600071gmail-m_-3237323695663=
49682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-980535430587600=
071gmail-m_-323732369566349682gmail-s1">Hi, I need to confirm that you have=
 accepted the MITRE=C2=A0<span class=3D"m_-980535430587600071gmail-il">Term=
s</span>=C2=A0of=C2=A0<span class=3D"m_-980535430587600071gmail-il">Use</sp=
an>=C2=A0for=C2=A0<span class=3D"m_-980535430587600071gmail-il">CVE</span>,=
 available at:</span></p><p class=3D"m_-980535430587600071gmail-m_-32373236=
9566349682gmail-p2" style=3D"font-size:12.8px"><a href=3D"https://github.co=
m/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" target=
=3D"_blank">https://github.com/distributed<wbr>weaknessfiling/DWF-Database/=
<wbr>blob/master/TermsOfUse.md</a><br><span class=3D"m_-980535430587600071g=
mail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-9805354305876=
00071gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">and qu=
oted below, please reply with &quot;I accept&quot; and I&#39;ll be able to =
process your=C2=A0<span class=3D"m_-980535430587600071gmail-il">CVE</span>=
=C2=A0request. Thanks!<br><span class=3D"m_-980535430587600071gmail-m_-3237=
32369566349682gmail-s1"></span></p><p class=3D"m_-980535430587600071gmail-m=
_-323732369566349682gmail-p2" style=3D"font-size:12.8px"><span class=3D"m_-=
980535430587600071gmail-il">Terms</span>=C2=A0of=C2=A0<span class=3D"m_-980=
535430587600071gmail-il">Use</span><br><span class=3D"m_-980535430587600071=
gmail-m_-323732369566349682gmail-s1"></span></p><p class=3D"m_-980535430587=
600071gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px">LICEN=
SE<br><span class=3D"m_-980535430587600071gmail-m_-323732369566349682gmail-=
s1"></span></p><p class=3D"m_-980535430587600071gmail-m_-323732369566349682=
gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-980535430587600071gm=
ail-m_-323732369566349682gmail-s1">Submissions: For all materials you submi=
t to the Common Vulnerabilities and Exposures (<span class=3D"m_-9805354305=
87600071gmail-il">CVE</span>=C2=AE), you hereby grant to The MITRE Corporat=
ion (MITRE) and all=C2=A0<span class=3D"m_-980535430587600071gmail-il">CVE<=
/span>=C2=A0Numbering Authorities (CNAs) a perpetual, worldwide, non-exclus=
ive, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicense,=
 and distribute such materials and derivative works. Unless required by app=
licable law or agreed to in writing, you provide such materials on an &quot=
;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either ex=
press or implied, including, without limitation, any warranties or conditio=
ns of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR=
 PURPOSE.</span></p><p class=3D"m_-980535430587600071gmail-m_-3237323695663=
49682gmail-p1" style=3D"font-size:12.8px"><span class=3D"m_-980535430587600=
071gmail-m_-323732369566349682gmail-s1"><span class=3D"m_-98053543058760007=
1gmail-il">CVE</span>=C2=A0Usage: MITRE hereby grants you a perpetual, worl=
dwide, non-exclusive, no-charge, royalty-free, irrevocable copyright licens=
e to reproduce, prepare derivative works of, publicly display, publicly per=
form, sublicense, and distribute Common Vulnerabilities and Exposures (<spa=
n class=3D"m_-980535430587600071gmail-il">CVE</span>=C2=AE). Any copy you m=
ake for such purposes is authorized provided that you reproduce MITRE&#39;s=
 copyright designation and this license in any such copy.</span></p><p clas=
s=3D"m_-980535430587600071gmail-m_-323732369566349682gmail-p2" style=3D"fon=
t-size:12.8px">DISCLAIMERS<br><span class=3D"m_-980535430587600071gmail-m_-=
323732369566349682gmail-s1"></span></p><p class=3D"m_-980535430587600071gma=
il-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"><span class=3D=
"m_-980535430587600071gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AN=
D THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &q=
uot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESEN=
TS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEE=
S, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMP=
LIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=
=3D"m_-980535430587600071gmail-il">USE</span>=C2=A0OF THE INFORMATION THERE=
IN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILIT=
Y OR FITNESS FOR A PARTICULAR PURPOSE.</span></p><span class=3D"HOEnZb"><fo=
nt color=3D"#888888"><div><br></div>-- <br><div class=3D"m_-980535430587600=
071gmail_signature">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" t=
arget=3D"_blank">kurt@seifried.org</a></div>
</font></span></div>
</blockquote></div><br></div>

--94eb2c035942ef623b053e20f88c--
