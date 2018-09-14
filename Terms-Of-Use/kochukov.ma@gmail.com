Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp3567573otd;
        Tue, 4 Sep 2018 02:49:19 -0700 (PDT)
X-Received: by 2002:a5d:6a0e:: with SMTP id m14-v6mr22139875wru.192.1536054559378;
        Tue, 04 Sep 2018 02:49:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1536054559; cv=none;
        d=google.com; s=arc-20160816;
        b=TqOYKWoKNfWeEfSA9Ch/e5KIEQMJsys1TQNMpRYo7ZtwdllM8fCawi12BchONbEp0v
         Ez7tan8KpLgrEfGNVYCt5+z6XQOdAlV3lE5XacP4cl71hMYTFtoJYYBDdpumLqyUZYcf
         eHaZr/BrzXOBaVhrtSEtjXILkc1ydy7gwzrqa8ZFlW5veXy2tW7oTz3A5NnfB6ZaqaxB
         WlZT7/jnGhu5rorx2eOOYqdOXzNCaMVIuWRgo+ljZjZZuJI8GyRSDe2S9Us9zRnqfKhH
         VfwzUXMvbLkK2TyHTQpv84pAkmtepzTiQ7PzdT5+fMKg77tAtR3LjUlvCB3fN+BTdQr+
         EZ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=QJW2QYGaQz/L/LKN4jVRfIbiEOl8lTrN3aZ5LZKX1fE=;
        b=j3/umxHpYe5lD5kG/N97PRvyrdbgQyn6lANgLwUcGslglPY1U5rRHrXiD8/psua+zE
         L8hesgo5uQpXUvNmRm0wQ7Usyc6350WT/BqCS0u4rDGPEHITX/nNUsk2gl8su0cpWb3P
         sc0+SWbcvdiY5syZyiXJlWtWuMcdkeDjoDgZYuHB8Pv9Pl3fJLEJUEMfKoXvFVQ9EcTL
         nX9mZYM9yDgoFbhnnBzqr1W2pO38qRYuYNS6hec8POfAmbtjjzZbqTg1Y34liYG4MYRF
         D385fvRySgka1OsRNpabHELzz9Y5a2OZMdEq1NS8kYSMwJLhSXnyWtV3Ze+exzagCD5G
         yhRA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=es0RiMkZ;
       spf=pass (google.com: domain of kochukov.ma@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kochukov.ma@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kochukov.ma@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id i7-v6sor4106866wma.4.2018.09.04.02.49.19
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 04 Sep 2018 02:49:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of kochukov.ma@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=es0RiMkZ;
       spf=pass (google.com: domain of kochukov.ma@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=kochukov.ma@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=QJW2QYGaQz/L/LKN4jVRfIbiEOl8lTrN3aZ5LZKX1fE=;
        b=es0RiMkZTnpPyQdwOYLDX+swfzg4ft2Pa9nEPX/i2PpVGk/bhVEq6hEhhJXJkt/2dC
         9Z4XBOewohcoCo7K6KxBg/6UUjNHMVh9A/mFkSdnqFfSLd1YCnvlYit2rfIjap0EnHaC
         fX1Rc/Qlml22Wk5P8Xi7zwQu+8Y599iXFfCpq1qoZgyoC6BMfunUr4XozjOsyv6X360K
         I5f+nJ8cgx+QABxKv/MJGiEEQVMZEcJLtDZCr8Shb1AklZ/irJV+UOk5wSXnB3Be94Fz
         HNprDdRl/S0xh7d4m1rv3nemH4xe2U8bwJ186tDMYkH6ie2t8pdqBJCl9JwhcLtnbcao
         I4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=QJW2QYGaQz/L/LKN4jVRfIbiEOl8lTrN3aZ5LZKX1fE=;
        b=sRpQSvPEudbrAUddJ2GWcKt1ShEOqOU7dlbwxWB5jafJpbrUgVfzW7xMtkUuJhA4OR
         3D0karIE5fhfQ++pVzCv5wzRVcF2nVP3/c45HKMaK0MwNiPdFO/kHZ6cGyQJRY/8L7Ie
         teIBU4jcDVaDtfuXneAIWvbZQBvcxT3FNwvfKNYavT5DlBQYC8fGIKSKuAU6o82tENW5
         kYyCDhDj2zDZmjkk/SLQtpGomSaQQkX+4ot2LavTeiItOynv8WbTRfTKtf3iG0rAyhOT
         8qPKpLrR842KAiUI1JcebjX1Bp+NMb7UbEzAOVm2GZeHTaPakVNKPGv9peWr+Fa24MfU
         9AaQ==
X-Gm-Message-State: APzg51BGz8NE7iRdrObOj3f/yBuB+h61bms5vQC44P6NTbgN1aMLcatk
	oP8DV0QM6bFv6Nufq1Wm1VgEziM1nHfBSFiJvfnPgIkl
X-Google-Smtp-Source: ANB0VdZt7krEihdXJWAvLai6qNrQYnW444RUgE1SXh2z28Wjsw8pyUhnTF8/kKi4XzRyo/q1zK1hVnP6XZT2cy/0M3M=
X-Received: by 2002:a1c:a401:: with SMTP id n1-v6mr2128449wme.125.1536054558938;
 Tue, 04 Sep 2018 02:49:18 -0700 (PDT)
MIME-Version: 1.0
References: <20180903005911.6662.18894@shiny-2.local>
In-Reply-To: <20180903005911.6662.18894@shiny-2.local>
From: Maxim Kochukov <kochukov.ma@gmail.com>
Date: Tue, 4 Sep 2018 12:49:07 +0300
Message-ID: <CANviMHe34rn0BnbbSfGFLjs-tajv=pf=2JtjK384Oiz-RYta-g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for kochukov.ma@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000575c0705750892e2"

--000000000000575c0705750892e2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

=D0=BF=D0=BD, 3 =D1=81=D0=B5=D0=BD=D1=82. 2018 =D0=B3. =D0=B2 3:59, <kurt@s=
eifried.org>:

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

--000000000000575c0705750892e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept=C2=A0=C2=A0<br><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">=D0=BF=D0=BD, 3 =D1=81=D0=B5=D0=BD=D1=82. 2018 =D0=B3. =D0=B2=
 3:59, &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt;:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent f=
rom CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferre=
r" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the MI=
TRE CVE Terms of Use (assuming you filled out the CVE form and want one, we=
 can&#39;t use the data until you accept the MITRE CVE Terms of Use). <br>
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
</blockquote></div></div>

--000000000000575c0705750892e2--
