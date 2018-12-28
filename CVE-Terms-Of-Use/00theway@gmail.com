Delivered-To: kurt@seifried.org
Received: by 10.79.17.3 with SMTP id 3csp785372ivr;
        Wed, 21 Feb 2018 07:11:40 -0800 (PST)
X-Received: by 10.157.33.120 with SMTP id l53mr2707346otd.399.1519225900153;
        Wed, 21 Feb 2018 07:11:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519225900; cv=none;
        d=google.com; s=arc-20160816;
        b=vc2BcVGQRu0vMCM5ygWRfOD4/WP0lNtMnW9XW0gm2jfKbzKLnoL1Ap1k7PRUvUwtEe
         L4eKBIsW0KcZ94EooLpmEd4QKypdO3PhbzerB8N9XMgDPqD8WhiZ3t2E0pAT4LIx6V8F
         VxvuZ6p6Aqzx9HuDQ6i2Y/+1qPINdXG+/egzHuEerj6u2cZAeS9kFVhY/oinb2DgGxUI
         Tph4NbBXNAdixc8NolEhU3OtaHIVZVWFf84Wn57J+thFmj4BsX0WEikFxTAdZzbqjGGX
         fYbwTDR4AsHtC1tVT+eQJTEkKA/VhscGG3JPusWjjjzI25GKdtnNNelW3g1vJkhGyVwR
         KWuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=q2g5vsbkyRraNA1zBRj8arqxQwLdKY+0RSuiITvtBDI=;
        b=LIT6QMRXvw06ngVBBNbaDjGXi9Rvp6mkBv9dwn3gkvsa2zN3QfSE0lPUHL0qSfZpVN
         jvN4Tr3DMRy3vhC9qdRkztAx8t22yc6DkTOb6bbtSrzFVCBMsHLY6/jUt+iCYG5Cdtng
         NEb/xg8n6ytYl9rbfRqCa0YSgENE9vVee8o1i8mG0a2qBJotjjuE5e6wJYfgNQ7GNofo
         oHn9b/sPI/5ETho1yVFFS3NLDEBIPE1h1bIgWYrl8UkTe3wfmE9OfYE2V8R44LRLjeQT
         SftzWlIJlnTxQ60B/q0j7DpeG2y+PglYkXK+rdtOMra+lp+L7Vs5CMF9o0OX1gmnway7
         QgeA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZTmyhF7k;
       spf=pass (google.com: domain of 00theway@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=00theway@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <00theway@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t45sor340717oti.316.2018.02.21.07.11.39
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 21 Feb 2018 07:11:40 -0800 (PST)
Received-SPF: pass (google.com: domain of 00theway@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZTmyhF7k;
       spf=pass (google.com: domain of 00theway@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=00theway@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=q2g5vsbkyRraNA1zBRj8arqxQwLdKY+0RSuiITvtBDI=;
        b=ZTmyhF7k8w5ZmwGaD096t3a+FLOWxoUYuNqCxdvs0n8u/s5NNWfBAaQTtiNZ+zBIUS
         GyFuHQJRKvmrKY+xPtRReNdmQX+8J3xn8Krenx+RN5HAg7MGVzKgufuy7JxhRw5rrMSm
         IqNnevYinQ59yr/jDKnfXaqG7l0FTSEunJuTmgP8a3yCVcoWBE4+Wob2WzFm+Vo6DH5g
         47wVCNFshZgwD5MuRc7hKbr5H3YtpT4tAFoV5uxbBxzfxri4CSr5Ef/B8bmu/i2FEjnI
         8aqBPvA9GVxt/V8DVO4JdsnrkGWULZYSHoRECLcEbdqw0jL33SyU0Ev+f98WqvfRwktF
         19SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=q2g5vsbkyRraNA1zBRj8arqxQwLdKY+0RSuiITvtBDI=;
        b=F6seb3BHE5jwyooGXsauW2ViisTy/czWTB05q9qRuIjUfUaUWLr2oOTsOf/ZHM6t14
         nU/VoAa01E6bjRNgDus6kxIqadlDEwr+DzTU/NNEh8cLRMTGPtKdr0Z4tvxxIDhZ+pzQ
         o0ldU3oYcObWFvwvrvzFF/x5RAbd6CGZkheHFzKYEaavEQo6dJrMqwFToziRvpbh8IKN
         Lk5Xi7xoeSDrzbJf56XXsEFcBf+iVKGeeT6cLWVhxioNHPQ8q/VE3RMC6ePaziMxn6fj
         L1qkhJbBfcsDSFn9T8BYXndWo1H4O0qvk94j404A2bOCTXPx/0RM/MXzMdO9kOTYz5WT
         zNSw==
X-Gm-Message-State: APf1xPDXXZNE/9WUcY2E16G7bNoUPrS02k5eTrsMGjERzt77qfKWHoS9
	8cBLKJaIDaiz25rqidHNdeA6efumVI8Bs28nJUbXZQ==
X-Google-Smtp-Source: AG47ELsqd7tyHj5uJwFEqnobYNdJ+7n5EestcK6mXm8gcHYCYmrfyyIRROOmk+CSKNbdoei7U6YQ0xVXslKE+dWTU1Y=
X-Received: by 10.157.56.111 with SMTP id r44mr2762028otd.192.1519225899643;
 Wed, 21 Feb 2018 07:11:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.112.204 with HTTP; Wed, 21 Feb 2018 07:11:39 -0800 (PST)
In-Reply-To: <20180221144811.2806.35647@slab.local>
References: <20180221144811.2806.35647@slab.local>
From: 00 theway <00theway@gmail.com>
Date: Wed, 21 Feb 2018 23:11:39 +0800
Message-ID: <CADbv_ft1X6LYJAbTHCAqNe1XZzFeDmHns8ENM7BN9zyJR885Ng@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for 00theway@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114178fc14f88d0565ba58f4"

--001a114178fc14f88d0565ba58f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-02-21 22:48 GMT+08:00 <kurt@seifried.org>:

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

--001a114178fc14f88d0565ba58f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:14px;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;back=
ground-color:rgb(255,255,255);text-decoration-style:initial;text-decoration=
-color:initial;float:none;display:inline">I accept</span><br></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-02-21 22:48 GMT+08:0=
0  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_bl=
ank">kurt@seifried.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Th=
is is a confirmation email sent from CVE request form at <a href=3D"https:/=
/iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org=
/</a> asking you to accept the MITRE CVE Terms of Use (assuming you filled =
out the CVE form and want one, we can&#39;t use the data until you accept t=
he MITRE CVE Terms of Use).<br>
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
</blockquote></div><br></div>

--001a114178fc14f88d0565ba58f4--
