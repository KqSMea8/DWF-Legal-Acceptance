Delivered-To: kurt@seifried.org
Received: by 10.176.3.133 with SMTP id 5csp1169215uau;
        Thu, 3 Aug 2017 11:18:38 -0700 (PDT)
X-Received: by 10.36.73.146 with SMTP id e18mr264651itd.28.1501784318793;
        Thu, 03 Aug 2017 11:18:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1501784318; cv=none;
        d=google.com; s=arc-20160816;
        b=z0lzXpJtgt4IUnIFiAG/mH2pah0YaW66mOd/cASbz8g37b6N0JwsjypmD9VUhy9bYa
         bVFwZmGGjCiAWThYE4hjTbi+txtJY2TfM9qV8qrUcS2HeweEJ80q9UXZwfBfi0dsftO+
         oIDR7DSM9ZqxzTGKxkAT7H4hH6y0VKzXZY2aM0fpq8He6tVOl5mOGelPXuyqSS24LZMo
         9cv//9eU1Q8JWrntr7vd1yqj21QMcUpcsAiWeUtM/8ddIsCd2D/939d4gIaiYUQ0fR2T
         2QY1dduf5CD9dX2sX9B0NolsiUsKxiFUKDAuEDNs3l4OCXcTBDIPsh0PxlsK1UT74PFt
         wgJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=YMX9XuUfHT75qtXGXhsWCyLef/OyNf0j9xeHLtD+nzk=;
        b=RBANpnW2UEgfDXF+fVakGoV393s0Aoe2Cp7kyFriZ9PaKei85EH84kvbFjftFCCwlC
         76B6AC5L3DS7H9frsGGM+7aNm/nIcuyceNelg5TDPu/ZJh6Tvne7jd0iw0a5ZrTCkTCc
         IPIsFcBuxYPnN2PTK7sGbTyKv7Xn9h2S8DsVR3wfhrtIux7AUBmEbqiMafzLKesI5i0f
         zN6EZRZY4a86vcH2AXWO+EYlvvVs96pjqYZIU1mcL7Nt0kQbxYEsUr8+4jqKokL6Qkwb
         ibN1HWSi+JwxCVfE86tlo7kgkMDBpoaJ0E7zyjVxYth4lhbVFAxnSlSn6yiAiZC72pre
         O+jg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=JLFxMt1m;
       spf=pass (google.com: domain of dylanishappy1@gmail.com designates 2607:f8b0:4001:c0b::235 as permitted sender) smtp.mailfrom=dylanishappy1@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <dylanishappy1@gmail.com>
Received: from mail-it0-x235.google.com (mail-it0-x235.google.com. [2607:f8b0:4001:c0b::235])
        by mx.google.com with ESMTPS id f33si839419iod.293.2017.08.03.11.18.38
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Aug 2017 11:18:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of dylanishappy1@gmail.com designates 2607:f8b0:4001:c0b::235 as permitted sender) client-ip=2607:f8b0:4001:c0b::235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=JLFxMt1m;
       spf=pass (google.com: domain of dylanishappy1@gmail.com designates 2607:f8b0:4001:c0b::235 as permitted sender) smtp.mailfrom=dylanishappy1@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x235.google.com with SMTP id v127so1459519itd.0
        for <kurt@seifried.org>; Thu, 03 Aug 2017 11:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=YMX9XuUfHT75qtXGXhsWCyLef/OyNf0j9xeHLtD+nzk=;
        b=JLFxMt1m7U/FgsSAPxvvfp+vTmQRGTsWzZgQy46AdBiNkjq1oCxvavumZJoO/J7hAt
         G51+um9Ay6aE1emhJPC8OgW8RB4feuh3y9shFYPr7y4TPScdsRCoGjom7RmT0w1IajzA
         IAUDsog3fNiKEWgYkvgCwZWP3KOHhNcVXFI02Zb4lGowXbcLNVQL46GdYp9SP/KkNKwo
         i7hihtO6Kr8xlB3nXnEmGIhs19EkZeens0cAyH5D99EKo/dTmq4YnYey5SYIJeYsnyJH
         0DUx3Dbzp2/R3uYlSJIbJRIyhGo3/komCDCD+Vh9dYLQR2U77nKP+tAKO9zpK7llkxUG
         wTjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=YMX9XuUfHT75qtXGXhsWCyLef/OyNf0j9xeHLtD+nzk=;
        b=ZVqQTpV3s3miqSmokG0smfH2wEkG1YUN8kK3oliYtNbzH8Ms/WYgg5bzcuat+44CfL
         97BFF795F4lROYrmMObdasm4JZpey5ZcbGaxsFneY3C/Kf0zGwlD44UnYt6QXN8fjTHX
         Mv8304p98f56td3ENCnC1Ps3+nPe1NJ0ghCZnF31Qar7QC79UsInE7AJJxbMfvjkgOxF
         /hk0tLUamzey/w+7c6Ucm2RdR99HumrNVhbeKI84B6gQipVvyMU7QVFXm8Nw4XbWypfc
         t8acq5LV54CAqs+/aofZmmNbftb5Q3OT/SNAEH6uWPEOWaR1vwbyuhDfU/ajeGn3/47e
         WRgQ==
X-Gm-Message-State: AIVw110E90m+kvcjPeIF+YPXmCId/9lqrbvrXI5Xp/m55pvdlvOm7BqB
	Bo2nbfvC3CAhxyHH0WXrIvjpzHjDK0Jy
X-Received: by 10.36.144.195 with SMTP id x186mr190079itd.143.1501784318115;
 Thu, 03 Aug 2017 11:18:38 -0700 (PDT)
MIME-Version: 1.0
References: <20170803181736.4892.34659@shiny-2.local>
In-Reply-To: <20170803181736.4892.34659@shiny-2.local>
From: Dylan Katz <dylanishappy1@gmail.com>
Date: Thu, 03 Aug 2017 18:18:27 +0000
Message-ID: <CA+dddhDcOm-=M90m7yJ7sTyRO9RWLcr83SKxH+4TjhOQ4PFYWA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for dylanishappy1@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c07eccccf85540555dd6821"

--94eb2c07eccccf85540555dd6821
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I Accept

On Thu, Aug 3, 2017 at 12:17 PM <kurt@seifried.org> wrote:

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
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--94eb2c07eccccf85540555dd6821
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I Accept<br><br><div class=3D"gmail_quote"><div dir=3D"ltr=
">On Thu, Aug 3, 2017 at 12:17 PM &lt;<a href=3D"mailto:kurt@seifried.org">=
kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Th=
is is a confirmation email sent from CVE request form at <a href=3D"https:/=
/iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org=
/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled =
out the CVE form and want one, we can&#39;t use the data until you accept t=
he MITRE CVE Terms of Use).<br>
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
lank">https://github.com/distributedweaknessfiling/DWF-Database/blob/master=
/TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div>

--94eb2c07eccccf85540555dd6821--
