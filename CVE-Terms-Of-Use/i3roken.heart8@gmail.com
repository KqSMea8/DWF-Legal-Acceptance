Delivered-To: kurt@seifried.org
Received: by 10.176.6.200 with SMTP id g66csp820465uag;
        Mon, 19 Jun 2017 20:19:06 -0700 (PDT)
X-Received: by 10.223.183.20 with SMTP id l20mr18830946wre.154.1497928746044;
        Mon, 19 Jun 2017 20:19:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1497928746; cv=none;
        d=google.com; s=arc-20160816;
        b=O2dD1ttQd2MMEIRyDvOwNVLv1Qr22Gd+Tbgo2nh/j9xmt8Dl0IB74xuGc8Th1KeSIV
         nG82QgGg4heEfVp0ueo165l0V2kSP1b9RjuCh0lsSjuo9LpWhswJZvyy9Tnb6/6R9yu7
         gktEflBpYfQXKRdm6NzkQWR0UUDRc+GN5gF1AhcOpJWUDdTgfPGakSyO11OaMeQI4yHU
         CBiI2gCSmzvPJQc5b7fjs2kZVrcTSlIMFX+gOq9ELz41E6Q++MhTWHq5bNKA7CYEu530
         f3GorOzddVqKXqWli6t5Gt6ZiQrg14JiWz4vrc6Qw/vUiTzQuzXG5ISL3zuRlITTcgip
         qsZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=ozIHT7LfN+AoqWfHmF3DFPXFxRjTLgqtrp59XRUePJU=;
        b=h5GrtevLiqmHsFx8cayRRqX+P5hNyb0Lz8C1Yo/gbY8//4LubJ/X25dsU7rBlDRLnm
         H+j0Tz1oyFvr++YAOKfO7E/cIwg9MThiD/M9rRtEFigRK0D1OJVOGK3o7ck7rYtV4dcn
         JUt3t2IWLCo9VZc4AkShulBEHE/dlI/LUc588510PZmEh5yQ74Fu4S1ZklQVqPb7anys
         4ltew2oKVbvbHfvis7lFJY6noNzIl3YpSurLz6VkzgKM7eKsW0uqN9L8REfRDnxoLQ5Z
         mJLy0irTutdqnOzO8RUneI25J440QHDltasTlWVqJU3MCw5nxGyOssNjuLvIkbtwPWXs
         yt/Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=YZQO2vOa;
       spf=pass (google.com: domain of i3roken.heart8@gmail.com designates 2a00:1450:400c:c0c::230 as permitted sender) smtp.mailfrom=i3roken.heart8@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <i3roken.heart8@gmail.com>
Received: from mail-wr0-x230.google.com (mail-wr0-x230.google.com. [2a00:1450:400c:c0c::230])
        by mx.google.com with ESMTPS id e4si8343883wmd.89.2017.06.19.20.19.05
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jun 2017 20:19:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of i3roken.heart8@gmail.com designates 2a00:1450:400c:c0c::230 as permitted sender) client-ip=2a00:1450:400c:c0c::230;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=YZQO2vOa;
       spf=pass (google.com: domain of i3roken.heart8@gmail.com designates 2a00:1450:400c:c0c::230 as permitted sender) smtp.mailfrom=i3roken.heart8@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x230.google.com with SMTP id r103so84183150wrb.0
        for <kurt@seifried.org>; Mon, 19 Jun 2017 20:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ozIHT7LfN+AoqWfHmF3DFPXFxRjTLgqtrp59XRUePJU=;
        b=YZQO2vOabFa2fVqX2pJ6ZfWJhXxqXcFVF+M4JUtPwkAFAU0z6lvyns0qfAQnTjepa1
         1SxFHNX2yNkj5jPt7c8pbOzUAYzGlneTfe5OaxMmVg/sDX6B3O+PWm9WYwpLQUmV2BiD
         enPCisek7kbakVJjzIre8TFDYkiAknWum5Lu3BFn1RKAbCXDjxrqllZRkZXyK5Xm7zk9
         cxsRBtuxF8DcghX2/HgtZqIAZu5dEIYwBIgUVIIA3Mfd9zFTJyZ6dzFm7zSaHmgx4sZX
         b/cG6a6Ce7I3D/9XeAwIqErcMlq9gEyKVGOZR3JpCWBILiDdUMpn6MnAc73uFzHEdmaI
         1FCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ozIHT7LfN+AoqWfHmF3DFPXFxRjTLgqtrp59XRUePJU=;
        b=PiM5Zk+6aBuoK3XYmtBDND7sTkElU+hAuCbfN8aCl1xL7qRGwrOI38HIlwbQabe6qw
         veT1I/eeBpVFZ7BAFRe2nVePbDqw7Eqz1dC86hwUt4paeDLTSA7CnewFb71h8G6CEuWo
         38ia9p2kZSKNvaqhHWSg86cPokt3nN99sQbWgheq0XhQk3I8JhcQuiURMBKFsOeKStU4
         JtF/6kHSeIxniQFgoYLhfQ8t8is+qIyUt2DF/Dq6yy4w83y8/L9QvqQHb8PCvPXiZOas
         oE7NSN0r2+z+2gtdiVTzuJVX6998QnSeG7WSIhdUmLwpJn+/NCCd4MD77rXCZ00OxiB0
         NqeQ==
X-Gm-Message-State: AKS2vOxP99hQwEnvbc0722Gjvx92gwUd9wyEw8Td762+quEkdXm4xwCj
	fWhN6USZdDvDL14rSAWvWoUl6RoyNA==
X-Received: by 10.223.135.185 with SMTP id b54mr17370290wrb.170.1497928745313;
 Mon, 19 Jun 2017 20:19:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.164.137 with HTTP; Mon, 19 Jun 2017 20:19:04 -0700 (PDT)
Received: by 10.223.164.137 with HTTP; Mon, 19 Jun 2017 20:19:04 -0700 (PDT)
In-Reply-To: <20170620014612.46686.37701@bigbox.local>
References: <20170620014612.46686.37701@bigbox.local>
From: Mohammed Khaled <i3roken.heart8@gmail.com>
Date: Tue, 20 Jun 2017 06:19:04 +0300
Message-ID: <CALho8n164-7RsPtuE9mUuU5cTKzcxOKvV5tDSsW-HkhW9RAVeA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for i3roken.heart8@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a1149890ac3696905525bb6e3"

--001a1149890ac3696905525bb6e3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Jun 20, 2017 4:46 AM, <kurt@seifried.org> wrote:

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

--001a1149890ac3696905525bb6e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:13.696px"=
>I accept</span></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">On Jun 20, 2017 4:46 AM,  &lt;<a href=3D"mailto:kurt@seifried.org">kur=
t@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">This is a confirmation email sent from CVE request form at <a hre=
f=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://i=
wantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming=
 you filled out the CVE form and want one, we can&#39;t use the data until =
you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div></div>

--001a1149890ac3696905525bb6e3--
