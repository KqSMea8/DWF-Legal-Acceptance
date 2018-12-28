Delivered-To: kurt@seifried.org
Received: by 10.176.3.133 with SMTP id 5csp1622337uau;
        Thu, 3 Aug 2017 19:46:30 -0700 (PDT)
X-Received: by 10.36.134.197 with SMTP id u188mr757260itd.73.1501814790658;
        Thu, 03 Aug 2017 19:46:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1501814790; cv=none;
        d=google.com; s=arc-20160816;
        b=enAmbi7GW0oG57DG1Ox2aWOv3xdfKav8I83JiiD5B0Hi5/ZI/jEizmSz80R3tpvHni
         XlfWuvWjvfXQ5zVvlrfTMIOfj0VxgaAhNBQmltnx6/kRMOFAxkFtnfu8c20FaxkzdUbj
         519qaJnXN2TlhBqPFDZnCLCwcVAMCupGwiFBB2YZL/L+FJAEM4sbxLbAf/ClcKS+2CZ4
         9zzfE2XQGyrtgS/Dnh23kJdxq/feOpsCsfGqrrZjmW3GTKFzsV7m3qI5dD/+7RbC2N/t
         Up6M9wXyI8M2rr1HpUUJl20VmNNXJl7UXU+iwnrIChRT0cCbou4EpTeg+Fj5x389HLnQ
         hVUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=m21fqsuRuf1xlbJkNoh/HiL/+JTrQ81zQ6mmF1Hisqc=;
        b=LXBDKBFZOgzzLFQhhyALtiPnzeMfP/O5yVfB0SwTCT8/lQNWcnTmiuLViD64X4v8Xz
         ksUKpcisxktikuSzdIwoL4CR2WrYSNGy2ssfn2IwCz14wE1krGWJipuvoCJquecbI38f
         K+VDAs4z7yCKkKeoYtvvTThxlS/qQugZHMTdK2EY/VeJkFEbT759Cyij1DftJFLGYWbl
         YUKHMxMNJqBPYFiMTui3scc6g8yGbc1An5ywmL7i1+PUNDTJfCO2O2/3D9VbfEnnim9z
         y+5MZ1Uq0BdiiX4mMrQItKhQJfTHVm264NbAX6A7eEUIjXN2TxDss5/EGAN/IvlPv4lR
         ogjA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=d8mHrwCM;
       spf=pass (google.com: domain of sec.9emin1@gmail.com designates 2607:f8b0:4001:c0b::22c as permitted sender) smtp.mailfrom=sec.9emin1@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <sec.9emin1@gmail.com>
Received: from mail-it0-x22c.google.com (mail-it0-x22c.google.com. [2607:f8b0:4001:c0b::22c])
        by mx.google.com with ESMTPS id j82si477523ite.177.2017.08.03.19.46.30
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Aug 2017 19:46:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sec.9emin1@gmail.com designates 2607:f8b0:4001:c0b::22c as permitted sender) client-ip=2607:f8b0:4001:c0b::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=d8mHrwCM;
       spf=pass (google.com: domain of sec.9emin1@gmail.com designates 2607:f8b0:4001:c0b::22c as permitted sender) smtp.mailfrom=sec.9emin1@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x22c.google.com with SMTP id m34so5441854iti.1
        for <kurt@seifried.org>; Thu, 03 Aug 2017 19:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=m21fqsuRuf1xlbJkNoh/HiL/+JTrQ81zQ6mmF1Hisqc=;
        b=d8mHrwCM2Wcd3ut/Rt6K82djcfO7hyfnveK9q24abl+cYm0mX9WBMWm3CXcIuq/Sd4
         ppXmcJl+196bS9Qe7XxPfoMDdh0+vmbcs5MgUy+TxV0YY1CW32sK3bo1Bc68mPhECA/t
         t9V+AlcwVKJsWvG+o/J7fxwqYqo41PwcRjK6350aOkEc3x/ncuaQIUqo5+JItKlLDJQC
         B+OmHwKb1zQZmOnf3+eGmXlyfygXXw9e+hBsHA9/Qpd/iBbz9r2HMp6botCvaekXO5kT
         HRV5gg/A/DuwvHNI0hIAq2ZFy/Me4s8hWTy4xLxzpp2aLe87xfJ9hG8V9vl/MsEdsL+M
         DG+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=m21fqsuRuf1xlbJkNoh/HiL/+JTrQ81zQ6mmF1Hisqc=;
        b=UwM4Ri8WK4J9Py4JYugyLZY6sN4yZcvtywUW3TYBema0+rO0Lrz35dw0dkHLhJsgEB
         mExOgv1MJJS6o4/raKd916w73wuNvqPAQNYd4civgyiaYs2heExbfLMzyne48Xew4ToL
         TG7niOK+r9JToBWtR+49CRyoUkf5IHrb4lckMibr5gHa4uEtd16MPR/1szyPIb2thr24
         AYanqvpXjnKu+3EcsqGeI2zKxJ8pJnE3kwqDIGtvKPsl6Pt9Oufn8VT4CuFb1Ue/LHDc
         TLf/JklsbiD9JVmRhryLy8qowrVxj3yo2iXgmiwrvW+LMjY4u8I4RZtb2W/tWjMKI/q0
         U1/g==
X-Gm-Message-State: AIVw111ufcJurPZXJIFKWl0LDu4OKIyxpU/8E2qEspt00N5hgGC4yv/w
	shhh2+8Jx/jS3ppyTH41N4TB94S5Dg==
X-Received: by 10.36.116.146 with SMTP id o140mr649692itc.107.1501814790157;
 Thu, 03 Aug 2017 19:46:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.158.142 with HTTP; Thu, 3 Aug 2017 19:46:29 -0700 (PDT)
In-Reply-To: <20170803181558.4892.53580@shiny-2.local>
References: <20170803181558.4892.53580@shiny-2.local>
From: Gemini P <sec.9emin1@gmail.com>
Date: Fri, 4 Aug 2017 10:46:29 +0800
Message-ID: <CALZW2EoGkGyjfV8N6o8PdGHenuUfSEKMkjQnX2bF9sPFBxfOMw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for sec.9emin1@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114aaadc15f8dc0555e481c0"

--001a114aaadc15f8dc0555e481c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Fri, Aug 4, 2017 at 2:15 AM, <kurt@seifried.org> wrote:

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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a114aaadc15f8dc0555e481c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Fri, Aug 4, 2017 at 2:15 AM,  <span dir=3D"ltr">&lt;<a href=
=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation email=
 sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"no=
referrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept=
 the MITRE CVE Terms of Use (assuming you filled out the CVE form and want =
one, we can&#39;t use the data until you accept the MITRE CVE Terms of Use)=
.<br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div>

--001a114aaadc15f8dc0555e481c0--
