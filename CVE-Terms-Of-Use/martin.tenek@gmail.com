Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp2111192uag;
        Tue, 23 May 2017 13:37:51 -0700 (PDT)
X-Received: by 10.84.140.5 with SMTP id 5mr38871423pls.113.1495571871482;
        Tue, 23 May 2017 13:37:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1495571871; cv=none;
        d=google.com; s=arc-20160816;
        b=Zg21ij1iRUDyvBwliLsp0bgC1RujX0HGsPnJjpX3sIdK+0Xeq0X9HwWhaFtmn+rLHt
         8/T/q770X9BvVPkF/qFPcRtrrRInOGXznEBobU0NeJy4Y4vLUCraU8ZGguEBJJWhPX4Z
         KHhyX7O1o/oCwCvbjOLQ3lX/vX9i+NhJ4KCV2QASo2Vv3Noo+StzhOOIozp0AAwz9s48
         Hr/Onh+sDYRp/tCuLmGGbMCItJS/k5mXswQweInAoYtuHjY+dzx+7lahHlh+pZkOi1QQ
         It6er44C8PUkStBpPMy+XdURHPY6fiBSC6JiYtNV1HljbsUZVRGyN0EwH2c38U+WNTfC
         eabQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=ZkWOiOqfCDfQwM2tjIFZjlZZ8y5+yKYv+p8ZaiTeZOY=;
        b=SWQIpAzzBMUvvZiR5p8ZEI65YIvgDP6U3XRi1uteXG8LNJUbT50y4Cb9SkboR87ue7
         8trzwmt0JyaCuTN3DM3QFYIjN20VYHsVmAgWp6s7hER2tbX4XreaoJk6xGprpLwgv+cO
         D/KycdiYR1ZPHSs7v3dygwimczgcDTVlO+r/rmbrj0+ZJv2Hu90IJQapeyfNOHeeqLOi
         4OyfUpMFO03wj6sO8U0RoPSd71HStcgOF0Byi0itfpQ9GCkOmgaEDO8nJ5ntHJqdN86K
         Yq8ZvTPqricxOvv9I/TKwv72KCtScflClVy+MlYib2TaV5jtMfVmG56k+G++IOMTENhj
         v0bw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of martin.tenek@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=martin.tenek@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <martin.tenek@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by mx.google.com with ESMTPS id l75si21997860pfj.122.2017.05.23.13.37.51
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 May 2017 13:37:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.tenek@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of martin.tenek@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=martin.tenek@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id e193so125321368pfh.0
        for <kurt@seifried.org>; Tue, 23 May 2017 13:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ZkWOiOqfCDfQwM2tjIFZjlZZ8y5+yKYv+p8ZaiTeZOY=;
        b=F8diz9lrkOr2gwlYVCL4be1BEpfkqnTdIuicaPyQvEjupcIw0bAIKMo/T48NTO4P9T
         +ye8gtn6D3rfXez33856yza83okxie87TVdXqLzwrROogySS0G+Eu/y3obzn+tJ57Zm/
         XZ3v/nPz/Gi+8wwrpsFTE+2cadCrObG1RQh8XEEiYn7Si36AelFyI4IHX5219F8Fc1Vc
         vbB50WXP5ocKHo+MtjRxDoDcLjQbUCb9oaQOebpMtx8tZwH7ppOkTvHiCcC6Na+qetDM
         lXmxjIGnooV+xz2aCFOxnFmYeDtwwKbJKhvMhNLq3Nu5HShw1WDKlsHvdFPsUBR+5xo4
         CY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ZkWOiOqfCDfQwM2tjIFZjlZZ8y5+yKYv+p8ZaiTeZOY=;
        b=qq+mWTHCp5ZC0WUPvdMio+9lzeayGkbM+1GajiFTY16TZV10NrNk4i45c8YAEuu/Cq
         r/XGjQGZ/IUaucmuD3B8ygFePLRtV0dLZfHG3Np0QmFR2wuvM3WE//zyRSgm7BSprzCM
         97QaascV+c8GbNYhHOUuoAuwW6D5X5RYagBCxCGZcbOCVMY+XNvNfzY4e7vao6M4KEKi
         pYRtPtx6Qr2KbZVsVK3uMMQW9sD95BxGzG7kSuekRs2rl0BhCuvDR92zHaA+SkjH1NrG
         ivx0S3s353u4t6q4z8ILPLY4PQuW3tPdgNBO2IIOHaau3rWmEsYWayvMOmp2go+WI4Yk
         IEKw==
X-Gm-Message-State: AODbwcCGr3iBOdz1W9QoBnXsZR8MssGeb/oL2HAH+JJWanDQJLKyTLV1
	+IHDrcxVXtMoR/qYlWoA3i5LBdu10SzwXNo=
X-Received: by 10.98.245.155 with SMTP id b27mr33823202pfm.181.1495571870966;
 Tue, 23 May 2017 13:37:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.180.140 with HTTP; Tue, 23 May 2017 13:37:50 -0700 (PDT)
In-Reply-To: <20170523182450.18393.40735@bigbox.local>
References: <20170523182450.18393.40735@bigbox.local>
From: Martin Tenekedzhiev <martin.tenek@gmail.com>
Date: Tue, 23 May 2017 22:37:50 +0200
Message-ID: <CACfAxsg_P96AT7NM6aMjbX5OcC2VpcAYHpbqNVi4ApEkgXPZcw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for martin.tenek@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a11475d6e1aeaf4055036f6e8"

--001a11475d6e1aeaf4055036f6e8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On 23 May 2017 at 20:24, <kurt@seifried.org> wrote:

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

--001a11475d6e1aeaf4055036f6e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">I accept</span><br></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 23 May 2017 at=
 20:24,  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=
=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">This is a confirmation email sent from CVE request form at <a hr=
ef=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://=
iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assumin=
g you filled out the CVE form and want one, we can&#39;t use the data until=
 you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div><br></div>

--001a11475d6e1aeaf4055036f6e8--
