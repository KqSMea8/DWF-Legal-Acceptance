Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp4739562ocg;
        Mon, 29 Oct 2018 16:24:14 -0700 (PDT)
X-Received: by 2002:a2e:8156:: with SMTP id t22-v6mr2650361ljg.32.1540855454123;
        Mon, 29 Oct 2018 16:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540855454; cv=none;
        d=google.com; s=arc-20160816;
        b=X2tuR2Eqc8uMoBu7P32md87SaLyxQIlrFl45U9m835sjsOaOsj+gKuZ4A+wbohvTkG
         /VVXbg4xqNyX7f2oMgMTgbaOxRibUFQkxmhKY5iGoN1C4oi+yMJl7AP5S01UlLLvFm0/
         fccdP+00MEPUJ+ed8A5o23jNtEz8dU7b1h4N5x2CTaNYQyzTQ6JKM40QUrmWaaYC7OwT
         exbJCCLKmAwMrjjKou64L5jX9sdsLYjFr2QyewAvbphfeE9fuGFdLje6gyy98mn+CKPd
         +g+ACGl/XIaMosOpcps++Qe1htfosBc7oUL+hgdzAq4m3S1l5nbXDqsiXdX71qFa3arR
         N5KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IdVLI1XRedqQR9bveYVk4eVqgZwJD3XUY4BLT3/F6Jc=;
        b=UG44B5Og+7P3nVgnuRhCIy8Ae7UQ0NZp6e465lnA3xzWv+r614g34ddv8/VvQlrEN1
         uL2V7fiJzMd/5ZKLXw15S6F6JZETOFX1mlDM87YafiqviEv3RwgX1bVglc4tCLldaXzk
         FTEEuS57zDChKYagmOqraWtYpOW1VhjbXR/+2DOhWit7gOgd81Xn9Ow+TiXC83cptUMp
         htqY+y0z4aZFrHnOqRXnxAcV+dc2yCPBulTf77dNlmiNPfCbur19S6vJizy+3m55HX4/
         UUSx8WbY1ZdGPpGNC9frlWBqZWW0K0dztRqC3jZM1tBU4HV7mDgBqgk+IL5MLmaxmisk
         RT6g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ne+jLGPK;
       spf=pass (google.com: domain of steveyken@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=steveyken@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <steveyken@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a138-v6sor23713lfa.29.2018.10.29.16.24.13
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 29 Oct 2018 16:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of steveyken@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ne+jLGPK;
       spf=pass (google.com: domain of steveyken@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=steveyken@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IdVLI1XRedqQR9bveYVk4eVqgZwJD3XUY4BLT3/F6Jc=;
        b=ne+jLGPKDxQNapCkdqnyvoawQHVR7yPl/D3K97ISu7w4y4a+M+2iyS5qPs52/sWU6U
         XVrIxy3OJwuydb5DYzMrPUOLFrslOErOw9/YlUbCZ1ltdmo3lm7LlOtgL7+b+2ngw0a7
         dfSCVQOL3yum/ovaSTVNneqaQ/a7XiexdinQNCZnlBpuCkW1rakN+XFvmhaiAA58XX/Q
         MgaOBsagj8f4YkuCjaVconRYMjcVcKF0GE079gH+CcX1i8okSUGMr1g1kBRryFT/IxDv
         4SEtM8gBNvQRg4B9Y/TVyfMnpr5VikjVFcUMU1KJ2H6hbFPVlsYI1WufQCf6SghGFxUB
         Yz0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IdVLI1XRedqQR9bveYVk4eVqgZwJD3XUY4BLT3/F6Jc=;
        b=IKufUoTcILSCEgG11gEM+X3STPmugRkzLxkA0kowIu3DyWFAh5WoGFA/JBwvYQxHIw
         /VqF1+PRLkTFasA2wuc3t6WFv01LAtlThKqOtWlOBxfQKl4kCCh9l2XclFOHY+hN4dWM
         bxzspGIdlbMGzHBaISJm8a8VgfxdtaY34tPRR/7tZLiXKsffbMEJIRq48JhF290LRpaR
         7O9RHgWVJu4PBwUkDLLCDS4KdDTOsZ1Vlqqlq8/OJ5l0cxhx38zop5QSL870bQIu8V1O
         ylRH9CRdPqnf81pPDWu3zFY0R3gPDy4DMsUrJtL0OwtpJNFWaMOnbfODeUr1bAgBqPtS
         4WVA==
X-Gm-Message-State: AGRZ1gLTLVJACY/HSB1vbQ9uqRj1HRqmKonn+gxz7xPssWrr+L/3Dr0u
	msFjwcQ3333yD391mCNUwcxCYXfVBfAPTTzaXQbVhA==
X-Google-Smtp-Source: AJdET5euBCI+YnzuIBR4zQJTtgVmf9utoCYKtWeYunkuE7+kG2WrqJ5OlWn4nH8/qzWaWSn9iJKi+bzxk/Zhx3HX7YE=
X-Received: by 2002:a19:a60c:: with SMTP id p12-v6mr399801lfe.144.1540855453081;
 Mon, 29 Oct 2018 16:24:13 -0700 (PDT)
MIME-Version: 1.0
References: <20181029185142.13656.83594@bigbox.local>
In-Reply-To: <20181029185142.13656.83594@bigbox.local>
From: Steve Kenworthy <steveyken@gmail.com>
Date: Tue, 30 Oct 2018 07:24:01 +0800
Message-ID: <CAKWKj9MurMrJ4tfxZiv_z+U1G5cu=vtG6SqH5_AUR7G1ywTLrg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for security@fatfreecrm.com
To: kurt@seifried.org
Cc: security@fatfreecrm.com
Content-Type: multipart/alternative; boundary="000000000000ee64490579665dfe"

--000000000000ee64490579665dfe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Tue, Oct 30, 2018, 02:51 <kurt@seifried.org> wrote:

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

--000000000000ee64490579665dfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept<br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Oct 30,=
 2018, 02:51  &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation=
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
</blockquote></div>

--000000000000ee64490579665dfe--
