Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp227221vkh;
        Wed, 5 Oct 2016 09:43:32 -0700 (PDT)
X-Received: by 10.194.82.228 with SMTP id l4mr8130353wjy.126.1475685812022;
        Wed, 05 Oct 2016 09:43:32 -0700 (PDT)
Return-Path: <kuestatv@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by mx.google.com with ESMTPS id n6si32853262wmg.17.2016.10.05.09.43.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 09:43:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of kuestatv@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of kuestatv@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=kuestatv@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id k125so277685923wma.1
        for <kurt@seifried.org>; Wed, 05 Oct 2016 09:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=2zJQAsAGbrKyS5xamJ+VfhSJOUlbDK7oH1bx0HHKMEE=;
        b=JpEecn0WBRiCjppjro7wU77vyiF1bGupcJrOFDVbZR13mblUndhVm1nEKlMhjgWfqJ
         HnW6i/BpxbmGM9HuZIR9Pr5d5F1Kx0sJINBiTX74LPbezGJh563atWiHTr7uVQG9PSwV
         ysgoFVo7rNsU7t4B468ZKNKfqWPo/qV+0aVUJJn3w/jhln4eav+Licq1POykg+LlV6Ca
         g9oMCqvcpexWOhyE2lNlTHIGRqmL6X9Jlvg0cq0NEw4Mv2Bv2jOQtk+UWUPJyF5i+Vo/
         lJIn2elNK2tqCScgjaG1pdZtPYw9WhERvjay1kJ5afNFBsvD0BZ+kYLkGsCScid6qSk4
         Gh6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=2zJQAsAGbrKyS5xamJ+VfhSJOUlbDK7oH1bx0HHKMEE=;
        b=Y37eNKhgQTtrUOkq2aCCjA+sDpBfZBGXJw7PqZ13qj9fc+QK5uvtDOgE7QJ04pUUiW
         5pATLdu+HDszRfZY4+ECoGE/Dn+ET2Y4BFKaN9vd6EQAZJEGnoKF+/YZaY3vijYgtwFq
         Bczdk/qjP+iOhlvrzfg0zMsGNnoBznwO57Vtah1I9YDeX0WbkILBmhI0pQErVbx8BLD3
         tbwwZigKF4Rod1pWK2LtX0g/2bhKnKMoxeYE5Z/WNrd7n3Mes1IrUDoF4U4QFEjlhfN9
         BlrUXLjfdS2SvcbmJboml++cTg4Lcj+jDKtF6jkM7gfZj34Igkc33IVfqXkj7YZreuVB
         JE1w==
X-Gm-Message-State: AA6/9Rn3AMRihWpNfvbqo+7Gbd+W26GFEXLU6d7jAO/Bm3ChLld1uklo9m/Lni4xoitkYnE6AHCb5pf9TApoCw==
X-Received: by 10.28.135.71 with SMTP id j68mr9293885wmd.130.1475685810169;
 Wed, 05 Oct 2016 09:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: hector cuesta <kuestatv@gmail.com>
Date: Wed, 05 Oct 2016 16:43:19 +0000
Message-ID: <CAGcnz2D7Z_dD0s2HT4=jxqfnZt6ZdsNm9cF6zVsssjGY6UoKsA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a114448fe83ee29053e20e02d

--001a114448fe83ee29053e20e02d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

El mi=C3=A9., 5 oct. 2016 a las 18:41, Kurt Seifried (<kurt@seifried.org>)
escribi=C3=B3:

> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
>
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
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

