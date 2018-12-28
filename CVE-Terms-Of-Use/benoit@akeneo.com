Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp140418uaa;
        Fri, 7 Apr 2017 00:25:49 -0700 (PDT)
X-Received: by 10.28.170.212 with SMTP id t203mr27893458wme.4.1491549949058;
        Fri, 07 Apr 2017 00:25:49 -0700 (PDT)
Return-Path: <benoit@akeneo.com>
Received: from mail-wr0-x235.google.com (mail-wr0-x235.google.com. [2a00:1450:400c:c0c::235])
        by mx.google.com with ESMTPS id g142si17582139wmd.60.2017.04.07.00.25.48
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Apr 2017 00:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of benoit@akeneo.com designates 2a00:1450:400c:c0c::235 as permitted sender) client-ip=2a00:1450:400c:c0c::235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@akeneo.com;
       spf=pass (google.com: domain of benoit@akeneo.com designates 2a00:1450:400c:c0c::235 as permitted sender) smtp.mailfrom=benoit@akeneo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=akeneo.com
Received: by mail-wr0-x235.google.com with SMTP id o21so66006936wrb.2
        for <kurt@seifried.org>; Fri, 07 Apr 2017 00:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=akeneo.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=13gktJkQPkKY5mH1uAA2RQ20AFyAumx5cTn292G4+/I=;
        b=VPGTzA7KLv8nGc4xZwiZ+dKUR/2Mf21k0SRu+KqimfwJUFGiAyKm6mL5VON1Gkk2s9
         e7aeZ7HDODVYz82Cgqqqa9b2zwUlgJS+MRYg+ISxwzxLmV5GPAtdOzHwumFrUE53enO9
         aoRutccY0jSmhWA1M7QQHzxXOZRQmBb/9Z8BI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=13gktJkQPkKY5mH1uAA2RQ20AFyAumx5cTn292G4+/I=;
        b=AEqtJuOUsUgbdUfr1NO8PLSPuNc3IRRoHhi5wPta2VfSkJCcS6CbGoajmOPvyXqDTA
         MJmMjTwpPRZMDnNjO5B1nYHfAf2zmvZ8NQ8dgARMSaQc9/VhsD1Gz63TyfABL8wDSxrU
         cEne48IZDa+xTZ3T4W7QTWrFoX2oyVY1dYv4QZs28R3YzrT5CBu4m+A2dt9Y03EenEKx
         ZC8USMVo09IgiezMbxn68moU77DVCnFGw5RHJVONz1NZ/a1gkVR6AAUoX/jQ42Q1REJD
         7A2i9CRrYlt2/UrpfycSRS2GvQ/m+4n8QIs9Rvjvub63F9o4I7JnTx4D83jwmg9vgvRt
         z1ZQ==
X-Gm-Message-State: AFeK/H2pS2wC/dozp/RAbMsWRisQGETp6S/NXjf1lrVMka/trmQfeJSWAJOT08H2wHAiUTZsB44PaB0+mGpFdw==
X-Received: by 10.28.46.213 with SMTP id u204mr26661333wmu.136.1491549948285;
 Fri, 07 Apr 2017 00:25:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.227.213 with HTTP; Fri, 7 Apr 2017 00:25:27 -0700 (PDT)
In-Reply-To: <20170406201547.4090.85097@shiny-2.local>
References: <20170406201547.4090.85097@shiny-2.local>
From: Benoit Jacquemont <benoit@akeneo.com>
Date: Fri, 7 Apr 2017 09:25:27 +0200
Message-ID: <CAM=7DcVoBkffcDH1m-qjma9oZb44O90Qex01hsQfRPVpRRF-HA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for benoit@akeneo.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a11497aced52c0c054c8e880b

--001a11497aced52c0c054c8e880b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

Apr 6, 2017 at 10:15 PM, <kurt@seifried.org> wrote:

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

--001a11497aced52c0c054c8e880b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div class=3D"gmail_extra"><br>Apr 6, 2017 at 10:1=
5 PM,  <span dir=3D"ltr">&lt;<a target=3D"_blank" href=3D"mailto:kurt@seifr=
ied.org">kurt@seifried.org</a>&gt;</span> wrote:<br><div class=3D"gmail_quo=
te"><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb=
(204,204,204);padding-left:1ex" class=3D"gmail_quote">This is a confirmatio=
n email sent from CVE request form at <a target=3D"_blank" rel=3D"noreferre=
r" href=3D"https://iwantacve.org/">https://iwantacve.org/</a> asking you to=
 accept the MITRE CVE Terms of Use (assuming you filled out the CVE form an=
d want one, we can&#39;t use the data until you accept the MITRE CVE Terms =
of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a target=3D"_blank" rel=3D"noreferrer" =
href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/t=
ree/master/Terms-Of-Use">https://github.com/<wbr>distributedweaknessfiling/=
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
A copy is available at <a target=3D"_blank" rel=3D"noreferrer" href=3D"http=
s://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUs=
e.md">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div>

--001a11497aced52c0c054c8e880b--
