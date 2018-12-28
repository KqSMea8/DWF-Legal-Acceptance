Delivered-To: kurt@seifried.org
Received: by 10.31.3.33 with SMTP id 33csp225820vkd;
        Mon, 31 Oct 2016 11:47:18 -0700 (PDT)
X-Received: by 10.157.16.120 with SMTP id o53mr23035412oto.11.1477939638306;
        Mon, 31 Oct 2016 11:47:18 -0700 (PDT)
Return-Path: <alvaro.hoyos@onelogin.com>
Received: from mail-oi0-x22c.google.com (mail-oi0-x22c.google.com. [2607:f8b0:4003:c06::22c])
        by mx.google.com with ESMTPS id t79si10384376oit.266.2016.10.31.11.47.18
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Oct 2016 11:47:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of alvaro.hoyos@onelogin.com designates 2607:f8b0:4003:c06::22c as permitted sender) client-ip=2607:f8b0:4003:c06::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@onelogin.com;
       spf=pass (google.com: domain of alvaro.hoyos@onelogin.com designates 2607:f8b0:4003:c06::22c as permitted sender) smtp.mailfrom=alvaro.hoyos@onelogin.com;
       dmarc=pass (p=NONE dis=NONE) header.from=onelogin.com
Received: by mail-oi0-x22c.google.com with SMTP id 128so46835715oih.0
        for <kurt@seifried.org>; Mon, 31 Oct 2016 11:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=onelogin.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=9IUI+C9mtzEczYy1KkzcW44odlFnx3qYl7pXb/072F0=;
        b=vFVghEwQgPxh9tf+39lTJfH70foeCvGRri4vS1Xqmtrb2ZqSKVZbMLEOErpmT3U62U
         +aSNTs013BExKY7HiKlZxBxbSjOMAU3KIjCmiVxUfiRvn8j1o4xOykkiiTSPxiSt6KtU
         TQZF+n14nBmz1Lp+1xgtIh/GjGF3QyzIdzd7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=9IUI+C9mtzEczYy1KkzcW44odlFnx3qYl7pXb/072F0=;
        b=Vq/ufoAWJrDgAhiO2tdbuGOogL9u8lFk1Aip4jaUJ+gMUuK4N4yOOZKXlk0NZdqoKT
         7ckxp/cNr21QWpjEOQzGYdkbF5D5NYiI3nVW4YDCI5Oue98GqL5yaaRW4jSc0pSdXK38
         Lr0VvurqitfX4FkwSaEp3iAk4g5j7wPnp5kBD3VVVvAPBWSA06/kxJB8G3ZECbwGvtp0
         U4IAY3VQ7fTmTyaf2g2hPvYdRVLSGEfVd+vAoIFbmDy4m3J/NjDdJmCv6POofyRTlOeM
         15y7sFkaRr5SY+2USaLS1lKjg4QWtki16o5FrPh2KTi0K704IMNirBTBscLJvNqgpLvV
         N7PQ==
X-Gm-Message-State: ABUngvdKah6oPW/ZzkOLcSlWrFcqJ9PUkZzdg1hiVD1Ix6rOxSp0gTRc9uxBTMmM6JhavxFblZpEIrXZMOl7laNZ
X-Received: by 10.107.191.131 with SMTP id p125mr20440530iof.131.1477939637618;
 Mon, 31 Oct 2016 11:47:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.20.135 with HTTP; Mon, 31 Oct 2016 11:46:37 -0700 (PDT)
In-Reply-To: <CABqVa3_6oYbsZD7soVdHxdYhTLrHwKcwyUiJHEFeiAGdu7VRTA@mail.gmail.com>
References: <CABqVa3_6oYbsZD7soVdHxdYhTLrHwKcwyUiJHEFeiAGdu7VRTA@mail.gmail.com>
From: Alvaro Hoyos <alvaro.hoyos@onelogin.com>
Date: Mon, 31 Oct 2016 11:46:37 -0700
Message-ID: <CAAdSu-HcCLw1LQDLhDWZx1M9g+DMBEQa+yojYAwCA7u5L4xwvg@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE Assignment
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=001a114f37a619b77305402da340

--001a114f37a619b77305402da340
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept


alvaro j hoyos | chief information security officer |
alvaro.hoyos@onelogin.com | +1 415.653.1893 | skype: alvaroonelogin

On Mon, Oct 31, 2016 at 11:41 AM, Kurt Seifried <kurt@seifried.org> wrote:

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
> Terms of Use:
>
> https://github.com/distributedweaknessfiling/DWF-Database/
> blob/master/TermsOfUse.md#license
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
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
> <https://github.com/distributedweaknessfiling/DWF-Database/
> blob/master/TermsOfUse.md#disclaimers>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD
> OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES,
> EXPRESS
>
> --
> Kurt Seifried
> kurt@seifried.org
>

