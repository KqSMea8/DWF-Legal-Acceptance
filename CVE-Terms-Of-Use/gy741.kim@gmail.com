Delivered-To: kurt@seifried.org
Received: by 10.157.8.51 with SMTP id 48csp645357oty;
        Sat, 19 Aug 2017 18:29:24 -0700 (PDT)
X-Received: by 10.202.234.69 with SMTP id i66mr19766905oih.246.1503192564434;
        Sat, 19 Aug 2017 18:29:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503192564; cv=none;
        d=google.com; s=arc-20160816;
        b=j8sH7MkhQydS7TcZIzAv7LMEh7otITAgj2u0dWM3LXXNy6RbIZLb6wVa1kFR8q1WB8
         6MQJRzGutCqlrToEVQ4Pim03axmxiRR57e4gArX6G2u85tpThu1xhbqeKwgal8G1+95J
         IxuaQ9RXpesabyglH0HHSSDHowOjsKgcqKCSRxhVBuiEkGgnsZ5L+xSgjc858jBDiLqw
         0KxBAmMADohXcYvIdfbYHhZAFNXqV9GA4R/1oc0LQbmMK4hGQA84xSwAtc49ImfaONmQ
         c5DunykwnnOiYfECz9CawE4e/52sp7L4UpD0+AjnZ/H2NOm8b641QIgy2cPkDUZYHObV
         6iwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=f7SSmBI7gLQEfQ+eoCAOqg8bOIzeAAn/jefFriU/ukA=;
        b=myD5m1W6XwDVDA3JImt5s+ZQ0rnFKu/2ojQN3Kt4nMWwjvKEgU8ppHtS366UVtJ0gs
         f81ZsAxjP/3WObw61Xsth997MP6/91X4FaR4rn5Lig98U1ZSxpxBoQUd6/xh4Uy0Yi7e
         PdTQoWaGh7qMNhGVeIo5Fj2odwLP2mrH/HX/YhaXGstRz1ovDSCbCb5Ex+UtGS9fdNG9
         UKyBZsf6ItgFFcBCmzoUhTUxY0rHjDHspiKYFUJbxxc9Zpby0+NNtSGnuNjK0RG1O/1w
         zqzp0RnFbQOU2PlGJhI8MV0KTIco5+Fv76rETxjWv7jA4HY7yMs76j+NQPcr7PBvGh42
         rOZA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qsrmgNVu;
       spf=pass (google.com: domain of gy741.kim@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) smtp.mailfrom=gy741.kim@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <gy741.kim@gmail.com>
Received: from mail-oi0-x230.google.com (mail-oi0-x230.google.com. [2607:f8b0:4003:c06::230])
        by mx.google.com with ESMTPS id t201si7040241oie.477.2017.08.19.18.29.24
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Aug 2017 18:29:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gy741.kim@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) client-ip=2607:f8b0:4003:c06::230;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qsrmgNVu;
       spf=pass (google.com: domain of gy741.kim@gmail.com designates 2607:f8b0:4003:c06::230 as permitted sender) smtp.mailfrom=gy741.kim@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x230.google.com with SMTP id x3so127114659oia.1
        for <kurt@seifried.org>; Sat, 19 Aug 2017 18:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=f7SSmBI7gLQEfQ+eoCAOqg8bOIzeAAn/jefFriU/ukA=;
        b=qsrmgNVu8F2iN29x0TSqh5fAYZtXjIDB0RA9MKKuDWu5cWhNRWmOMaKl8PspA2m22N
         PzArSX4JBqG42qQAr3U0nk7L67vEDzgW0KwN6rune7VukNPBFjBEDafVhYo7tlYji8sa
         wIjE6oidBQu60OnNxYI4ujMxb9Ou/bdVnuxWrtdM3ss+NfgeE+4i7KVr22kk/H1oMRmd
         Xf462nHFvyNUn9gMJacyt0aFx6rRTqM7wpzhGp2rwzONOWB8QNbd7T99sScStfpMd2sc
         mw7TFhnWyYcHfqe3+4VedTYMLvWMg94gtFNKoxwWU9f9KfIzr1Y4Ul+xD6P0rGD59nJ9
         BOZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=f7SSmBI7gLQEfQ+eoCAOqg8bOIzeAAn/jefFriU/ukA=;
        b=RFJUEKkq6NfOKwpj++sI5pd673WjXXc4ZPcBlbqN9c5ymAwy6H4fSAbfQMH6edeqz8
         RvtYQEx6kf30lFiRYXU/t2Hoo4XjpvmS+BqEemx0H9Hpd5BkpSJjEOGnffzHTpAbEvpA
         OLELnQXrjkrnM6AJJD3HIm0TynvYXa7Wm3UPxt5wul3BvZBHnhT6FuL9leebn+IwHG/C
         aTYeN74W0fTRVmu51AthoNxIIGp7NWQIdwcEZFZhxFaqusvZqMXdaXQvTIeKJpDnf9YX
         kRNFrXily98WDXr+RCOC8MpSZPaI6qz5xhyQiJ7DI4LhI2hH2KIU5Vr08WCzFIj6oNpU
         QSlg==
X-Gm-Message-State: AHYfb5g4BF9pZjpgC4QKt0uPUcojhd0BCAfflbcI0X5gEXvdQ11jtCYE
	F8BfDmYWYSYshe9li/98TOyPgGPuE2/z
X-Received: by 10.202.68.2 with SMTP id r2mr19533317oia.225.1503192563981;
 Sat, 19 Aug 2017 18:29:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.50.131 with HTTP; Sat, 19 Aug 2017 18:29:23 -0700 (PDT)
In-Reply-To: <20170818192922.55281.31651@shiny-2.local>
References: <20170818192922.55281.31651@shiny-2.local>
From: GwanYeong Kim <gy741.kim@gmail.com>
Date: Sun, 20 Aug 2017 10:29:23 +0900
Message-ID: <CAMrcspawZ3FJVM+RO9R5jeooc=3za5S6Z4eUtF5UL8ES3zfPpQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for gy741.kim@gmail.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary="001a113d29d4ce22a10557254ad6"

--001a113d29d4ce22a10557254ad6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I accept.

Thanks.

2017-08-19 4:29 GMT+09:00 <kurt@seifried.org>:

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

--001a113d29d4ce22a10557254ad6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div><span style=3D"font-size:14px">I=
 accept.</span><br></div><div><span style=3D"font-size:14px"><br></span></d=
iv><div><span style=3D"font-size:14px">Thanks.</span></div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-08-19 4:29 GMT+09:00  =
<span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank=
">kurt@seifried.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This =
is a confirmation email sent from CVE request form at <a href=3D"https://iw=
antacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</=
a> asking you to accept the MITRE CVE Terms of Use (assuming you filled out=
 the CVE form and want one, we can&#39;t use the data until you accept the =
MITRE CVE Terms of Use).<br>
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

--001a113d29d4ce22a10557254ad6--
