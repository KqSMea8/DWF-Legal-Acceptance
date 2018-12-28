Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp848083uaa;
        Thu, 6 Apr 2017 13:16:57 -0700 (PDT)
X-Received: by 10.36.91.76 with SMTP id g73mr29497484itb.75.1491509817694;
        Thu, 06 Apr 2017 13:16:57 -0700 (PDT)
Return-Path: <binoy@valuementor.com>
Received: from mail-io0-x231.google.com (mail-io0-x231.google.com. [2607:f8b0:4001:c06::231])
        by mx.google.com with ESMTPS id o65si2912948ioi.217.2017.04.06.13.16.57
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:16:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of binoy@valuementor.com designates 2607:f8b0:4001:c06::231 as permitted sender) client-ip=2607:f8b0:4001:c06::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@valuementor-com.20150623.gappssmtp.com;
       spf=pass (google.com: domain of binoy@valuementor.com designates 2607:f8b0:4001:c06::231 as permitted sender) smtp.mailfrom=binoy@valuementor.com
Received: by mail-io0-x231.google.com with SMTP id z13so37673063iof.2
        for <kurt@seifried.org>; Thu, 06 Apr 2017 13:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=valuementor-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=YdGErZ8mR05ffvSqBNn82mgWOynCiJD8VZboCEWPP6o=;
        b=v9LaS9HF7U2vk46Yv/EMKe1Eb+ss5996Nz8moWvnrQE1ww+RLPjTWVr+EtViUVHb2/
         nfW3XuiWYZtjQ+fta3Q1e+QezTN0ky6tWxQwlmI4dqXpt0uT1jRCzzIqjVaWoo3xiok3
         LoI0GkBaXi9ffuT2uNjJkiMNw2fuj3UUJgwEE0ACF+of1IdCzDpk+oaycSzoLNRYH7B0
         GiN25lmmvyBiX1Jt/BkP2q9urQmGYo2JhpKsVQRL8EPq3UPHCHyO3ABYTP8jK2ONK75L
         ag5WdZeggUi906jdxELpL64Od2OwHzcf9iJtZlAaossjfNf4q+BOR+6T+DBLvRiCi4sw
         Gd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=YdGErZ8mR05ffvSqBNn82mgWOynCiJD8VZboCEWPP6o=;
        b=V44Bah8RmlLduPTzXo01zEMIWq7m4YgMOXxy7F7t6PgyV3Vxlf9ZJWsBG0lAHH7ilu
         U5LYXAVNVt6JVbfOmnm1ko8eW3idmA5pKZsDVxreXebuy3O3Z1agzyqALc6+u7e6mYa2
         DqH4jGh3AFfj6O7OjN/LfFIe0+u6qSesl+NRaJGhoQllNYB3iuyEGrVS3bPPuF4vBgZc
         7wnIlXv1ByYCYZ6qblrVK/W7u4Mefwl52qP/tBIjUVNxR+5PRj4Lr/ZpUHjDbKn5Mgmq
         Buzo7pSjoNJEA36CH6vn/suq6HM3gumh8FU6LkD/sGjpB4h/yihX3qYUcOxx+ibnp9sh
         f6pA==
X-Gm-Message-State: AFeK/H2xweNrdmyMIksAaD0AKtIXFgIL2zVgq2uuT6TZE4qMODHLBKNPV/1rCZJaGRR0Bb77eaOzhRDICL6GqA==
X-Received: by 10.107.173.22 with SMTP id w22mr34880212ioe.119.1491509817053;
 Thu, 06 Apr 2017 13:16:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.31.11 with HTTP; Thu, 6 Apr 2017 13:16:56 -0700 (PDT)
Received: by 10.107.31.11 with HTTP; Thu, 6 Apr 2017 13:16:56 -0700 (PDT)
In-Reply-To: <20170406200029.4090.8702@shiny-2.local>
References: <20170406200029.4090.8702@shiny-2.local>
From: Binoy Koonammavu <binoy@valuementor.com>
Date: Fri, 7 Apr 2017 00:16:56 +0400
Message-ID: <CAM9a6zOa=Y0AsPwACjQ2nbPEiD+WEs=oJUA6M3Eygz9x4KsvJw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for binoy@valuementor.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a114484a4d3432d054c853008

--001a114484a4d3432d054c853008
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

Best regards;
Binoy

Sent from mobile; pls excuse typos

On Apr 7, 2017 12:00 AM, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
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

--001a114484a4d3432d054c853008
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept=C2=A0<br><br><div data-smartmail=3D"gmail_signat=
ure">Best regards;<br>Binoy<br><br>Sent from mobile; pls excuse typos</div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Apr 7, 2=
017 12:00 AM,  &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</=
a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This i=
s a confirmation email sent from CVE request form at <a href=3D"https://iwa=
ntacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a=
> asking you to accept the MITRE CVE Terms of Use (assuming you filled out =
the CVE form and want one, we can&#39;t use the data until you accept the M=
ITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/=
DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a><br>
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

--001a114484a4d3432d054c853008--
