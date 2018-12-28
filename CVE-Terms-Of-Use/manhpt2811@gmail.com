Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1165653ivl;
        Thu, 5 Apr 2018 05:43:15 -0700 (PDT)
X-Received: by 2002:a24:464e:: with SMTP id j75-v6mr12856495itb.28.1522932195073;
        Thu, 05 Apr 2018 05:43:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522932194; cv=none;
        d=google.com; s=arc-20160816;
        b=06ahAVYCmB55OV7gpIzCSs8bjbJZfSb+Gdk7uMj4x7XkY3WE5YBN8EIxECdJA/sxOI
         TcIoTAoh6DWk1e8GBwvR6YcUigRim3zEtRJ0K6IGkSJnCE7p4tG1nlIrePsabxtGbOxQ
         QAp69rBiIKZxdeJCUER32maP/2EoNziuBO7F2cwE0nQ15NBnGPZBvqGwR7gpAzue7KSp
         CCz+oNbwwXHJUEbmnco7uiKNvzu/vyiPU132Y1col+cUMf+I65gkYXa6x0p6jwnTvb7E
         QbhHQojj52+KdPxjNJikXP9DNurxTUl7g3qa9DpFpZCiY5VJYXZ2MI1K1vATljhmOiEy
         dh1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=71obkFfx01C04zMUEXLvFO+xNgoPS9q2kl751lX5ktM=;
        b=uAa8eeWPQAsLMyLQJWyvYTwxmAaRLf+9y8Sn4z1epo3va3LRzc1HJbuUWLv7GBxdk9
         6Onz0lmsf9hpzZ9ABQFomhvqW1szt6PcL2hL8aJhvDpz0D67eZUBdfOfQYrMVE/qc8wo
         FAVfNiTs382g8d11ZEQhTFJHzvcO1xIN0H9mQPDMhu0/0aMjA8xJptGSiDO00RARs00M
         baDdc4WQJqgdqSNgrM+g84QobuKx5vCrZ7e571+j2cyIHDUjAhfwQPc1iPlBPWV9q2Kt
         akEO5seOie5h1gMXvCITSBCSmccTUw27nvzCf2YRJkyVoaSY+oi8i+IYrtzBbcYpYAmd
         U4NA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YSvbei7n;
       spf=pass (google.com: domain of manhpt2811@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=manhpt2811@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <manhpt2811@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 201sor3541368ioc.178.2018.04.05.05.43.14
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 05 Apr 2018 05:43:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of manhpt2811@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YSvbei7n;
       spf=pass (google.com: domain of manhpt2811@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=manhpt2811@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=71obkFfx01C04zMUEXLvFO+xNgoPS9q2kl751lX5ktM=;
        b=YSvbei7n66zDZ6vTzAykG2Oczz/pq1GEwc8nS0Ux5GrkCQ+IQ/5cD9ha1OTNi8mESz
         BWveDQp0GG8xqL2YlH2ztlP+NnvccxWbjtfAZ3lRNgT1l7CUQ088J/VJKqx0E8vyqtKc
         GTTsNTF9nBbNkhtQoMJXUCO2wC4G8xaoO8EXh48Ey97q8+f1Guh9UEaqHtM6fgSF/VkE
         ywUWrkrCK773I1bGZG41JFShXDhD5R8b06/TjDOqrOdijYDOAItslEauXA4a7bHUn1en
         yajong0DjtP7WGzAM8q2L5a/vhtvAmJiVwkZw0Gt5FbWg/ak9WM7jPxBn5kzBE/T+QFB
         Evzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=71obkFfx01C04zMUEXLvFO+xNgoPS9q2kl751lX5ktM=;
        b=Gpqexr1fOno0yhRsR4Hsse9C26V+OpxzipuMPUyaBuFL3cCvrxkAF2K4QddOLRgbvA
         OFdm1r0XUFKKf9t0umwJp/yZCPqJ66NwuNn1m3olDYZkTziiR0mENxPUDQ4SkJju/8hs
         /E/dtYsF+wgYDNJcPOJB9p4y/6KQbedBdftQAklfSc7Hx6YLYw3k0Y1o/FQeJ3loedKr
         3Rm/YUhqcvTF7LiaRuzWmdf18P53v4PSn+JEHCyQdt3dSSWmFL8V8G27lZhyd7lMzUYS
         BFaDJt8vnXWqHccZqIJUcFcvcqAtKg8pXr6H/oh4cAxj65SHojFBbF8xLPFkEXMop11r
         23BQ==
X-Gm-Message-State: ALQs6tD0bKdBNjuyEN7QdcsRXqVrHH3VB7CZW7tEBqS+0KXpkAn0bBr+
	ukeCxLdWzPMAlqXL4E/oQFQpT6rF+XQ0THd2H9UZ6g==
X-Google-Smtp-Source: AIpwx48B7ohCvVteHlVSQSXDneLMO3zvPI0Px1A9bC3ZZpvTm25dqkzBmAyYOEc6eQHWOM9r/qUX/Uo7g+uyb0EXR8k=
X-Received: by 10.107.197.130 with SMTP id v124mr21034061iof.55.1522932194404;
 Thu, 05 Apr 2018 05:43:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.129.205 with HTTP; Thu, 5 Apr 2018 05:43:13 -0700 (PDT)
In-Reply-To: <20180405090513.26722.79427@slab.local>
References: <20180405090513.26722.79427@slab.local>
From: =?UTF-8?B?VGnhur9uIE3huqFuaCBQaOG6oW0=?= <manhpt2811@gmail.com>
Date: Thu, 5 Apr 2018 19:43:13 +0700
Message-ID: <CACP55Bc2CYfXwxVYcKi8=u6Yg2RXm9Q9Ogc4p-FLk7xsGA6qUA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for manhpt2811@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="94eb2c18a44476f19b0569194825"

--94eb2c18a44476f19b0569194825
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-04-05 16:05 GMT+07:00 <kurt@seifried.org>:

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

--94eb2c18a44476f19b0569194825
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">2018-04-05 16:05 GMT+07:00  <span dir=3D"ltr">&lt;<a href=
=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent =
from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferr=
er" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the M=
ITRE CVE Terms of Use (assuming you filled out the CVE form and want one, w=
e can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
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

--94eb2c18a44476f19b0569194825--
