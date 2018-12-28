Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp231197vkh;
        Wed, 5 Oct 2016 09:52:28 -0700 (PDT)
X-Received: by 10.36.43.70 with SMTP id h67mr30817889ita.57.1475686348096;
        Wed, 05 Oct 2016 09:52:28 -0700 (PDT)
Return-Path: <parichay1012@gmail.com>
Received: from mail-it0-x229.google.com (mail-it0-x229.google.com. [2607:f8b0:4001:c0b::229])
        by mx.google.com with ESMTPS id i194si13698746iti.112.2016.10.05.09.52.28
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 09:52:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of parichay1012@gmail.com designates 2607:f8b0:4001:c0b::229 as permitted sender) client-ip=2607:f8b0:4001:c0b::229;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of parichay1012@gmail.com designates 2607:f8b0:4001:c0b::229 as permitted sender) smtp.mailfrom=parichay1012@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x229.google.com with SMTP id o21so6753542itb.0
        for <kurt@seifried.org>; Wed, 05 Oct 2016 09:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=zOjINW6+m1aFhK2ml8NAdJgT77EQ81FGjDrDE/+ACWg=;
        b=hTjAVRYCIluC5l8dOBmR7+mQB3Lvq6NkrUecSIH/kUyLcz33eu2pX31LT/ZQpITUv1
         +gtNPRN9uof5+aYYw3J+/sEaqxVa3f4q+ubITA94q86VPYH92lSQl8NE165Mduqft4sn
         IjfQBmksRCxpL0y5UqFqqDc/G7V/37WMN4/sGMOlNBoiMVzomWzquQGMB1C8bH6QrVDW
         sj8BB/o4BBT0HjtSbLUAY0I7JPaBOurhdsUKCbXV4YjGuaQ99W4vJU80duBaQGDUUirY
         wJy+LIFY24wlyidW9YOfyjVvJfWV924CyMMrI1y+5g6Er5IF83lLbBtiJG4NC0n7iVhL
         tvrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=zOjINW6+m1aFhK2ml8NAdJgT77EQ81FGjDrDE/+ACWg=;
        b=GJxI0PcFW7xN3mUTItB5/vbCXYOUUIu9FBk4e3RNGKvFNWM7gJg4/E8G5MdHZ3pkk5
         7nAJMxP6snEepJRj2b/X5xWV3sI6Ai2BYuSlRXs3bOSl9ThPPnvPmfy7KG4UIfY4sOCW
         UrnKIADtO8ljlanJH1H+TzNFrlr1yp0p3S5zTLiX+IqL8l70S05s5VIHAbACYJi6Ao9G
         A5QXDrXNyFn0nzkT52eGkEPc66cb/QcVnk8uzLmtCrPJMgivFZOC+TErZdSpU0cMrh5m
         LtOZKDNDOUtMxljAEBN6NH1bpKEbRclb0r8CaOwzyiE/8vX3S0JeTOT9KBIGnjMgVFPi
         7V/g==
X-Gm-Message-State: AA6/9RkScHg8UvuBw3HY29reZ9DbHXnLs0W8f6/Mb6zuvO+5brPaV4qCnjmue0W0mOmj5LMdwn89bZM0FO7krQ==
X-Received: by 10.36.71.17 with SMTP id t17mr30761026itb.68.1475686323164;
 Wed, 05 Oct 2016 09:52:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.88.134 with HTTP; Wed, 5 Oct 2016 09:52:02 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Parichay Rai <parichay1012@gmail.com>
Date: Wed, 5 Oct 2016 20:52:02 +0400
Message-ID: <CAJvCO-FFJo21iwthwdGCio5HvVG7Q=xkD9_aZDewttZj0Jy0-A@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a113f6aea17b403053e20ffe2

--001a113f6aea17b403053e20ffe2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear sir

I Accept!

When can I expect the CVE?
Will look forward to hearing from you.

Thanks & Regards
Parichay Rai

On Wednesday 5 October 2016, Kurt Seifried <kurt@seifried.org> wrote:

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
> kurt@seifried.org <javascript:_e(%7B%7D,'cvml','kurt@seifried.org');>
>


