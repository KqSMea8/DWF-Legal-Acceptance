Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp255418uaa;
        Fri, 7 Apr 2017 06:31:07 -0700 (PDT)
X-Received: by 10.202.245.149 with SMTP id t143mr21413766oih.149.1491571867109;
        Fri, 07 Apr 2017 06:31:07 -0700 (PDT)
Return-Path: <montel.florent@gmail.com>
Received: from mail-oi0-x22e.google.com (mail-oi0-x22e.google.com. [2607:f8b0:4003:c06::22e])
        by mx.google.com with ESMTPS id e4si263260oif.255.2017.04.07.06.31.07
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Apr 2017 06:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of montel.florent@gmail.com designates 2607:f8b0:4003:c06::22e as permitted sender) client-ip=2607:f8b0:4003:c06::22e;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of montel.florent@gmail.com designates 2607:f8b0:4003:c06::22e as permitted sender) smtp.mailfrom=montel.florent@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22e.google.com with SMTP id g204so12353407oib.1
        for <kurt@seifried.org>; Fri, 07 Apr 2017 06:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=sv4VQ/CeGkRYDoOyeO9D48hx0JkTPJfcP5OdRlr4ss4=;
        b=Nzvw3hrWMaUWjcIP2nl2woubK7GUKNazp+3UQeZV3zDUkNq659oz+o9aUUY5kjNhbk
         RE+BwJdbgoN3Dn0BEFz1I8Ov/wZo5UL4/5CEylIl5gV2EogEqBP90CAyTbjxzKqEScNj
         kONG0VQPIJdQISY8+SHYjjIwusQYDefwfNqqgUxtOyTOA/Q/3bBCnn4ssYR1WMqkKrWm
         PsxYj5kxCDCuq4tiNLgnzUc8iO8SN2eka08C18+uVV3mXUz+h4J333LAFYmnRaTgr78y
         /tg5VSDod0B7AWynPTSmjIPwnuO2ReQ+83b2ehnWiovuSfnJfabQO2eUOF9EOqcXPJbc
         BxCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=sv4VQ/CeGkRYDoOyeO9D48hx0JkTPJfcP5OdRlr4ss4=;
        b=ts5MvWlygPVH+K0UlloPdUd1rbKFyXmOxXyv3qNyja5ieieyCVcdRc3wNgH4PNcNh/
         8Umm8bO3vJvb3c4L29aHllmpfItnJSguRNuCtxsKrqR3MUrVkaV4Sn2BHdUTUNBYz3yq
         y9WoUVxCw9/OHSUdWLpbPnV3W90rCA0SMtDVUBSA8iH6hbVUdW0D/txVuDNiNmsl+fA6
         jgRXR011FUTIwbSAr9Aq/pH/9ma0BdXErdAhUSLLCKRXkZ9DVixbDlP7/kl+G98/2jFM
         WPpDy61F2wpMmtvELQ8Cx60dZg4chwVklccmYGkan18l+gzwJBKEe5nV7PqosSDKtey4
         0OlQ==
X-Gm-Message-State: AFeK/H3kihFv9gjRlUyIRS2lQ90gA2727vIUeuex0cU7suEj29LbeYIjdY3gOwUVsb6/V1qeJNg/qAZXVY1TYw==
X-Received: by 10.202.96.5 with SMTP id u5mr19287003oib.172.1491571866669;
 Fri, 07 Apr 2017 06:31:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.132.51 with HTTP; Fri, 7 Apr 2017 06:30:46 -0700 (PDT)
In-Reply-To: <20170406200404.4090.15259@shiny-2.local>
References: <20170406200404.4090.15259@shiny-2.local>
From: Florent Montel <montel.florent@gmail.com>
Date: Fri, 7 Apr 2017 15:30:46 +0200
Message-ID: <CAMp+sa-tNuF3MkYDP1J0SphVqeURYdhUMPyWsC_01bHvQ_q1mA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for montel.florent@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a113d520a451af6054c93a3e5

--001a113d520a451af6054c93a3e5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

"
2017-04-06 22:04 GMT+02:00 <kurt@seifried.org>:

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
> "

--001a113d520a451af6054c93a3e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I accept</div><br><div class=3D"gmail_extra">&quot;<b=
r><div class=3D"gmail_quote">2017-04-06 22:04 GMT+02:00  <span dir=3D"ltr">=
&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.or=
g</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation =
email sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=
=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to =
accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and=
 want one, we can&#39;t use the data until you accept the MITRE CVE Terms o=
f Use).<br>
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
</blockquote></div>&quot;</div></div>

--001a113d520a451af6054c93a3e5--
