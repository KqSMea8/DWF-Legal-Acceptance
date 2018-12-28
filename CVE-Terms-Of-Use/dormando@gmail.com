Delivered-To: kurt@seifried.org
Received: by 10.79.205.134 with SMTP id g6csp533798ivm;
        Thu, 8 Mar 2018 21:39:42 -0800 (PST)
X-Received: by 10.31.55.203 with SMTP id e194mr20818090vka.160.1520573982911;
        Thu, 08 Mar 2018 21:39:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520573982; cv=none;
        d=google.com; s=arc-20160816;
        b=OQgc7/SJxuq7CE1wXOw5NfsnYFDM7NL5DPV0eDQtS+oLtsATs2mpPw/WWnyOoV/HCg
         mLR+W3YDqfbRYcZxJtc403rkJ6kBRpD8JbVQkfeixgP/3OXDekLOZ4OH8bTKz/jJ6E/D
         HXbCfTE3hJzw0gIVwXCyb4FKwp/M5rQnAIw9H0VfNfLD65edorUuN/M1PPPCeV5/3XS5
         8/iMjFJOQBIDF8uhb77REnmd+qFoZUcTJQ4ar0FMzZpevWwF5EYnhZAjkjp+9D7b/dNi
         DFxn0gIVodNkphHaRi0fC7uDh0d8X0L2u4dAMF8sybK61lQ8ZPXdiW8Hyav9HQ3Y7UOx
         fLJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=oUIQEI6OGd2IRKBgZ5Exp+D+ERA/2GTANw2PsOOKyvo=;
        b=0EEKC1zyLReMt5JcbDQWaZ1SoxL9UcCDljm+oPuxILzV5M5bHMhaCkaFiaJOGPG2VX
         BF70avvbTzzBwR0nqSZs3iDT4PcEbcxLmpCENzogREClNybChi+qSBSvG6v42XHzmob4
         024S17c1Hz5aYPJpToS0R0nMxs3NiTc7azUVcb9F3xYmzQ+qamvFpb6oG7tJ0ZOXMMis
         /2FqiyzFyGf5UOyootuYfucDjJ//gZzgfi+1+nV/IyJYxJqL02zJT166X8Kih0ATpFVq
         GN8fNXQ280wpRhD3Pxzo/q5z4/CsgSgKyFpR+1x3xSe2PN9tEYnHEpUD/lxQtOuPs0To
         fhpw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HedAHtMK;
       spf=pass (google.com: domain of dormando@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=dormando@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dormando@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a188sor98997vkc.105.2018.03.08.21.39.42
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 08 Mar 2018 21:39:42 -0800 (PST)
Received-SPF: pass (google.com: domain of dormando@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HedAHtMK;
       spf=pass (google.com: domain of dormando@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=dormando@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=oUIQEI6OGd2IRKBgZ5Exp+D+ERA/2GTANw2PsOOKyvo=;
        b=HedAHtMKhgp/swhKBRQQ7fyOPMMdXl1/s7F9y/ggH9zO3YQ0sSVDhgctYG0/Hw6MpM
         PRpGpj6IOwH5r5dDx01nL+uGsWrOm5cHO8iHvfLQccQDw7d7GuED5uWP0u+CmCkVkMVM
         2t45s71W7536Cjws+/USMsQUntWhaDUbdi0KYjmilgZZBvS/P0VIT9CuRXHXngZXkA+y
         Nkeov309S+La2tSugwx+J6VyYjvGrQrxHcaGhGvMUNtE9H5ZkvoGe0X3e7g6VFMclkIy
         D40hBmBAYCCzwq52T4O3e/9R9UULIKSj1Bs/caRMFm3G4WigCkiMKAVKhQfCo4Rj2XgY
         EG9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=oUIQEI6OGd2IRKBgZ5Exp+D+ERA/2GTANw2PsOOKyvo=;
        b=Rg/o7v6BM5jvs0dO1ArhkhnLZsXUYMuXSkZADXmXgciEgbeqFzmCN40KF82ayyCyLb
         11d/93SGSesqb9lbUTo756hSxvjKgNOOIEuplWTuvpaN21TnC1QPldJFoyhOPOZ33ulR
         /H0Cg4PHXXoglLEOMsw1Sz3GNKUJ6C6H7BOcauCJVyAcv43KJSQluh81mJyieY8zmSKC
         B1aw8vVRaWQ1g8/rQvnBYxAsDAXUL6VhCE1JR033/AEh4atUHHThYuTgYkE31NVAS/Mm
         OS+OV+4br5JK/G1vpCNeRNKiniTMcWzz6vqkN+nxHydXt+oroNFF6Shcgm1XxjMPh8QU
         PGyQ==
X-Gm-Message-State: APf1xPA0wE1XT/ZVMiNlYqWKyXFgyYDkO+FK6UnTiY9dopcr9EUKKvkw
	inVhwRd/yy9AOHlS2n4fOK3IrupfLuHoBz+qMz8=
X-Google-Smtp-Source: AG47ELsjeC/GHJbbdaolAMM3QyKQnOl232HUDWv2BPgUEvmJSN+KpH6VAhcVTTepImiPgD3Kq5XyuRGymDrSWQGt8VM=
X-Received: by 10.31.206.198 with SMTP id e189mr20772276vkg.164.1520573982367;
 Thu, 08 Mar 2018 21:39:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.51.11 with HTTP; Thu, 8 Mar 2018 21:39:41 -0800 (PST)
In-Reply-To: <20180308212423.3165.83682@slab.local>
References: <20180308212423.3165.83682@slab.local>
From: dormando <dormando@gmail.com>
Date: Thu, 8 Mar 2018 21:39:41 -0800
Message-ID: <CAEB2nhUe5a0=qg257SnkkZL85hCDXqPGm1hQaXguT7DPLsnvBw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for dormando@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114e5a4412e5f10566f43855"

--001a114e5a4412e5f10566f43855
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Mar 8, 2018 at 1:24 PM, <kurt@seifried.org> wrote:

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

--001a114e5a4412e5f10566f43855
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Thu, Mar 8, 2018 at 1:24 PM,  <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent=
 from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"norefer=
rer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the =
MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, =
we can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div>

--001a114e5a4412e5f10566f43855--
