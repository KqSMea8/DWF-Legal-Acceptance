Delivered-To: kurt@seifried.org
Received: by 10.31.3.33 with SMTP id 33csp236009vkd;
        Mon, 31 Oct 2016 12:11:12 -0700 (PDT)
X-Received: by 10.202.179.68 with SMTP id c65mr26951303oif.125.1477941072081;
        Mon, 31 Oct 2016 12:11:12 -0700 (PDT)
Return-Path: <finbar.crago@gmail.com>
Received: from mail-oi0-x22c.google.com (mail-oi0-x22c.google.com. [2607:f8b0:4003:c06::22c])
        by mx.google.com with ESMTPS id l7si17162004ote.175.2016.10.31.12.11.12
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Oct 2016 12:11:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of finbar.crago@gmail.com designates 2607:f8b0:4003:c06::22c as permitted sender) client-ip=2607:f8b0:4003:c06::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of finbar.crago@gmail.com designates 2607:f8b0:4003:c06::22c as permitted sender) smtp.mailfrom=finbar.crago@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22c.google.com with SMTP id 62so125226846oif.1
        for <kurt@seifried.org>; Mon, 31 Oct 2016 12:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=5Ta1eZWPfO5dttHgyQxOkqPEhW8kemaDLz99BMnYLr0=;
        b=SbtD3rPVfX4bz0Gko18310CdUj3GW0asmN6mNjpf90NQTLchYmgn1sSr9hj/UMFX8Q
         kLOq42e2yxv2sGc0W8b5Dv6LHkaUsf+ROMWI5xhy+YJft/pGT9DGLg881brpZKeES8vl
         4SPjQJP0wutzkH/ga1SMXADt+qfx7ewIr0Jqs5Iu7goZGrwDhkE6iYecvwm5IWAjaws7
         DkjNK70S81wwHHPeifA8e6rC9gaVx7zKwokzjWSvUZXNm1o/PviYfmgBhushk7hdqX1C
         Tq2M5/crv2r/vQJn933BndLmTBwSy/qA/5rENmC3sVNzU9xhkLcluvnlnwELwu0EGcCZ
         H5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=5Ta1eZWPfO5dttHgyQxOkqPEhW8kemaDLz99BMnYLr0=;
        b=g1XwE3i/IXIphmTTCQ1JdR1EkQWqpi5xVKZa1OHpH3JRlrA/0GlOVJBu3US5nllXnz
         H5gH+9gOMzhPv7fxRjfZDCscfY7kxutgXJOPya4KLAEShk6R5VOl/RFKivHlYTDmFSzW
         H0kxnxztkmpDg94Wp1+wLtlqOmYinOxuEAqD2ZJUCF6FXaZ7mvspDMvkVUUJSjM9Y8nJ
         xTQ/MldYz9F8xBwpksW6xiOwt4xBsH+syXB2BP8joG3c5bVVUykk69SsUcylWt5S+YKm
         LHWxVaXLlyiHg/3nSXZndQLqLPYjgXNmJRifXPVVFd5ip2/gJUBxpItQeG+DZAn3cp5Z
         w2zg==
X-Gm-Message-State: ABUngvd13Z31XPEMKnvTIvdXUD+yGEun3pj8OAgSIUrwAx9Yc/x1uULdgvZZclAOH/IPxJHI0yRAyoGlp6I6kA==
X-Received: by 10.157.45.164 with SMTP id g33mr22059771otb.223.1477941071625;
 Mon, 31 Oct 2016 12:11:11 -0700 (PDT)
MIME-Version: 1.0
References: <CABqVa3_6oYbsZD7soVdHxdYhTLrHwKcwyUiJHEFeiAGdu7VRTA@mail.gmail.com>
In-Reply-To: <CABqVa3_6oYbsZD7soVdHxdYhTLrHwKcwyUiJHEFeiAGdu7VRTA@mail.gmail.com>
From: Finbar Crago <finbar.crago@gmail.com>
Date: Mon, 31 Oct 2016 19:11:01 +0000
Message-ID: <CAGKiU3mwxHww9dwXsHjHwR638DQ06KojWtqGsw2gbDa9tv4LEA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE Assignment
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary=94eb2c04f8ce92c3ca05402df858

--94eb2c04f8ce92c3ca05402df858
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Tue, 1 Nov 2016 at 05:42 Kurt Seifried <kurt@seifried.org> wrote:

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
> Terms of Use:
>
>
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md#license
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
> <
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md#disclaimers
> >
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD
> OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES,
> EXPRESS
>
>
> --
> Kurt Seifried
> kurt@seifried.org
>

--94eb2c04f8ce92c3ca05402df858
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Tue, 1 Nov 2016 at 05:42 Kurt Seifried &lt;<a href=3D"mailto:ku=
rt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"ltr" class=3D"gmail_msg"><span class=3D"m_446799=
23059582982gmail-im gmail_msg" style=3D"font-size:12.8px">Hi, I need to con=
firm that you have accepted the=C2=A0<span class=3D"m_44679923059582982gmai=
l-il gmail_msg">MITRE</span>=C2=A0<span class=3D"m_44679923059582982gmail-i=
l gmail_msg">Terms</span>=C2=A0of=C2=A0<span class=3D"m_44679923059582982gm=
ail-il gmail_msg">Use</span>=C2=A0for<br class=3D"gmail_msg">CVE, available=
 at:<br class=3D"gmail_msg"><br class=3D"gmail_msg"><a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md" re=
