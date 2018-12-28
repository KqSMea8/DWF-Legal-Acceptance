Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp143485uag;
        Tue, 9 May 2017 20:47:49 -0700 (PDT)
X-Received: by 10.129.172.18 with SMTP id k18mr2478052ywh.177.1494388069701;
        Tue, 09 May 2017 20:47:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1494388069; cv=none;
        d=google.com; s=arc-20160816;
        b=bX+avad8JMbT/tNa4lafA8qh9QzRtTNkx3BxCBRRt5SUBXiDSJUrfweNbHqGGQEk05
         tyV7wGkoc33bUTkM1jiUWV2OTG43QAW5xFmXTOoDjYhQ9z+elqQZLTnQBdsooWJsGaHT
         U6IfZ6evyDSh4tMKOi+R+0gL8nKEtA8NafKcNuZpX9ZERj1t30dh2ZciFUmYJA2oMBPH
         vgonPfHrTvZ00NmIVq3SAF38czIjGM8xdJ/FNpjBPiIBuoptyZXLusCUgZbL85wJi3aF
         bsJBZVgzW9AJrKhW3pDWB5K6eB8dzyx3PWDA5lEC64nYAs9gg2LbOu6Fsdu6Xtb6PEhF
         2dQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=LwiRtJMFVot6aago8VKEpGYCxfvzqbUCssvXCnMsbMk=;
        b=dsvr8Vig6Tuz7MlYxKzzBpNynyKmuyanPNiMrc7wnQ+iakBQrHQkcYd1DW7d5jL5eD
         Oz5ks32vMg+ytZFLy7TU7uSdkZaO5fX5rt4WQz7a/pxtx4slOs6l0oh/jBua/32zcaDX
         TDEk5mVg49C5Lvm/9et2OtCnAXoxNaiWpAcvxDydFdD4+9dVkZ+PxxnqvrQwinK3kEHf
         wMB+GFOMGXMtdqpGZyQ2m5WUGt0u4U2zNpvqkJH2l/J82McGJ7HQi4ZeyB2foef5pCXH
         /ctoaq9fQzWxJ3LegbGlD294C1jzeBPZhGXLW3HlQsFLBbEmhcp+KJz5TDOZSA0Hx/tC
         Rfew==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bascule@gmail.com designates 2607:f8b0:4002:c05::236 as permitted sender) smtp.mailfrom=bascule@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <bascule@gmail.com>
Received: from mail-yw0-x236.google.com (mail-yw0-x236.google.com. [2607:f8b0:4002:c05::236])
        by mx.google.com with ESMTPS id o1si728896ywe.477.2017.05.09.20.47.49
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 May 2017 20:47:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bascule@gmail.com designates 2607:f8b0:4002:c05::236 as permitted sender) client-ip=2607:f8b0:4002:c05::236;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bascule@gmail.com designates 2607:f8b0:4002:c05::236 as permitted sender) smtp.mailfrom=bascule@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x236.google.com with SMTP id 203so9921919ywe.0
        for <kurt@seifried.org>; Tue, 09 May 2017 20:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=LwiRtJMFVot6aago8VKEpGYCxfvzqbUCssvXCnMsbMk=;
        b=gIdR5pMGBoiB6tFWLkqMnhEOnr+Pkk4G3dKwpPYe7AKl1V2YElLm7eLA5ZXg/uU/sB
         KymJh7P2i/ZNhphcyuqho8x8OsOzLsCXtZNJObgY3eYs14p+Y8ZkJgOXsI+HRLqQuKjI
         abgJbJsPKFKmQdNLfxTXvSkUwDC0gdJuvXXU+M0zDJZ07k3WkYurPYVNNdfrnLwf4md0
         HFCINvz74BJqe+w+AQfExFnZTwBD/G2u8njIBGNA8Y4cD4l934Mkw+BrvayTFYtS17qk
         Ff3srtQbIR6rZBNpkhuy4Su338QW/8Co8y+vH5uS/2zjpp9lsJSzjVPpbZOhF9tA7qMO
         BDxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=LwiRtJMFVot6aago8VKEpGYCxfvzqbUCssvXCnMsbMk=;
        b=KUqEWq5ciKn7piDYHLWOunKx9t9+qjFh4jgR0Bp52MB23h2B+3Aj1J2uY20q3OhHhE
         HpvpqQ3IE1nY3QvzZ9FtTJmr1TVIh8IJW0Tx1hOO94eI5tjww3msbBHxE7dArXNiL5r+
         5OplOOHiWsPbh0dcBlGVkz+oQkaDHQvu/mu1bk0JVzJUEaNS6qTasMu4il7E6T+7SdEI
         6QufyQtnndrolV1O/Frtb2QoV+SZqjo4/HZXBQN/yq9DfGRZitSprmoQavBke1/BM9VV
         KeAKqCr74nJ+0Uqv3TdU43dotZVOfQLfIHanpQKebhEt1KhPsiRH7A4oRMKQ6/GJkw9A
         Nbgg==
X-Gm-Message-State: AODbwcBwFX3zU3SbxziRTrfo9AWcxRkw+jR5O1rkke/9NFYyl/lC9Yte
	ICkdaMfq+hr8wGe9+FKHlPFhIkDE2UXx
X-Received: by 10.129.164.142 with SMTP id b136mr2978385ywh.138.1494388069094;
 Tue, 09 May 2017 20:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <20170510023030.8102.57982@bigbox.local>
In-Reply-To: <20170510023030.8102.57982@bigbox.local>
From: Tony Arcieri <bascule@gmail.com>
Date: Wed, 10 May 2017 03:47:37 +0000
Message-ID: <CAHOTMVLkXQDPuSgeb3+LZC_Vw34A9p5+5y5H+iOWvcpoRWaUZA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for bascule@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=94eb2c129b9a03dca5054f2356ee

--94eb2c129b9a03dca5054f2356ee
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Tue, May 9, 2017 at 7:30 PM <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
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
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
> --
Tony Arcieri

--94eb2c129b9a03dca5054f2356ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>I accept</div><div><br><div class=3D"gmail_quote"><div>On Tue, May 9, =
2017 at 7:30 PM &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmati=
on email sent from CVE request form at <a href=3D"https://iwantacve.org/" r=
el=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you t=
o accept the MITRE CVE Terms of Use (assuming you filled out the CVE form a=
nd want one, we can&#39;t use the data until you accept the MITRE CVE Terms=
 of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/tree/master/Terms-Of-Use</a><br>
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
lank">https://github.com/distributedweaknessfiling/DWF-Database/blob/master=
/TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div data-smartmail=
=3D"gmail_signature">Tony Arcieri<br></div>

--94eb2c129b9a03dca5054f2356ee--