--001a114f37a619b77305402da340
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br clear=3D"all"=
><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"=
ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div=
 dir=3D"ltr"><div><br></div><div><font size=3D"2">alvaro j hoyos | chief in=
formation security officer | <a href=3D"mailto:alvaro.hoyos@onelogin.com" t=
arget=3D"_blank">alvaro.hoyos@onelogin.com</a> | +1=C2=A0415.653.1893=C2=A0=
| skype:=C2=A0alvaroonelogin</font></div><div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Mon, Oct 31, 2016 at 11:41 AM, Kurt Seifr=
ied <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_b=
lank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr"><span class=3D"m_8231377289439685166gmail-im" style=
=3D"font-size:12.8px">Hi, I need to confirm that you have accepted the=C2=
=A0<span class=3D"m_8231377289439685166gmail-il">MITRE</span>=C2=A0<span cl=
ass=3D"m_8231377289439685166gmail-il">Terms</span>=C2=A0of=C2=A0<span class=
=3D"m_8231377289439685166gmail-il">Use</span>=C2=A0for<br>CVE, available at=
:<br><br><a href=3D"https://github.com/distributedweaknessfiling/DWF-Databa=
se/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_blank">https://=
github.com/distributed<wbr>weaknessfiling/DWF-Database/<wbr>blob/master/Ter=
msOfUse.md</a><br><br>and quoted below, please reply with &quot;I accept&qu=
ot; and I&#39;ll be able to process your CVE request. Thanks!<br><br><span =
class=3D"m_8231377289439685166gmail-il">Terms</span>=C2=A0of=C2=A0<span cla=
ss=3D"m_8231377289439685166gmail-il">Use:</span></span><div><span class=3D"=
m_8231377289439685166gmail-im" style=3D"font-size:12.8px"><br></span><a hre=
f=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/master/=
TermsOfUse.md#license" rel=3D"noreferrer" style=3D"font-size:12.8px" target=
=3D"_blank">https://github.com/distributed<wbr>weaknessfiling/DWF-Database/=
<wbr>blob/master/TermsOfUse.md#<wbr>license</a><div><br style=3D"font-size:=
12.8px"><span class=3D"m_8231377289439685166gmail-im" style=3D"font-size:12=
.8px">LICENSE<br><br>Submissions: For all materials you submit to the Commo=
n Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant to The=C2=A0<=
span class=3D"m_8231377289439685166gmail-il">MITRE</span>=C2=A0Corporation =
(<span class=3D"m_8231377289439685166gmail-il">MITRE</span>) and all CVE Nu=
mbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge=
, royalty-free, irrevocable copyright license to reproduce, prepare derivat=
ive works of, publicly display, publicly perform, sublicense, and distribut=
e such materials and derivative works. Unless required by applicable law or=
 agreed to in writing, you provide such materials on an &quot;AS IS&quot; B=
ASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or impli=
ed, including, without limitation, any warranties or conditions of TITLE, N=
ON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.<br><=
br>CVE Usage:=C2=A0<span class=3D"m_8231377289439685166gmail-il">MITRE</spa=
n>=C2=A0hereby grants you a perpetual, worldwide, non-exclusive,<br>no-char=
ge, royalty-free, irrevocable copyright license to reproduce,<br>prepare de=
rivative works of, publicly display, publicly perform,<br>sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any<br>copy you=
 make for such purposes is authorized provided that you reproduce<br><span =
class=3D"m_8231377289439685166gmail-il">MITRE</span>&#39;s copyright design=
ation and this license in any such copy.<br></span><span style=3D"font-size=
:12.8px">&lt;</span><a href=3D"https://github.com/distributedweaknessfiling=
/DWF-Database/blob/master/TermsOfUse.md#disclaimers" rel=3D"noreferrer" sty=
le=3D"font-size:12.8px" target=3D"_blank">https://github.com/distribute<wbr=
>dweaknessfiling/DWF-Database/<wbr>blob/master/TermsOfUse.md#<wbr>disclaime=
rs</a><span style=3D"font-size:12.8px">&gt;</span><br style=3D"font-size:12=
.8px"><span class=3D"m_8231377289439685166gmail-im" style=3D"font-size:12.8=
px">DISCLAIMERS<br><br>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN =
PROVIDED BY=C2=A0<span class=3D"m_8231377289439685166gmail-il">MITRE</span>=
=C2=A0ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE O=
RGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE=C2=A0<span c=
lass=3D"m_8231377289439685166gmail-il">MITRE</span>=C2=A0CORPORATION, ITS B=
OARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES,=
 EXPRESS</span><span class=3D"HOEnZb"><font color=3D"#888888"><br clear=3D"=
all"><div><br></div>-- <br><div class=3D"m_8231377289439685166gmail_signatu=
re">Kurt Seifried<br><a href=3D"mailto:kurt@seifried.org" target=3D"_blank"=
>kurt@seifried.org</a></div>
</font></span></div></div></div>
</blockquote></div><br></div>

--001a114f37a619b77305402da340--
