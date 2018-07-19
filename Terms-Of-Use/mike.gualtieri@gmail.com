Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp854424otd;
        Wed, 18 Jul 2018 12:17:31 -0700 (PDT)
X-Received: by 2002:aca:6142:: with SMTP id v63-v6mr8332883oib.137.1531941451735;
        Wed, 18 Jul 2018 12:17:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1531941451; cv=none;
        d=google.com; s=arc-20160816;
        b=HbNOJXxtL/bgTPS/ij+6l/8JtURQSKk+jfQSP8W+0M722TdLkctU1F+CAKPuIs5Ijh
         LP655jKUQqD8I16MYIdtCwA1KVyVjEFU+URcg4hxoDRS6iz1zgwygxEKzgmkPNSvA/Qs
         giN2TEBJkfa0HCWoYpevMCygmYzjZFURzvrDAYtoylYMtmWTzE+3DJ862LcKxvZuNSpA
         hY3czH7iWc+B2BfjrULY4ZwNOcjQAT2wujPLD7YfCbzMkyICGurojLCji3uCM0wzSfmg
         6fjoDPoKLFNXPA61aduguKPv2hXAg7xobe0QD2zxQ39km2oiTMvQs6uIMH8Af63cKkTO
         PvLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=w7cfi4VUze5i4DAFEfqOBIfrx4S9Epj/HmCoGGQxh7U=;
        b=MteKT5M3ddDlAOttilK6rvBvEQYxixnEn7FH7ZVGg+lYmL5zKY0MmOlXllgmbHTxOF
         oOPSAxOZ+ONBc5ydPe1GwtyNVmowu1AMvz4/VW/5+qYeaiOedPZ/3jvxykAGUWtoR9nz
         ffAkBhOoe7BFglaULY4CRzZKHblFbTMexrahEL3XwKx5lFo+DpwHW2bEYFLoiMfNZuUR
         glEBBvpmXiaLdmlYoNJVWh3QfFWXWJ3SdHrvWco3PYbiZ/veb6t68AThKNvEpIQ3ZKuK
         8N279+WkUOLMbElCF7vYcpPMhHtR3CcHJAgCM2lpdKG0Ez7KYCDKHon7i+yJXGD3ydhK
         u+cA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=InVpSmGW;
       spf=pass (google.com: domain of mike.gualtieri@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=mike.gualtieri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mike.gualtieri@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id s78-v6sor2665050oie.322.2018.07.18.12.17.31
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 18 Jul 2018 12:17:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike.gualtieri@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=InVpSmGW;
       spf=pass (google.com: domain of mike.gualtieri@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=mike.gualtieri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=w7cfi4VUze5i4DAFEfqOBIfrx4S9Epj/HmCoGGQxh7U=;
        b=InVpSmGWvrDLat1sHhru/Qe9Sbnqj4FWOimihJg3LYUIE7qqUpJA6r7KlEcH3kgT/9
         M7/SD1Leo3MxTMLUPEYSoVxrBVvIEKF36MxzHzbY/bGWhhAP5Mnj7AYMe3pVoHEUX/+G
         I3XN9g6FVlrYF6iKlaX7f9L49CYMZBJAn+XUPQq94+ozIrxv/8+3BITfm6WV3JM+2cZh
         kzzKPRO3fOkPrrAeHF5AVDMUdiZaYUfJuOpuDtpeahcnaK3363tlwa3FLduJxXOTsiN6
         iwYxCDvF1OCRmqQCrHe4GCpQbJCvo9npjoDsY5sTAQH/PUdAlcLjS6Miep2QANwc03i/
         k++A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=w7cfi4VUze5i4DAFEfqOBIfrx4S9Epj/HmCoGGQxh7U=;
        b=I7EQn0VIvB5kitlVk/XAaauXkzrYj6uy0CytX3IozzbVDuTO3qCIvg8npYKVdw+84S
         JnO/BfMelvnHHdr1D/t5mTOV37cag7US+Bcf8oCZRphcgBzfzBPfB/GV4h7U6O/O57gN
         h4kqRCtjBSkh/d+pHbMJ0GAxeWE8vlkLveSuRg+byXs+74jSNirJAaN8JEjq+st6PCek
         Sf7qmh/qeEj4fE/eyUZdFFJIvyjBqCo5ZOFal1WhxMhQ/hDegQe1ES7e8BqEmmjyZh6r
         0HO4MiQ8Q2+/lzzb6V94w9/C3mPn8Qzue7YN6Owej/1looUWt9/6EEj+vjdRTi5yUXLl
         88ug==
X-Gm-Message-State: AOUpUlGLv6UPD/OKiyn36/ZzpP2xzgH94goSOoB2K/xBiqhgAIfxJ6A3
	zUAWkK83gEDTy36uwkNQIMZIVH6v5V1VswUwQXCubIBk
X-Google-Smtp-Source: AAOMgpf8/I16IjtQ5OfoMLdRga7VL9uSW7j/Nu6832mQyky2sYZ3l2PlINkIAXaq8R8ck7HOLqCOQn5xM5Fi5sTAEpA=
X-Received: by 2002:aca:d9c5:: with SMTP id q188-v6mr7177764oig.239.1531941451160;
 Wed, 18 Jul 2018 12:17:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:3e19:0:0:0:0:0 with HTTP; Wed, 18 Jul 2018 12:17:10
 -0700 (PDT)
In-Reply-To: <20180718161551.5378.3595@shiny-2.local>
References: <20180718161551.5378.3595@shiny-2.local>
From: Mike Gualtieri <mike.gualtieri@gmail.com>
Date: Wed, 18 Jul 2018 15:17:10 -0400
Message-ID: <CAGaV8UmU-ucyTZYfr49QmQ_GjprEBdyqhdnBNrbxTKnp-q1jyg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for mike.gualtieri@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000037a6605714aeac0"

--000000000000037a6605714aeac0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Wed, Jul 18, 2018 at 12:15 PM, <kurt@seifried.org> wrote:

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
> Legal-Acceptance/blob/master/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--000000000000037a6605714aeac0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px;text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">I accept</span=
><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed=
, Jul 18, 2018 at 12:15 PM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@s=
eifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">This is a confirmation email sent from CVE re=
quest form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=
=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE CVE T=
erms of Use (assuming you filled out the CVE form and want one, we can&#39;=
t use the data until you accept the MITRE CVE Terms of Use). <br>
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
e accepted and so on. <br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems. <br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc. <br=
>
<br>
</blockquote></div><br></div>

--000000000000037a6605714aeac0--
