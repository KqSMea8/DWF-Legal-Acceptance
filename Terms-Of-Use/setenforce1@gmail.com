Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2017846otd;
        Sun, 2 Sep 2018 18:26:18 -0700 (PDT)
X-Received: by 2002:a19:2043:: with SMTP id g64-v6mr15706414lfg.66.1535937978638;
        Sun, 02 Sep 2018 18:26:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1535937978; cv=none;
        d=google.com; s=arc-20160816;
        b=oRHPb+INxL4/c21F9NgzIZZlAeNUsJxSPNuutI8M2nNwT5Yb19FDOW/qhKRvWnp65s
         Fx5T95wkpzIpsOWVhkWgQFwV8y4Gt4NK/omYMsy6UE6XQsEehP17ab92A41mSzpprLC6
         e5zauHcmg+RkxjXv1b4sl3avt8G3wRlcJh2zlbDDhXbvj9LP8Z9ErVFPtEHWEB/P/A1V
         mMax9Ofir5gjYRhKK3JaU1fZTSlma/e6EgOWq3LJ4J7Ee9D9Q+2KSEibDXMRJChS1uor
         RRYgNnvP4ifT4bm0850jWy0gH/Xga2mWALJTTAbsDccqseNp8eCP3Xv2jZkZu1wJS2/x
         8xCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=E0nt+HxUtRjMj54ggjgi4gzJHcZgWdSCNPuAj49thaw=;
        b=UAa+5eiVEFeeftnbvRjCAE+N1x2OltHBJgt2Al8TLcYJadLwK60ziCYQlCX0wjGKdS
         H8zz+dLl6EaSXjsW/tb+SqdH+FPI4XMwQ8ArybcelGdS+jRHN0QXa7MXbj/qbgBFPveP
         viu6WBt/Pam3UaLADMEyiCOaOcDV92ZgaAt/iP2nPyw6AT/HENr85vAnQ2phgXZsB0qJ
         w2UnVa6Hdw6F7sVKl/apUnQLByP0x8Zg6t7AXznvtrDV1er20Ps0mVFQMB4zGTepan+X
         wD4F+8x/2In8K+9k98T+R5nzgcSWA8dvPSpYVOr6fiIN46QIlvMesKazNVkTJN7nxxSU
         UeDQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A9WLF2Wn;
       spf=pass (google.com: domain of setenforce1@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=setenforce1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <setenforce1@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id w21-v6sor4663211lff.19.2018.09.02.18.26.18
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 02 Sep 2018 18:26:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of setenforce1@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A9WLF2Wn;
       spf=pass (google.com: domain of setenforce1@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=setenforce1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=E0nt+HxUtRjMj54ggjgi4gzJHcZgWdSCNPuAj49thaw=;
        b=A9WLF2WnH9c+F6TR7aAqRKK6qvNHofCPeKlTqOtkrwG2GpMG8i4NlMWnbXa+kHRYTI
         rVLSYaOU2Wf1+oDkPqQE6tguUUgbNfO8l0c78CRxUmQj4RLIBHLUZmodtgAgt/TuH2H4
         uOr/JJdGIGH12kYBW9/Kx+7t2UDuixOtZ139mmd7H/JaTStRZZK+ETowFWskfbKwb/8K
         i+ewRdrtc/sb7ZoMdPz4Ud7T+f2PxviRd4whZWEdndGiNQEtvMqzRwuFym9N6LOOY6eP
         ArU31N9/B91bfM/Be3dojY4+cNBoDuZvP9/0hIPoYNGa+Rr3KLnYIGCGa85xKo0CtaTz
         HWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=E0nt+HxUtRjMj54ggjgi4gzJHcZgWdSCNPuAj49thaw=;
        b=Cspj5G7YWfd1hidzAOUq+zElr795/5W4fpE3tuyP43GqbsOn4yvNBZpCtQd0ibTjBq
         J87GNt6kRqK4vhO6MRK5ovNkNGYPbvpvhAAYACI7FnfQQZ3rTFg8GBUFQdSMEva8zT9S
         Nmclm5KqiLoHaqi8wn89G+ae+eMbB3es0ucfWGN4i3uiXqPjcYXwFk9gh2Lqc/rA95M6
         ubsQ8fxnBwiIsgLwrdmHmF/OoA268XCtH2iIhOKDfStsCHrYoC2Rx5hmlt7K0/FzSrgS
         0IpUipuHR2Hjnd60IaDwouvjhzrPm3Z0eyo+7iLtTOM0M6kIRrg92aAvfK5IUBqvaTLz
         ztyQ==
X-Gm-Message-State: APzg51DoGQEls/A50ob0ABLsRy8vsocJnXUPImjjUZVaKO4vUwRIFPC/
	qOo2uod6P5maxuFsGISpwBZFf15+H/QY30itOHiYgw==
X-Google-Smtp-Source: ANB0VdYq53s/qRN1t0oEtES2yi0h5BTsSyum3Typ++qr5sD3CkGvwwnJEnCZOxnPbmnWxNmcUBCrEwJpENdVrnS9HXc=
X-Received: by 2002:a19:e307:: with SMTP id a7-v6mr15856389lfh.125.1535937977708;
 Sun, 02 Sep 2018 18:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <20180903005833.6662.24859@shiny-2.local>
In-Reply-To: <20180903005833.6662.24859@shiny-2.local>
From: "Chris O'Neil" <setenforce1@gmail.com>
Date: Sun, 2 Sep 2018 18:26:05 -0700
Message-ID: <CADRwfSJ=sey=cY_GBzsY6PF5yGJLOg-rnEnWz-=Ax=XZ8PpiJQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for setenforce1@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000008ef3a50574ed6de3"

--0000000000008ef3a50574ed6de3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Sun, Sep 2, 2018, 5:58 PM <kurt@seifried.org> wrote:

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

--0000000000008ef3a50574ed6de3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept<br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Sun, Sep 2, 2018, 5:58 PM  &lt;<a href=3D"mailto:kurt@seifried.=
org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">This is a confirmation email sent from CVE request form at <a href=3D"ht=
tps://iwantacve.org/" rel=3D"noreferrer noreferrer" target=3D"_blank">https=
://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assu=
ming you filled out the CVE form and want one, we can&#39;t use the data un=
til you accept the MITRE CVE Terms of Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/dis=
tributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br=
>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank" rel=3D"noreferrer">kurt@seifried.org</a> manually=
 with your question/concerns/etc. <br>
<br>
</blockquote></div></div></div>

--0000000000008ef3a50574ed6de3--
