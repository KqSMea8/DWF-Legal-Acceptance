Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3475:0:0:0:0:0 with SMTP id v108csp3246080otb;
        Mon, 17 Dec 2018 17:24:00 -0800 (PST)
X-Received: by 2002:aca:7297:: with SMTP id p145mr6245780oic.252.1545096240731;
        Mon, 17 Dec 2018 17:24:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1545096240; cv=none;
        d=google.com; s=arc-20160816;
        b=SyGK4gkRIbdlQuz49jNrEJhoKpJ6SlFrJRbPDCOzS3nBDxmeMP+qy5AHSN/qN2KnWq
         16UuBNlrv5Yde4MwfN9J5dhi4VBYk5lKTFwPdA2TB+Rg5LX65SlYel3ltvntMzQYVqYu
         fvh1mdQNisfOXOWttJP/2oAxw6Ljo7HIlFuyTMU8DS+Jx+18YQ5xHwZzTJZ4z4gDx7Vm
         Yr2biQLlfOPDFdUXJpBjF8Nfh3YOiQtUXzsZZcy2yRx3/QJFrw/yWOFOvECAV6A34EL4
         mtQwg1x+l4YwIGyPsMFWxsvNXdNNreWRP8AHTyBZtm2/dW/8rPAaIlbWJzRhBR+VzPGL
         KAuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=xIdI5SR3lGV4vYmqEqFhvpq+kgkeoaIUMAYcDjnZMKs=;
        b=nAbSGMVxKFoaaA09IZopLCl5FR2qentQTBHYRBP/hJPM9M6oKsnKTy9EFyByEQMNZr
         nVMKfp+6aadkH6bwFUYgFgUaI2bNfU0613a9N19T9L76TRg3SJIXxFfwrPMM7fZ1T32X
         4v/++YXLz5ohmMkbdMWNQY7davelmCMK4snGYeDNsdo9XGr3rW0aA5JTssn6BclvE1AJ
         0Rg/3bKLAG0YDB20aghCz/OykrIP/6V+sWSWV6epZhU4FGz/fgETI87UybcZxgRgU9We
         Z2bhzswkgmIbSrOi3pcYr6qf2+/fzQeQmEXRPJf7XtT5tgcpQ/88DEkhcP+4fsvibTEL
         DCJA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B6DZPX9+;
       spf=pass (google.com: domain of yanshb@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yanshb@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <yanshb@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id r5sor470490oih.58.2018.12.17.17.24.00
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 17 Dec 2018 17:24:00 -0800 (PST)
Received-SPF: pass (google.com: domain of yanshb@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B6DZPX9+;
       spf=pass (google.com: domain of yanshb@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=yanshb@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=xIdI5SR3lGV4vYmqEqFhvpq+kgkeoaIUMAYcDjnZMKs=;
        b=B6DZPX9+r3QJrnjxDhW8ZqK5r3nhDR7hcW/RjmW2xB/G6ZsB42TElFJUV8YNBuxfI1
         I/ANCcUeq8DrSnrPXOyBk/inmM5IApipsQQ3cEXyAGILKnVTNL+gkBbcKGFuI1NoHhbv
         8YatrguFcErx/sL5akEO0sq3O5rs1jKMT3rateSEYihYXEZ0UAbP/r6aA678PIHgJN2/
         C57x1NLxiUCaaEf0v3kQVxGQU0j5TlvjlGQwEi3I8OPooCKRK+Erd7jWRsM2/CoqHkej
         WKVRn+DyfoC1Uwzg/0FNLAhbMwMQIspG/ERQn4hLW3t5BEhnOI+zjki1PRudXWgrIhKV
         VeiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=xIdI5SR3lGV4vYmqEqFhvpq+kgkeoaIUMAYcDjnZMKs=;
        b=qs/gAnZvI3Yg+avizr7p2HjPn1K3n7A8kXlO/kaiD7WfxZkrO0Byl7laS1UeDXOJv9
         CMdbSzv/2WWJgpKv4qzRej5zFhlUMDNsF2sVeN8hpNkOSLKlh4NYYbNFACi2PRqxx/DB
         +e7DBVS2ZeOzMvpB8QVEa05KzEnfW6PR+Fw945dXaQcGGkvmBxo4ASxKnKqF6dJuUc+O
         M6tHC5Postby12h2C00PYYre9ikpjaOjdLb/DJtpxgMi1+h3I0thuZo5gsBt+Ryv7PZu
         jzbdzDZaGoMDFmS/SyHFYfi+OlSZEJ8Xqqr3LPub0Fr+ZjpW0Yvr1bsVGloUxhoMwxOn
         /B8g==
X-Gm-Message-State: AA+aEWajkuKINThmuCk8tAlPD4sCtHnS5TsZsXROW9yReHbGxqfbZP8z
	IT9m7mt1479s5pL0wEOjv2oC8ZLnWCLqb+iaFRKM4w==
X-Google-Smtp-Source: AFSGD/V9Ca08Vr1vWmMp514mTnnLdUzTPK61y6jjAPQfAvJIF0m0DBtGuQ+a8Owf+V1jnffbKvle5Wrcnx1oiB91vOo=
X-Received: by 2002:aca:3506:: with SMTP id c6mr7071122oia.65.1545096240158;
 Mon, 17 Dec 2018 17:24:00 -0800 (PST)
MIME-Version: 1.0
References: <20181217155644.4504.10945@bigbox.local>
In-Reply-To: <20181217155644.4504.10945@bigbox.local>
From: "ShengBo.Yan" <yanshb@gmail.com>
Date: Tue, 18 Dec 2018 09:23:41 +0800
Message-ID: <CANaYgX0_wcb+5ug6cK-WrqOD=1YV7RHBpwZFay-gbWSsEdVEsA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for yanshb@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="00000000000089de02057d41c0f3"

--00000000000089de02057d41c0f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

<kurt@seifried.org> =E4=BA=8E2018=E5=B9=B412=E6=9C=8817=E6=97=A5=E5=91=A8=
=E4=B8=80 =E4=B8=8B=E5=8D=8811:56=E5=86=99=E9=81=93=EF=BC=9A

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
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--=20
It is always a pleasure to greet a friend from a far

--00000000000089de02057d41c0f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Yes, I accept.=C2=A0<br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.or=
g">kurt@seifried.org</a>&gt; =E4=BA=8E2018=E5=B9=B412=E6=9C=8817=E6=97=A5=
=E5=91=A8=E4=B8=80 =E4=B8=8B=E5=8D=8811:56=E5=86=99=E9=81=93=EF=BC=9A<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">This is a confirmatio=
n email sent from CVE request form at <a href=3D"https://iwantacve.org/" re=
l=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to=
 accept the MITRE CVE Terms of Use (assuming you filled out the CVE form an=
d want one, we can&#39;t use the data until you accept the MITRE CVE Terms =
of Use). <br>
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
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc. <br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">It is always a pleasure to greet a friend from a=
 far</div></div>

--00000000000089de02057d41c0f3--
