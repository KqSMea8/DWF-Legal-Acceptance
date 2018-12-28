Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1053219ivl;
        Thu, 5 Apr 2018 03:50:38 -0700 (PDT)
X-Received: by 10.223.151.69 with SMTP id r63mr14822000wrb.47.1522925438285;
        Thu, 05 Apr 2018 03:50:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522925438; cv=none;
        d=google.com; s=arc-20160816;
        b=OTZZRVeNZ773t1wPQPEntQSuYB5ftLamZsqxlHmoDch33KnB7NhwEbArSJvE/EulbI
         aRwqQpIYWUokjfJff75+L7Y28tCBqOXzSElyKWREJ89pKBdsruj4/305qnki/b9+P7l0
         CjwddkyzyIwVtGhDxxofNKPGP62sAJO7xNPqE8Bc8ehxnU5/h9E3IsXTvGpXDh1uxGG0
         bQ7Xa5vafkz6CWuEdfBgBUv7Gln6JTknUnXk4Ly+7dpCU9niHTnsYwd6c5sMGJVkNwCn
         5aOzJDZD4s2ojzuXiIwGyWDdXiQEUVYcgcewdBAK8bqDlnk9s/tIoYQlmEV7a1YaayET
         LC2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=L1Ss2C+1KaLxsGKnmXz3LLRv362lE3TM338pWlSXGGs=;
        b=IagxlIGEGYOlndioI2OF6LB+UL3O3BoD5qaDVdZ8qLqXyyhMCeyMPTDbFshZq0kKJw
         6ETIhvIexwNePIcOzXq+ZRZ41h4HVL6RR6kB5cmJJpClvfVuxTR4oFwulmQn2DM8MIdf
         on/7DKEc6S3XwQcsQxwC+6/c8jaOSVec4jZYJWEBLGMMLQfFRY3fDIQ0AHWlTC2fPcSs
         terJj8UIQ2udnMANPyoUG5rCqOR6sr9bOmqT/q/UPGmLPe3fLP5vCpuF7BvIxzid+y7n
         Ckr6CYNvhjFUEqP+kOfu00Srq18Qh2xFk4dRPLfICSM6grLGV239IjimTqhiBbu2Sw1h
         UopQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DbSUk9S8;
       spf=pass (google.com: domain of cianmce@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=cianmce@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cianmce@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id u12sor391332wre.54.2018.04.05.03.50.38
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 05 Apr 2018 03:50:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of cianmce@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DbSUk9S8;
       spf=pass (google.com: domain of cianmce@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=cianmce@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=L1Ss2C+1KaLxsGKnmXz3LLRv362lE3TM338pWlSXGGs=;
        b=DbSUk9S8BDvddq67bdVrpupckY9pXi0EXnqsxbhVgi4qIJ02k9DLJj7rWAIJCJ5pTc
         0pRArIzXG4uXm6QIqZSRtmzJfw+zSNRbUJHJa/00X3sLf8JIGFRpUkMqqhzyNmgaaDCH
         EXwOPY95wrCMjM7yqf7PrUTrGajN9EV/EytDY8nj+vmR3N0lV4Ltx0YaSA8sf7sOE/fi
         nNYd4P81XLnNS9YtEugLFK5q39kJd3EfHmD7GnCRpnDt5JaQeoyn+Dk53Y7Rgb0l6qDd
         F4/35iAU7w2ZY+ziTKPs0oI52B8OWzEusr57f6zYtXr8V2H697AYWsoK0/m3E6bT1V/z
         HkWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=L1Ss2C+1KaLxsGKnmXz3LLRv362lE3TM338pWlSXGGs=;
        b=LY+aOodBoNAo2WTw6UEhkPjiUJm6KK9so2M6AahjaC94K/46PHc2cUlzxsQpgjS2D7
         jpFEZ1hy3agkWSy0bj89hlJ5XkmH8ByVHq3NGcoVCUPIc/TqWuOjtDVvQKGIkSklho7z
         OxX2hAOPon4CypEcekJfjs2RpruRtWq1oIonxyPSkhhlzBAbDLL+6zOGW1xvYGQFs8me
         LbXJB8sp9d6GCuleRDhdn4Yn+N1UYRo8BwjgiLldSrY1iml7EKsV3WdxpHuoi+KZ/et+
         rPCygaawM1CwsIWF81yv0mtEEEH2WQKjnnrIFs/+JzJNJ+7Yg5DjFlQKGQUUwtjDXiQ5
         mqAQ==
X-Gm-Message-State: AElRT7FrZkoOWYRFc2Qd0WYWR2L4wr6Jd0aEmepZsdl8c1Rd1b7EJWTy
	prp712HZlwvRl3GlJbkmtEJu0HFEIHk2LrkJNFj23w==
X-Google-Smtp-Source: AIpwx4/h1+M6GsgF27bHwPRr7yARCYU/qWvbRbU8DIq4B4ygv+6NWgh7OgnjFjaZYL8QhnfqJ7DUJ5GdsbhCxVIyNxc=
X-Received: by 10.223.175.201 with SMTP id y9mr15376843wrd.107.1522925437586;
 Thu, 05 Apr 2018 03:50:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.182.144 with HTTP; Thu, 5 Apr 2018 03:49:57 -0700 (PDT)
In-Reply-To: <20180405090504.26722.54124@slab.local>
References: <20180405090504.26722.54124@slab.local>
From: Cian McElhinney <cianmce@gmail.com>
Date: Thu, 5 Apr 2018 11:49:57 +0100
Message-ID: <CAKmD4of_7Xk8=KA+WaJTQaLw+xwCt7g5dyKwBLMyQXZGbygGJw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for cianmce@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f40304388e48ba1462056917b5f0"

--f40304388e48ba1462056917b5f0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On 5 April 2018 at 10:05, <kurt@seifried.org> wrote:

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

--f40304388e48ba1462056917b5f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On 5 April 2018 at 10:05,  <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">This is a confir=
mation email sent from CVE request form at <a href=3D"https://iwantacve.org=
/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking y=
ou to accept the MITRE CVE Terms of Use (assuming you filled out the CVE fo=
rm and want one, we can&#39;t use the data until you accept the MITRE CVE T=
erms of Use).<br>
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

--f40304388e48ba1462056917b5f0--