--001a114448fe83ee29053e20e02d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(33,33,33);font-family:&quot;helve=
tica neue&quot;,helvetica,arial,sans-serif;font-size:12.8px">I accept</span=
>=C2=A0=C2=A0<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">El m=
i=C3=A9., 5 oct. 2016 a las 18:41, Kurt Seifried (&lt;<a href=3D"mailto:kur=
t@seifried.org">kurt@seifried.org</a>&gt;) escribi=C3=B3:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div dir=3D"ltr" class=3D"gmail_msg"><p class=3D"m_8=
039538895825335741gmail-m_-323732369566349682gmail-p1 gmail_msg" style=3D"f=
ont-size:12.8px"><span class=3D"m_8039538895825335741gmail-m_-3237323695663=
49682gmail-s1 gmail_msg">Hi, I need to confirm that you have accepted the M=
ITRE=C2=A0<span class=3D"m_8039538895825335741gmail-il gmail_msg">Terms</sp=
an>=C2=A0of=C2=A0<span class=3D"m_8039538895825335741gmail-il gmail_msg">Us=
e</span>=C2=A0for=C2=A0<span class=3D"m_8039538895825335741gmail-il gmail_m=
sg">CVE</span>, available at:</span></p><p class=3D"m_8039538895825335741gm=
ail-m_-323732369566349682gmail-p2 gmail_msg" style=3D"font-size:12.8px"><a =
href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/mast=
er/TermsOfUse.md" class=3D"gmail_msg" target=3D"_blank">https://github.com/=
distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md</a><br cla=
ss=3D"gmail_msg"><span class=3D"m_8039538895825335741gmail-m_-3237323695663=
49682gmail-s1 gmail_msg"></span></p><p class=3D"m_8039538895825335741gmail-=
m_-323732369566349682gmail-p2 gmail_msg" style=3D"font-size:12.8px">and quo=
ted below, please reply with &quot;I accept&quot; and I&#39;ll be able to p=
rocess your=C2=A0<span class=3D"m_8039538895825335741gmail-il gmail_msg">CV=
E</span>=C2=A0request. Thanks!<br class=3D"gmail_msg"><span class=3D"m_8039=
538895825335741gmail-m_-323732369566349682gmail-s1 gmail_msg"></span></p><p=
 class=3D"m_8039538895825335741gmail-m_-323732369566349682gmail-p2 gmail_ms=
g" style=3D"font-size:12.8px"><span class=3D"m_8039538895825335741gmail-il =
gmail_msg">Terms</span>=C2=A0of=C2=A0<span class=3D"m_8039538895825335741gm=
ail-il gmail_msg">Use</span><br class=3D"gmail_msg"><span class=3D"m_803953=
8895825335741gmail-m_-323732369566349682gmail-s1 gmail_msg"></span></p><p c=
lass=3D"m_8039538895825335741gmail-m_-323732369566349682gmail-p2 gmail_msg"=
 style=3D"font-size:12.8px">LICENSE<br class=3D"gmail_msg"><span class=3D"m=
_8039538895825335741gmail-m_-323732369566349682gmail-s1 gmail_msg"></span><=
/p><p class=3D"m_8039538895825335741gmail-m_-323732369566349682gmail-p1 gma=
il_msg" style=3D"font-size:12.8px"><span class=3D"m_8039538895825335741gmai=
l-m_-323732369566349682gmail-s1 gmail_msg">Submissions: For all materials y=
ou submit to the Common Vulnerabilities and Exposures (<span class=3D"m_803=
9538895825335741gmail-il gmail_msg">CVE</span>=C2=AE), you hereby grant to =
The MITRE Corporation (MITRE) and all=C2=A0<span class=3D"m_803953889582533=
5741gmail-il gmail_msg">CVE</span>=C2=A0Numbering Authorities (CNAs) a perp=
etual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyr=
ight license to reproduce, prepare derivative works of, publicly display, p=
ublicly perform, sublicense, and distribute such materials and derivative w=
orks. Unless required by applicable law or agreed to in writing, you provid=
e such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDI=
TIONS OF ANY KIND, either express or implied, including, without limitation=
, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY,=
 or FITNESS FOR A PARTICULAR PURPOSE.</span></p><p class=3D"m_8039538895825=
335741gmail-m_-323732369566349682gmail-p1 gmail_msg" style=3D"font-size:12.=
8px"><span class=3D"m_8039538895825335741gmail-m_-323732369566349682gmail-s=
1 gmail_msg"><span class=3D"m_8039538895825335741gmail-il gmail_msg">CVE</s=
pan>=C2=A0Usage: MITRE hereby grants you a perpetual, worldwide, non-exclus=
ive, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicense,=
 and distribute Common Vulnerabilities and Exposures (<span class=3D"m_8039=
538895825335741gmail-il gmail_msg">CVE</span>=C2=AE). Any copy you make for=
 such purposes is authorized provided that you reproduce MITRE&#39;s copyri=
ght designation and this license in any such copy.</span></p><p class=3D"m_=
8039538895825335741gmail-m_-323732369566349682gmail-p2 gmail_msg" style=3D"=
font-size:12.8px">DISCLAIMERS<br class=3D"gmail_msg"><span class=3D"m_80395=
38895825335741gmail-m_-323732369566349682gmail-s1 gmail_msg"></span></p><p =
class=3D"m_8039538895825335741gmail-m_-323732369566349682gmail-p1 gmail_msg=
" style=3D"font-size:12.8px"><span class=3D"m_8039538895825335741gmail-m_-3=
23732369566349682gmail-s1 gmail_msg">ALL DOCUMENTS AND THE INFORMATION CONT=
AINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS =
AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY =
(IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, A=
ND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NO=
T LIMITED TO ANY WARRANTY THAT THE=C2=A0<span class=3D"m_803953889582533574=
1gmail-il gmail_msg">USE</span>=C2=A0OF THE INFORMATION THEREIN WILL NOT IN=
FRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS F=
OR A PARTICULAR PURPOSE.</span></p></div><div dir=3D"ltr" class=3D"gmail_ms=
g"><div class=3D"gmail_msg"><br class=3D"gmail_msg"></div>-- <br class=3D"g=
mail_msg"><div class=3D"m_8039538895825335741gmail_signature gmail_msg">Kur=
t Seifried<br class=3D"gmail_msg"><a href=3D"mailto:kurt@seifried.org" clas=
s=3D"gmail_msg" target=3D"_blank">kurt@seifried.org</a></div>
</div></blockquote></div>

--001a114448fe83ee29053e20e02d--
