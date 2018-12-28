Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp2073934uag;
        Tue, 23 May 2017 11:51:48 -0700 (PDT)
X-Received: by 10.202.240.66 with SMTP id o63mr14937860oih.169.1495565508927;
        Tue, 23 May 2017 11:51:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1495565508; cv=none;
        d=google.com; s=arc-20160816;
        b=Vzz9pHDPVXWn1xfVH9gynAB82e+Njwben8YZqHDcetUJOe60HvxFMiXukNvY5W2kUl
         txzgicdCDgoiPcBcR+22DG9RqxBqsCg6jdSkrjW2IdTRWLFSvfLZb0ro7DbTMKob/7g+
         aGrwncYMtrXaKLDczWE27OLKUUKztaZhG7AuZAe+bbfkruT8nwLX1nlD1Na1gp+haXyD
         e/8g/EdegyDZArqofIpdcBZYdbwcHBcU6cIghinos21vm5tl72ztfrC4w7eJR+bX0UkQ
         P2etWYLhL84+DIgnrK1HN+AGmogqxYNE77v+XTW+2LWhP0+Lhod5vXK9FY2YO59fM1Xt
         wsxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=/L6xsXTxQj/Ondm36kAd8GdhvHy/g+/od+0kVT/fAh8=;
        b=BEl+SL2jBEwxyaYdv+QBcHxXxTmt9mVjoHHg3+HU/Y0XbTljZVRo9KcaylHYuDFQ1G
         DMHm0lX4a+YOE+1/ZRT96+YWItgUgfZ0atkVLdU5HrugtQjcNU0+Hml578F4VKzfLr4N
         jPrjcBnIOhDc2qydXEIM7OokdEv8RH5i2QP2wL/T8zq97MapSvaGVgjaphUFNgWNAb6x
         0lL72lwI0q9Z2u5Z2BQIGizQSQTwZkHUd92anmb2wtJxu/U0SJw/jGAReraSvJ3G3Zoh
         sqjcJHs1yKowdnT8bTCZd+egJB8hL4thoS2DbYrynqlM4aG4YAlmoZqvwVACfB7elRjZ
         ee9A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of predrag.gruevski@gmail.com designates 2607:f8b0:4003:c06::22b as permitted sender) smtp.mailfrom=predrag.gruevski@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <predrag.gruevski@gmail.com>
Received: from mail-oi0-x22b.google.com (mail-oi0-x22b.google.com. [2607:f8b0:4003:c06::22b])
        by mx.google.com with ESMTPS id t188si9167206oie.211.2017.05.23.11.51.48
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 May 2017 11:51:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of predrag.gruevski@gmail.com designates 2607:f8b0:4003:c06::22b as permitted sender) client-ip=2607:f8b0:4003:c06::22b;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of predrag.gruevski@gmail.com designates 2607:f8b0:4003:c06::22b as permitted sender) smtp.mailfrom=predrag.gruevski@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22b.google.com with SMTP id b204so213636097oii.1
        for <kurt@seifried.org>; Tue, 23 May 2017 11:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=/L6xsXTxQj/Ondm36kAd8GdhvHy/g+/od+0kVT/fAh8=;
        b=vZx9Rl4+KZUbRg0lJNEhUCKY6iRzTwYmeaKUeWYF3atpsBUqPUjpVy7Iof6uauk/Z7
         CVGxGTokh3+hgH05xmY3dNrlxI8I/YJ9G/Xj9zRy5qOGAMgQQVVjcKRH9gIrI6Ul+Hv5
         8u5iQ2D6DOGB9ibZuNBidVpgAJQuqc5hYVnFzPCf4C1LR6wChRpgbrDEiuNLBhRKkt1A
         MJ9npU3bdMiTzDi9/THCuwdpjwfEUnoaydsO1mSJT3KjwrmKC2R/NFt1Lf40xKkAc9cX
         yrHpoyPdVqMeogxmib/FpEg4kpC+1yYPyeqGSOBvCyTwOfEywJwMc8/8fFHgoiYN3QjW
         Z7WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=/L6xsXTxQj/Ondm36kAd8GdhvHy/g+/od+0kVT/fAh8=;
        b=WgDfzBw7v7DVoP6YCnoVFCZ0pBPIJ86tET38xqr7GVwJS4BOdL3bAxx3tNYatGIBIt
         lylC5FfMN4mXnpLRF1AMHQwd3IL7dJHXID0X7+4zca2q6J7cA2DNKmg3ox+17g5giXky
         UBplRvvEEF1IkCaUGH0oZPGUADnwf8MMtv8R5+Bcp0kJreIf9MIms+TzJQi2trJAfoP1
         cV2MEPPUN5DlJbOF3GLx25hSb3HjOxZRT5pwFnEBUQVP9lvRrNxiPHzWXf1JdcgDjCnb
         fU8qwA362OU9ipHeNHbE6Nb16bo2n9Z2iLdrau4uZ7OavfQG1Wm4hh5CUmEuMVfs6fDo
         cszg==
X-Gm-Message-State: AODbwcCXuFkRj1xISSOWlTeaBRFjBEa4TCvLLaOI1FJy/eb9GqdQghdr
	ayZs3GeFLFNJ7qO00B9wqkTeCh2RwuSl
X-Received: by 10.202.108.132 with SMTP id h126mr14577406oic.181.1495565508437;
 Tue, 23 May 2017 11:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <20170523182509.18393.79510@bigbox.local>
In-Reply-To: <20170523182509.18393.79510@bigbox.local>
From: Predrag Gruevski <predrag.gruevski@gmail.com>
Date: Tue, 23 May 2017 18:51:37 +0000
Message-ID: <CA+sC9F+T4jT6moyuTtHan=feRd6g7exQ8zSEOTgE7Bq_dx8hrA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for predrag.gruevski@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a1142e6eede6b830550357a4c"

--001a1142e6eede6b830550357a4c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

Predrag

On Tue, May 23, 2017 at 2:25 PM <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
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

--001a1142e6eede6b830550357a4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div><br></div><div>Predrag<br><br><div class=3D"g=
mail_quote"><div dir=3D"ltr">On Tue, May 23, 2017 at 2:25 PM &lt;<a href=3D=
"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">This is a confirmation email sent from CVE request=
 form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_b=
lank">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms o=
f Use (assuming you filled out the CVE form and want one, we can&#39;t use =
the data until you accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/tree/master/Terms-Of-Use</a><br>
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
</blockquote></div></div></div>

--001a1142e6eede6b830550357a4c--
