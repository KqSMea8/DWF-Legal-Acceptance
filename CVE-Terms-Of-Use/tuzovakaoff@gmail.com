Delivered-To: kurt@seifried.org
Received: by 2002:a4f:65c4:0:0:0:0:0 with SMTP id z187-v6csp1335761ivb;
        Wed, 20 Jun 2018 15:40:34 -0700 (PDT)
X-Received: by 2002:a9d:2339:: with SMTP id j54-v6mr14799332otb.235.1529534434076;
        Wed, 20 Jun 2018 15:40:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1529534434; cv=none;
        d=google.com; s=arc-20160816;
        b=kFDcKbzutkPrU/1m/FOXWwvUk5/pHsZKQW9yjVrOGP5qIOQIksmYEv/+SVMNZWTZtk
         /Pg1nNmT6kyFXYNEvJxGZe5qrgnIOdMOeu7jyfaoN69Xh6KHioKiIgsqZ8U/WEForZo9
         lsHC33G71kRgTY/s/HF1NHWlwIAcHsgDVjrYvd6YHSDlpnUYw1oChGoW8v73Ts3axyRj
         DcZRh8OgOdPwseABZqDLIvD9k3kAJO0QVWi9r8OIseV6iskj+dBNjEskCItzGEmlFnAy
         zTsZi6e6zb0WVJ+3XO90TmRBlnqPYwv+2NARGixshqshL0SHCbcHREqrBOJhb/aSd5Dc
         gM9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature:arc-authentication-results;
        bh=CdtAhD56L+1IosL7SAe5CNh/8vbtWj79U3l5Zl/BByc=;
        b=GLkkjI+m0bcn7HD5ZI4l/rWekoX3ENziomPMLo7JqhHtiuD78HSY6xQ/ClAY4KyAX1
         v2Cd4NZon9AiaFLeuwJLmiail9wmWVzd8M/DXXSX3hvP1YK9aZ0jh4TDd23JfcQf3yCZ
         NbGv63TqxyoY4QN/ILtV1f3yvo55OcnSiE8Az59Jg+kVf1v/mXbso2pB0G/LchaXBkhi
         t5c1Q3P7/vyYuWCCwTZdS42f07OTOBNBMSWM8c4qZxtkWcvOEnJ9ESGZ6yKWkdBPKnhz
         4cVNo9SsLzi27RLJmOhLt+KHhDgnaRUA1Q07Tm1FeYfudkUTbhLmVHt2m0sPsE8Blq1q
         58wg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TydhtBgh;
       spf=pass (google.com: domain of tuzovakaoff@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tuzovakaoff@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tuzovakaoff@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id i1-v6sor1258314oiy.283.2018.06.20.15.40.34
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 20 Jun 2018 15:40:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of tuzovakaoff@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TydhtBgh;
       spf=pass (google.com: domain of tuzovakaoff@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tuzovakaoff@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=CdtAhD56L+1IosL7SAe5CNh/8vbtWj79U3l5Zl/BByc=;
        b=TydhtBghi4HKRdLcs5w0d46jPBiVIyfQHOXAjWoqTJgsIgktRWd5INFA5Opm6hbUkT
         EeTOHX4vG+FZuj5N+/uTjOEr46hDeg1l6atxCadVI6a5xbrMtde/vjjT39aMz6d0MULx
         ailtucO7eBgFRpew05Ui6Opas8ZRLkwLx5tJLAj7PX37whW7Y53qkE7KKoaS8yMtXwyS
         dnBXBH9Y+2d5/v5ZsGzpRrUT2TnftzXyZyIOKmCyMkxceauEUCOw21DG2K+fBbbjX9Nq
         bOuMsTQp97SJRUq7uJQGAjkIcKHlfQuCoiGiObnN/xyKA0wvRRjX/GUxolY+AK6xYn4o
         5g+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=CdtAhD56L+1IosL7SAe5CNh/8vbtWj79U3l5Zl/BByc=;
        b=VMP6mRihW1vSGhXlhTqAu4bqY47pCXQLoU4AZTkQmH0+H+kQjTAFOGWU9gGSmpPtSg
         bid+LTxBG7jKlRMG9PfcR2k6efXYKGhF+rmm3urpkpJOL57qiN6sZZB78sz2t+rLe2oj
         WxiCoGP22CNjoL553TEPN32F0EpUuuM7W2uoFW8lf+2iVJOEptE5+8u0VD+/xfFW5+WB
         DRgJA+BmPMm+oB9zbcFSqhOAQY7bt4CeAQczYLYvg9ugIMaSsZk2v0feQJ9QlRLD8l58
         cG7LRxSxBYn77KdhpUM9sqaaQFA+eOQYmZHwMcSN5pGoM0fYSnMlkB1rRc2sFaRROGiQ
         oPTg==
X-Gm-Message-State: APt69E0BL2FJ1Zmz+x/rlbx4CqVheIQ9MRz4BdOrwwHYG+3lnULNh2w/
	dJYUky5hMNsEPB7dgzwUHdf4BfoXnDMhD12TtFjBnO1I
X-Google-Smtp-Source: ADUXVKJV2HzIR7KbF9l8AipifrGlXXGdDbBNC+Cght5wrYstnNOgN4eDM/4hGZ2NrYl57aKmGIo+KyvLakb+afDDhMY=
X-Received: by 2002:aca:dfc1:: with SMTP id w184-v6mr13597179oig.237.1529534433633;
 Wed, 20 Jun 2018 15:40:33 -0700 (PDT)
MIME-Version: 1.0
References: <20180620194611.10662.30473@shiny-2.local>
In-Reply-To: <20180620194611.10662.30473@shiny-2.local>
Reply-To: Tuz_OFF@bk.ru
From: =?UTF-8?B?0JLQsNC00LjQvCDQotGD0LfQvtCy?= <tuzovakaoff@gmail.com>
Date: Thu, 21 Jun 2018 01:40:22 +0300
Message-ID: <CADq9DjHhyiKDsWQ2HNP0TOMij=s285_UY6AnZiiPPcBwa0dAng@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for tuzovakaoff@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="00000000000096aa31056f1a7cdd"

--00000000000096aa31056f1a7cdd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

=D1=81=D1=80, 20 =D0=B8=D1=8E=D0=BD. 2018 =D0=B3. =D0=B2 22:46, <kurt@seifr=
ied.org>:

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

--00000000000096aa31056f1a7cdd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(0,0,0)">I accept</span><br><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr">=D1=81=D1=80, 20 =D0=B8=D1=8E=D0=
=BD. 2018 =D0=B3. =D0=B2 22:46, &lt;<a href=3D"mailto:kurt@seifried.org">ku=
rt@seifried.org</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex">This is a confirmation=
 email sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=
=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to =
accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and=
 want one, we can&#39;t use the data until you accept the MITRE CVE Terms o=
f Use). <br>
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
</blockquote></div><br clear=3D"all"><div><br></div></div>

--00000000000096aa31056f1a7cdd--
