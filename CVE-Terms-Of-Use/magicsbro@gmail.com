Delivered-To: kurt@seifried.org
Received: by 10.176.3.133 with SMTP id 5csp1502756uau;
        Thu, 3 Aug 2017 17:08:12 -0700 (PDT)
X-Received: by 10.202.94.136 with SMTP id s130mr537868oib.202.1501805292228;
        Thu, 03 Aug 2017 17:08:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1501805292; cv=none;
        d=google.com; s=arc-20160816;
        b=cEvOLWzk7YcF1YKPqWfpcO6UuXBBPdyQWIVtVvaPOUCWL1Tu3ikjZntApvBJBltwlW
         4L3sfJAtWQKzEyFZHumaRvASRfOdsgMkrZO9nZJFB8jXxUm5AAWcDMqDvmzyiXXgUx9S
         w98JRQhsE5PzIsucsSIHVsXJ8bQ44ihCo68I4+7WlgO5Wv9vi/9MID7AIxdy/loWRtQS
         JfebBYEwGADOCVhc3VBQvszsEtx7a2BPEHwewu47WJQmqb+UKTpzeba5NYDae0X6Ejth
         9eQLaMHSAezJMw/QZAO2ySnUfAYO083bTDHBa35fttj6NuFUUMudm7ROlunXUf4lSVnb
         wydw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=yko/3uoBkZmwXJulGEGEaCkrAjsHniqrhT2pTfXY46E=;
        b=dboT6zumj6Od5X5LyKsy8XK0EsV7la2YYayi3pL+aecHeQOj6Rrv3SwtszP//jCa3U
         2aWHu/pjdYCoj/6BekZ3Ldak2+UxK1m/KDsucH30klUu8Mey/5RkzYJeWRICnTQ1oaPD
         0cmYpB1mX9p8ETp4A+MXwWntAG1vGQorZbfbK/s7PGDaExdMg2pcBSSAwEI9tnW+0R6H
         5U6VbEQSZb9+IpDM5fl6zLfD4Y/qi+gri7SzF37uFgSbf8mmhESkbypsQPWPv4rDVzcs
         32ARS1NWxYFp1hcpxiTByzfuoHCQrgnkaHrvDU2xFJ+O0f/p/MMXUOcwNq1c00jbPe9H
         +XNw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=hZyrkBMb;
       spf=pass (google.com: domain of magicsbro@gmail.com designates 2607:f8b0:4003:c06::229 as permitted sender) smtp.mailfrom=magicsbro@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <magicsbro@gmail.com>
Received: from mail-oi0-x229.google.com (mail-oi0-x229.google.com. [2607:f8b0:4003:c06::229])
        by mx.google.com with ESMTPS id d124si130982oif.272.2017.08.03.17.08.11
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Aug 2017 17:08:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of magicsbro@gmail.com designates 2607:f8b0:4003:c06::229 as permitted sender) client-ip=2607:f8b0:4003:c06::229;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=hZyrkBMb;
       spf=pass (google.com: domain of magicsbro@gmail.com designates 2607:f8b0:4003:c06::229 as permitted sender) smtp.mailfrom=magicsbro@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x229.google.com with SMTP id e124so2110348oig.2
        for <kurt@seifried.org>; Thu, 03 Aug 2017 17:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=yko/3uoBkZmwXJulGEGEaCkrAjsHniqrhT2pTfXY46E=;
        b=hZyrkBMb21JrlDwoEaXZZoHlHy/rVydZoDmNiLS01CnihBcPynkpzo+UKv5ooY/9J6
         G+L+g019BeAmK5dR7UZc7zqPLB28WiS8qe65X55ZzDedT7vK8C/7lvYUlUEGu3ldplLa
         UwsCba47Va5xmP0V+VmRK5uwzNiXpqF3hJnEL+2nuEMjfTI6ZeQoy2p5auQo1f1lIXdi
         v6Y7YXMwWL1UqKIxsuilvyGz0/mhisFwx1PUF8DAkluEfmOETVyClqjzr4O1oQuvle4z
         atjKXTS4zEi40WVx25pqQEvyjgIAeuGLAbtjPCKs4cqdbNhq35zr68gQXI9vfyMDREo3
         J/HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=yko/3uoBkZmwXJulGEGEaCkrAjsHniqrhT2pTfXY46E=;
        b=knPUdWFmm/2suj8dzlhU/1RJvVVOMpbWYaM6NZ4KA5DHM2W42KHTiwVd+0VvXZIwaT
         RV0nUqrsVilw1rLuXThI2AN7nS+osReAf9qrLk9taqmz9YvzrxeOdSf7HurELgGiQmtq
         S1Zz265OBJtH3vpJm5t1IAQ1EMxUDJK/kjiLeKta1aBsOMbqiQ8RYTu+U0afL3whH5B7
         GzGrmmwq/iNFjSgf5erzQZQPpPGQv+sq2zJtR6UgG8OmSCH0f91Gm2VSoVqSC1mTnSRV
         YoVYAWDYc8I5NfVhV2oYsh31G7cz0jqBifJvOQ2QjsCqy7QX0VD3PsA1ZTvs1ulRWbIO
         IAqw==
X-Gm-Message-State: AHYfb5js+rdHmJ3XwtMg8//f6ISP9kj4nYpsqzlkOcHJraRhEbSTCQK9
	0+lM30CfCkwqUn68QOoJfB2YjiGH8g==
X-Received: by 10.202.117.74 with SMTP id q71mr515173oic.276.1501805291615;
 Thu, 03 Aug 2017 17:08:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.81.168 with HTTP; Thu, 3 Aug 2017 17:08:11 -0700 (PDT)
In-Reply-To: <20170803181757.4892.22231@shiny-2.local>
References: <20170803181757.4892.22231@shiny-2.local>
From: Jase M <magicsbro@gmail.com>
Date: Fri, 4 Aug 2017 10:08:11 +1000
Message-ID: <CALGZ5rc=zKbEFeqsL0N-fefJY13wTqHQJEg3Dm+qgY5mBruw4g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for magicsbro@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a1134fe6eedbc9e0555e24a49"

--001a1134fe6eedbc9e0555e24a49
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept the terms as outlined in this correspondence.

On Fri, Aug 4, 2017 at 4:17 AM, <kurt@seifried.org> wrote:

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

--001a1134fe6eedbc9e0555e24a49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept the terms as outlined in this correspondence.</di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Aug 4, =
2017 at 4:17 AM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org=
" target=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">This is a confirmation email sent from CVE request form =
at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">=
https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can&#39;t use the da=
ta until you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div><br></div>

--001a1134fe6eedbc9e0555e24a49--