--=20





*Kind RegardsParichay Rai *

*MS-Cyber Law And Information Security*
*Indian Institute of Information Technology Allahabad *

--001a113f6aea17b403053e20ffe2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear sir<div><br></div><div>I Accept!</div><div><br></div><div>When can I e=
xpect the CVE?</div><div>Will look forward to hearing from you.</div><div><=
br></div><div>Thanks &amp; Regards</div><div>Parichay Rai<br><br>On Wednesd=
ay 5 October 2016, Kurt Seifried &lt;<a href=3D"mailto:kurt@seifried.org">k=
urt@seifried.org</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><p style=3D"font-size:12.8px"><span>Hi, I need to confirm that you=
 have accepted the MITRE=C2=A0<span>Terms</span>=C2=A0of=C2=A0<span>Use</sp=
an>=C2=A0for=C2=A0<span>CVE</span>, available at:</span></p><p style=3D"fon=
t-size:12.8px"><a href=3D"https://github.com/distributedweaknessfiling/DWF-=
Database/blob/master/TermsOfUse.md" target=3D"_blank">https://github.com/di=
stributed<wbr>weaknessfiling/DWF-Database/<wbr>blob/master/TermsOfUse.md</a=
><br><span></span></p><p style=3D"font-size:12.8px">and quoted below, pleas=
e reply with &quot;I accept&quot; and I&#39;ll be able to process your=C2=
=A0<span>CVE</span>=C2=A0request. Thanks!<br><span></span></p><p style=3D"f=
ont-size:12.8px"><span>Terms</span>=C2=A0of=C2=A0<span>Use</span><br><span>=
</span></p><p style=3D"font-size:12.8px">LICENSE<br><span></span></p><p sty=
le=3D"font-size:12.8px"><span>Submissions: For all materials you submit to =
the Common Vulnerabilities and Exposures (<span>CVE</span>=C2=AE), you here=
by grant to The MITRE Corporation (MITRE) and all=C2=A0<span>CVE</span>=C2=
=A0Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-c=
harge, royalty-free, irrevocable copyright license to reproduce, prepare de=
rivative works of, publicly display, publicly perform, sublicense, and dist=
ribute such materials and derivative works. Unless required by applicable l=
aw or agreed to in writing, you provide such materials on an &quot;AS IS&qu=
ot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or =
implied, including, without limitation, any warranties or conditions of TIT=
LE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.=
</span></p><p style=3D"font-size:12.8px"><span><span>CVE</span>=C2=A0Usage:=
 MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, =
royalty-free, irrevocable copyright license to reproduce, prepare derivativ=
e works of, publicly display, publicly perform, sublicense, and distribute =
Common Vulnerabilities and Exposures (<span>CVE</span>=C2=AE). Any copy you=
 make for such purposes is authorized provided that you reproduce MITRE&#39=
;s copyright designation and this license in any such copy.</span></p><p st=
yle=3D"font-size:12.8px">DISCLAIMERS<br><span></span></p><p style=3D"font-s=
ize:12.8px"><span>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVI=
DED BY MITRE ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR=
, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE=
 CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCL=
AIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WA=
RRANTY THAT THE=C2=A0<span>USE</span>=C2=A0OF THE INFORMATION THEREIN WILL =
NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FIT=
NESS FOR A PARTICULAR PURPOSE.</span></p><div><br></div>-- <br><div>Kurt Se=
ifried<br><a href=3D"javascript:_e(%7B%7D,&#39;cvml&#39;,&#39;kurt@seifried=
.org&#39;);" target=3D"_blank">kurt@seifried.org</a></div>
</div>
</blockquote></div><br><br>-- <br><div dir=3D"ltr"><div><div><b><br><br>Kin=
d Regards<br><br>Parichay Rai <br></b></div><b>MS-Cyber Law And Information=
 Security<br></b></div><b>Indian Institute of Information Technology Allaha=
bad </b><br></div><br>

--001a113f6aea17b403053e20ffe2--