l=3D"noreferrer" class=3D"gmail_msg" target=3D"_blank">https://github.com/d=
istributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md</a><br clas=
s=3D"gmail_msg"><br class=3D"gmail_msg">and quoted below, please reply with=
 &quot;I accept&quot; and I&#39;ll be able to process your CVE request. Tha=
nks!<br class=3D"gmail_msg"><br class=3D"gmail_msg"><span class=3D"m_446799=
23059582982gmail-il gmail_msg">Terms</span>=C2=A0of=C2=A0<span class=3D"m_4=
4679923059582982gmail-il gmail_msg">Use:</span></span><div class=3D"gmail_m=
sg"><span class=3D"m_44679923059582982gmail-im gmail_msg" style=3D"font-siz=
e:12.8px"><br class=3D"gmail_msg"></span><a href=3D"https://github.com/dist=
ributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md#license" rel=
=3D"noreferrer" style=3D"font-size:12.8px" class=3D"gmail_msg" target=3D"_b=
lank">https://github.com/distributedweaknessfiling/DWF-Database/blob/master=
/TermsOfUse.md#license</a><div class=3D"gmail_msg"><br style=3D"font-size:1=
2.8px" class=3D"gmail_msg"><span class=3D"m_44679923059582982gmail-im gmail=
_msg" style=3D"font-size:12.8px">LICENSE<br class=3D"gmail_msg"><br class=
=3D"gmail_msg">Submissions: For all materials you submit to the Common Vuln=
erabilities and Exposures (CVE=C2=AE), you hereby grant to The=C2=A0<span c=
lass=3D"m_44679923059582982gmail-il gmail_msg">MITRE</span>=C2=A0Corporatio=
n (<span class=3D"m_44679923059582982gmail-il gmail_msg">MITRE</span>) and =
all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applica=
ble law or agreed to in writing, you provide such materials on an &quot;AS =
IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expres=
s or implied, including, without limitation, any warranties or conditions o=
f TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PUR=
POSE.<br class=3D"gmail_msg"><br class=3D"gmail_msg">CVE Usage:=C2=A0<span =
class=3D"m_44679923059582982gmail-il gmail_msg">MITRE</span>=C2=A0hereby gr=
ants you a perpetual, worldwide, non-exclusive,<br class=3D"gmail_msg">no-c=
harge, royalty-free, irrevocable copyright license to reproduce,<br class=
=3D"gmail_msg">prepare derivative works of, publicly display, publicly perf=
orm,<br class=3D"gmail_msg">sublicense, and distribute Common Vulnerabiliti=
es and Exposures (CVE=C2=AE). Any<br class=3D"gmail_msg">copy you make for =
such purposes is authorized provided that you reproduce<br class=3D"gmail_m=
sg"><span class=3D"m_44679923059582982gmail-il gmail_msg">MITRE</span>&#39;=
s copyright designation and this license in any such copy.<br class=3D"gmai=
l_msg"></span><span style=3D"font-size:12.8px" class=3D"gmail_msg">&lt;</sp=
an><a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blo=
b/master/TermsOfUse.md#disclaimers" rel=3D"noreferrer" style=3D"font-size:1=
2.8px" class=3D"gmail_msg" target=3D"_blank">https://github.com/distributed=
weaknessfiling/DWF-Database/blob/master/TermsOfUse.md#disclaimers</a><span =
style=3D"font-size:12.8px" class=3D"gmail_msg">&gt;</span><br style=3D"font=
-size:12.8px" class=3D"gmail_msg"><span class=3D"m_44679923059582982gmail-i=
m gmail_msg" style=3D"font-size:12.8px">DISCLAIMERS<br class=3D"gmail_msg">=
<br class=3D"gmail_msg">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN=
 PROVIDED BY=C2=A0<span class=3D"m_44679923059582982gmail-il gmail_msg">MIT=
RE</span>=C2=A0ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUT=
OR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE=C2=
=A0<span class=3D"m_44679923059582982gmail-il gmail_msg">MITRE</span>=C2=A0=
CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLA=
IM ALL WARRANTIES, EXPRESS</span></div></div></div><div dir=3D"ltr" class=
=3D"gmail_msg"><div class=3D"gmail_msg"><div class=3D"gmail_msg"><br clear=
=3D"all" class=3D"gmail_msg"><div class=3D"gmail_msg"><br class=3D"gmail_ms=
g"></div>-- <br class=3D"gmail_msg"><div class=3D"m_44679923059582982gmail_=
signature gmail_msg">Kurt Seifried<br class=3D"gmail_msg"><a href=3D"mailto=
:kurt@seifried.org" class=3D"gmail_msg" target=3D"_blank">kurt@seifried.org=
</a></div>
</div></div></div></blockquote></div>

--94eb2c04f8ce92c3ca05402df858--
