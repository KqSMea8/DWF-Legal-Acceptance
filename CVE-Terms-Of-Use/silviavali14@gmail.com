Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp8562453ivb;
        Wed, 27 Dec 2017 22:47:38 -0800 (PST)
X-Received: by 10.36.69.101 with SMTP id y98mr33368758ita.35.1514443658156;
        Wed, 27 Dec 2017 22:47:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1514443658; cv=none;
        d=google.com; s=arc-20160816;
        b=01LeanW4hSEeyTEIxzFbdiJxxYrXdKHBTCPT8EIFmsXzaViZI04WVezzf5oYpyLxXy
         pMtS7XKbGguaBCPbBnUFANQhlMiFyVcjaW1hjLrNTL9DQbBGHLsnaOvow7PAmSlUuMRD
         5umhSM7kqoYxS+4TbrKMxdjiCcLZCuNxjiTb9pjyz7xMe82EQP3Bq0/Nidk687IVkthI
         IA53aslqNsPXzFfEo9/N/pkqz7vllT8/reGqyOwUjb4SGQ5/ZQMfUNkpzSckaCWXsuaS
         8uBl10W/MWfq6gTMyZ5NLNMRYQ3Ry93/JLVun0yzRZD1D1PZbYwsh+nBW59pPUqfgrNq
         1DYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=W6nmRQtJM/zUlt/OKXYgD2PXP7op9iVArRo74yo3I6k=;
        b=Kog9+cFM4epESW5ISbtE5A27Flqsjd2kY4I4U1FVYXlTP99gBglFSlfmJErnt6yGSy
         zhtybGFgnzlmNUXlb0xPOQTHP2Id6oadQTsbSMDj9M1DdnzmY0KVfNF1ms+P452/OS/3
         Xjj3MkO1CoXDwgKNRZHG37dlpsCpBtdQuQYTZXHAZNTpic70uW/jlNAPcJdm1zOeVUhN
         9HGoSAMtznNJ69Xl5Q0RJez8F/abmb0wijc1XURGL55qznAV03KKL5x2qbQBtFZSA5eH
         uyDec6KTFTP+32MF0hXBWK1x3ypksj2dHBS5Y3BUXqUpR5X9OVc8oUIQhzhExrkXSdrQ
         a7SQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sjsD6Kyb;
       spf=pass (google.com: domain of silviavali14@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=silviavali14@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <silviavali14@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id u28sor9199065ite.11.2017.12.27.22.47.38
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 27 Dec 2017 22:47:38 -0800 (PST)
Received-SPF: pass (google.com: domain of silviavali14@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sjsD6Kyb;
       spf=pass (google.com: domain of silviavali14@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=silviavali14@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=W6nmRQtJM/zUlt/OKXYgD2PXP7op9iVArRo74yo3I6k=;
        b=sjsD6KybqiusPepZeNBRhM0ge6MO8QzaxQv6kFhuBtOVC1QJnrCIdJh1eNOV2DqMaf
         EAucATl1bFDA8bWMnyhbePYI5CprPFq0nWH4MP0Rgt+XGbJVMg0pcoZ33vgD2ug438UA
         YJR0Fy6Z/o3UojNAOYOvfCN7ycOb7SanF+Ypbu6VJdZP/3frzJ2YEAsq0XaKCPZPIeeA
         aA6tEaKr7KRF+ImV+VV0tRxKIvPK0CAgljts2bE50xNOZqTAOupWvBF3cEc63POCcTBx
         lg3aqafcImJ+PnIG2fV+sG4dGVxTBZ4/QBS2oeVzZzuSKqsHlY1f6CW44IGA42foMPRB
         co8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=W6nmRQtJM/zUlt/OKXYgD2PXP7op9iVArRo74yo3I6k=;
        b=H6RLg4t0pg5VT7PIjTKfnYdLezaOChK4ZE7GuqXvbg3pmXKKlSdQpGHub1ARdSV5IV
         oLVIS28p+tTHTX5/AJ8KH9j9y3KNSRGdlT2KYW/uvoZ67z/GTdVvC5vrHhQdfuOetu/q
         Fq6alQDnW0B2Ov3OLx9M3Dol+srfJKVb1ZQ0SO3+ZIGbMshBT0ckDdHcX93GKV50EX9Q
         fwZAzsnivs7TSq7Td0t6bk4/qd5PF/lf9k7nNH1bBDnFNeg+st/rrQyn1SqfiYiDdQUD
         +BFI0D7TsBSn2jUYnJWQle5Yw913q4xAaBLAiTVoJY49SgnsrscoTP2YMmR86/gmQuJG
         4L/g==
X-Gm-Message-State: AKGB3mLIrQ0AQ12Vs7JC9MUthITIu93eK1W3uYpxgL6lAE4PnLd0emZQ
	lZyZlii3E3v4PMiZ7wLDgfJ8I6Vp4fujE/wf6Emcsg==
X-Google-Smtp-Source: ACJfBotjvB5xsJUtiNZ3lFA8hNkEB7fBLHoB+SAJ7L2GJHHFAa4SmQtIznwuLkiw3IRsvt20MyLEZ6ZedsNy0Aa4ptI=
X-Received: by 10.36.98.14 with SMTP id d14mr39809841itc.110.1514443657673;
 Wed, 27 Dec 2017 22:47:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.25.70 with HTTP; Wed, 27 Dec 2017 22:47:37 -0800 (PST)
In-Reply-To: <20171227193527.3645.57239@slab.local>
References: <20171227193527.3645.57239@slab.local>
From: =?UTF-8?B?U2lsdmlhIFbDpGxp?= <silviavali14@gmail.com>
Date: Thu, 28 Dec 2017 08:47:37 +0200
Message-ID: <CADGwTQJbxfyJj4Z0JggmZUBxbT-VAYxs1r_1Pn+Kk0e2azynRg@mail.gmail.com>
Subject: Fwd: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for silviavali14@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a113f64763f8dee056160e460"

--001a113f64763f8dee056160e460
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On 27 December 2017 at 21:35, <kurt@seifried.org> wrote:

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

--001a113f64763f8dee056160e460
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On 27 December 2017 at 21:35,  <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent f=
rom CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferre=
r" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the MI=
TRE CVE Terms of Use (assuming you filled out the CVE form and want one, we=
 can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
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

--001a113f64763f8dee056160e460--
