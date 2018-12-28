Delivered-To: kurt@seifried.org
Received: by 10.176.6.230 with SMTP id g93csp849474uag;
        Sun, 25 Jun 2017 01:25:52 -0700 (PDT)
X-Received: by 10.107.32.139 with SMTP id g133mr8117422iog.58.1498379152904;
        Sun, 25 Jun 2017 01:25:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1498379152; cv=none;
        d=google.com; s=arc-20160816;
        b=jANSbfreZU8++Nm7gSilZzgzbG9Y7MLvIM0b7F+nbhvxkeLRIrDvcV7xb4usg/cecE
         /YAnN5XmFA+lMp5U0xvNtsNO1UTuFm/t++bSFveTW5sIhRX6YG1/Om77G4JhF2+6si8b
         /w/pL6Kx9c3M0HTfQ1mxuyt3nFlaN2+ihWEGP18ZrgiRp2n3lUg0im7PNmuH8SmQQjo9
         SsA9VOQ5WuOD8L8h6GXopUjR5W9AqE8CSGDoKvge/DIOMNDd4pXvnkY88c/hCKv3cf3l
         Cmfrxh+FIn4qFMzpNMDv9mV2zMeT4o15krkQ2UyKoO30ZkbBJTLN1NphOVNptR9ziBsp
         zMAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=BjZ9l1A02ifznpnFka2rHKrna1oRd58RJ1zNOWXjeAg=;
        b=c5hmwNumyXKffIFCBDwLgmuwtjWLDJX3/09a3gO/1/egXBE7wrthVXYWOWmpLV8SLe
         25PD/c6RjrY2vEcB+MJNtkT9h9Ap6kHwbWgU3QK2ycd0wlmHytntDWu5gc29xTGkrC7n
         Uv7HAHXegr3xvfUhz7S/5H9xF/yxKy+yK0hiiErnrbjfvnyaNevvAtZOA3uNRjeFCf/E
         fjUUnOUExuUft2Ei0aiLcCaNeKtHFnXUZMKn0vK0gpf7HsZT6NyFEBxsJbMBO3mGfsnj
         3oAwXB5mH98uA79osHpW3TVRLc2O9XPEu6zpA/VRnM4/0uSXPO7ShoYoUQr+sFag3u2R
         R17w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=gVIAO60R;
       spf=pass (google.com: domain of yann.chalencon@gmail.com designates 2607:f8b0:4001:c0b::22f as permitted sender) smtp.mailfrom=yann.chalencon@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <yann.chalencon@gmail.com>
Received: from mail-it0-x22f.google.com (mail-it0-x22f.google.com. [2607:f8b0:4001:c0b::22f])
        by mx.google.com with ESMTPS id g31si8733540ioj.23.2017.06.25.01.25.52
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Jun 2017 01:25:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of yann.chalencon@gmail.com designates 2607:f8b0:4001:c0b::22f as permitted sender) client-ip=2607:f8b0:4001:c0b::22f;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=gVIAO60R;
       spf=pass (google.com: domain of yann.chalencon@gmail.com designates 2607:f8b0:4001:c0b::22f as permitted sender) smtp.mailfrom=yann.chalencon@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22f.google.com with SMTP id m68so7390206ith.1
        for <kurt@seifried.org>; Sun, 25 Jun 2017 01:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=BjZ9l1A02ifznpnFka2rHKrna1oRd58RJ1zNOWXjeAg=;
        b=gVIAO60Rct7t+0+H6A9x9/i3Sq58u6exlnI4CEOMAcZUsJiBhBSD0B4gmVgqZqV6E+
         MAVzlm9AhhcjRTG74mQJ+ONpSl1i3CB071Pcym2blL1gowV/40AS8NNCv3JCSOEdBLSY
         qKPUzKytvGcs8/RNVXFU6IH6fHc46qVj4ugn2t/bBKABgR/qcSO8xv1C9QAtkJv/7fc9
         0HE18/URQx2Gt+3n82oU1thFkv0CmgG30Fs7z80gg5OEokKTl2VvTtmZbkJtQ9wUoclN
         FC6W2y5QT5X3BgvmMqZfoGx95+l1/7X/yjH2EPg3I09AwffP2aqPIL/XnDAtoWp6DGyM
         A5+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=BjZ9l1A02ifznpnFka2rHKrna1oRd58RJ1zNOWXjeAg=;
        b=bI+E9x7F/0oOEyn31pOa2gfThxNrOnNQBUOMUtyLtWNP/dFr0m9SdQtC0laL/7qgYM
         qPl27Uwp1ucIdMjXK4X3fDNIXLiHvi+VTSLNpJ3hJDWA0RueE7jZW/mEkrOidyvTs2UW
         hFzQpPK9IqZJykXoy5yf/Tg6/YuTFmMbKmOjnVFYEadle38pFUdi5HT3s4ZHSZGTKi56
         UdT6q/6MH3bZuzYJPSvrb9HEKd2bLqeC7xju7lfFMJGpw5IbdZVBoFMPcQYfRaxCiEav
         0eZvJXuPJZKtXSJTKrd2C/ULMIXN6pi7W7G8b9SdgCx0AcdRkFV2sE2uWw2kYDLTkLwV
         QDsA==
X-Gm-Message-State: AKS2vOxxo+O2K7GicldKGlarog2zRhWDCj6Iuta9bkKSWwjoIvKLGno+
	7afN46PQSukK6UsdI7dxXQtxT5Ym5nmikuc=
X-Received: by 10.36.217.207 with SMTP id p198mr17113255itg.116.1498379152032;
 Sun, 25 Jun 2017 01:25:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.21 with HTTP; Sun, 25 Jun 2017 01:25:31 -0700 (PDT)
In-Reply-To: <20170620014544.46686.19371@bigbox.local>
References: <20170620014544.46686.19371@bigbox.local>
From: =?UTF-8?Q?Yann_Chalen=C3=A7on?= <yann.chalencon@gmail.com>
Date: Sun, 25 Jun 2017 10:25:31 +0200
Message-ID: <CACzjdKDwHG3BoyuhqBkT+T6-NBRRrrgFuBx47HYoSSZUo+_Hsg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for yann.chalencon@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a113718b2188d3b0552c49587"

--001a113718b2188d3b0552c49587
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On 20 June 2017 at 03:45, <kurt@seifried.org> wrote:

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

--001a113718b2188d3b0552c49587
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;color:rgb(68,68,68)"><span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:12.8px">I accept</span><br></div></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On 20 June 2017 at 03:4=
5,  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_b=
lank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">This is a confirmation email sent from CVE request form at <a href=3D"=
https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwanta=
cve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you =
filled out the CVE form and want one, we can&#39;t use the data until you a=
ccept the MITRE CVE Terms of Use).<br>
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
</blockquote></div><br></div>

--001a113718b2188d3b0552c49587--
