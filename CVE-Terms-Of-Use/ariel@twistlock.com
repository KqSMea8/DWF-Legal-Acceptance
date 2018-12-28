Delivered-To: kurt@seifried.org
Received: by 10.79.12.84 with SMTP id 81csp2981111ivm;
        Thu, 1 Mar 2018 10:29:24 -0800 (PST)
X-Received: by 10.36.190.199 with SMTP id i190mr3762652itf.11.1519928964489;
        Thu, 01 Mar 2018 10:29:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519928964; cv=none;
        d=google.com; s=arc-20160816;
        b=0mbsC0Fym7hK8xS0dBB6cmoriX4AA78EUBSaD89NQo500HAgiYp6A2z23riGlF2PcI
         W0+POGxqkwPDXLAcOLu62mwqr4e53HPRt4SxqvOmRGaUsktM81SJsx/fuvgqcG6TS5Pz
         5aFtAy1GD36vEWIjPPgMzMMlwjxK0PL153/f4OrcikHsX4JulZUedHOV/c8Pd0AHPUfs
         ej3cqY2SXp0fz803ojvzH+aAn0+6S5DNlou4uBMh4Qbxv8eVHIeDlhd7EecNj4EGxx89
         XqBbSR4lpX6Pv09SQ0G6W2kXOnpyPsbnb53Zg9WqBYcYw/KJUQYRfXjgEyOGVuYZxP+x
         Qcag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=j/kdMhM8m6XaK4TjJa3mbbZyuf18EocNG8M/z0TAbYo=;
        b=qq12c7RnUsjXZ0FmvkMG2VAlSODiJc7Xf7i4ETINrZtIBpTQmwKNfGZT57X3owCd5J
         cuk0iL8EknswutoDv3K/KyMhiaWOhjdYidO9fXkfC2su9Hgc/NqKryaGY0hIo05HIhZE
         Tc4ir7hXy/17hlKR5q9ZDDEDF7Dj1Sc47PBsJ8F3V1MHLZDIMfbVn9heFUDp+cBdXQEm
         yv3fJGudoPZmsmDD+X0Gs6oiar+c4YKvA+I76B7P6EMdxw3ZmPddVSwPCc14O3SA7dZb
         pBPC6GW+B3bDB4fhYuDKseQCW06SUldOrh+YIV0QqSMmJvwsmDZ9DBJBm2LjfjMA+vjY
         GCRQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@twistlock.com header.s=google header.b=FNulz3mA;
       spf=pass (google.com: domain of ariel@twistlock.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ariel@twistlock.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=twistlock.com
Return-Path: <ariel@twistlock.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a62sor3113592itb.48.2018.03.01.10.29.24
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 01 Mar 2018 10:29:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ariel@twistlock.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@twistlock.com header.s=google header.b=FNulz3mA;
       spf=pass (google.com: domain of ariel@twistlock.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ariel@twistlock.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=twistlock.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=twistlock.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=j/kdMhM8m6XaK4TjJa3mbbZyuf18EocNG8M/z0TAbYo=;
        b=FNulz3mAdCc4G1mkECcE+8d4vSwlHdPV9wCAzaxhiHTXxd8PONh1BYxOZ0AJqSSM8A
         oBO3IrM8IpI2V3S9RUUdB+9LRejz/y9MlXNqRR8ZzAPyWzER52VaPFinRTzUtrzwONP3
         W9t+gtmu1/lFeaE3biCvZ9hAe1CwHWXBktGXc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=j/kdMhM8m6XaK4TjJa3mbbZyuf18EocNG8M/z0TAbYo=;
        b=fguw1fmTW8aApkKzXBXtdYlKdwQZmRdTMrMVqk2wdEkP9LVmLpLX0AxvqFzTMZlKhm
         9S0x8zS5A41AChljIJRksZgL6N1FFunkASX+w8/4la9oLDvpYB/AMGDto//ptB90vP/j
         JPEwQC8EbiWB4Y5QkjCE59j6nJ11AgsxhFKayDxHE0aLe3xGR0xEch6L/LbbwmfS5/5p
         AqHD9XkwHJjojKb07+Gre3nzXnz10Bu7s3chIcf0mv5nNOVcwQ/dHwEsmQG8N0sAOzJu
         U6wiv2rCyTXTT8dgCpGb5YmBB+72LxJ03V/0v+X9nNsO7XUOKIArhWG5Fev1PGZMGI6l
         zf5w==
X-Gm-Message-State: APf1xPAbnHMSEAO6NKq3PkDFTkzC6lq6BLzA5IbzhNVBl38i8BPI2HAO
	8SmdSY1K1FBxKUqD2w60PPqBYYeThHWQu0DaaQPq4lm7
X-Google-Smtp-Source: AG47ELvgR2mNQ/Mn+UEiVaJ5omhZQ91d8Cmbh56QGxmaubdCI7fcMS/SSCZSnrdrNKAg3nL9X7SWKKd7DF8HuHfmzik=
X-Received: by 10.36.224.68 with SMTP id c65mr3726102ith.131.1519928963845;
 Thu, 01 Mar 2018 10:29:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.243.1 with HTTP; Thu, 1 Mar 2018 10:29:23 -0800 (PST)
In-Reply-To: <20180301155651.16854.50238@slab.local>
References: <20180301155651.16854.50238@slab.local>
From: Ariel Zelivansky <ariel@twistlock.com>
Date: Thu, 1 Mar 2018 20:29:23 +0200
Message-ID: <CAMgJUL3OywB7uMC+3qMuKtgdELLv=2JMy=JbgRKhp6GEYLO8Ug@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for ariel@twistlock.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c19ddc0f967aa05665e09b6"

--94eb2c19ddc0f967aa05665e09b6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, Mar 1, 2018 at 5:56 PM, <kurt@seifried.org> wrote:

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

--94eb2c19ddc0f967aa05665e09b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept</div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Thu, Mar 1, 2018 at 5:56 PM,  <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation emai=
l sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"n=
oreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accep=
t the MITRE CVE Terms of Use (assuming you filled out the CVE form and want=
 one, we can&#39;t use the data until you accept the MITRE CVE Terms of Use=
).<br>
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

--94eb2c19ddc0f967aa05665e09b6--
