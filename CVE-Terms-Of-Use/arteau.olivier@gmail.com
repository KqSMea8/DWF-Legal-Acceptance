Delivered-To: kurt@seifried.org
Received: by 10.79.67.129 with SMTP id q123csp2731665iva;
        Wed, 10 Jan 2018 11:20:46 -0800 (PST)
X-Received: by 10.55.118.199 with SMTP id r190mr26136561qkc.99.1515612046561;
        Wed, 10 Jan 2018 11:20:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1515612046; cv=none;
        d=google.com; s=arc-20160816;
        b=JwEBX5ImrpeBL3wkzEqzFivDc/IKBMJ6uf/UiOEV8jR1qwt1FqjATofIQ6HMCh7Ixi
         ZbDZTe+FOwDtt8/tX4wAHq1nS8itC3qBaifwG/pLALYtg69EhBKMLXCptgCvmUM89buz
         I0QBJwV1dxjrKyQdA4OacoXrsU8NUBjg05pWUBNE4H4gQ0Xq4Bc4B0PuHaGbQAVYHBpj
         TlSjCZYcEVDiU25KiNXbuSjUUJCaNphbRbQSxg4rDDTtEevP+L2xotgyJLsoua48cY8d
         0zuKfNspI+DoddPoA5G9lD2XjW1jCPGWkxXaG9PPMUA1/oWiLRzVqzgI84A962CqOnB7
         1mWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=G0Raee4B46W9zBg/PrJbo3n3fpnG45uG4cUz8Ku7jUo=;
        b=shQCase0uFx0qZJVVvNHLMI5cb+6qULKdVj1oUt0fUsBbdWMQw3XQlgvGKsjbqesM8
         3Guy/40zgwfB2SQL/br0DCSOp2lKeEdGdbZaCRUp0Q71e8eJXzSSgf7CFK2uhse9cwC9
         OQjgenFMoTIMsf0FwVbkqanbuhSzv6qpLdJN6PmbP1x8Wqmp1oyLdixFJZkN7zPOYYa8
         QoSmBDGnjSmf/QlYaidpdyfagqtaq/27QeHGv7essAxAt1BhH17oSIcV4kSaSrA4nvqO
         KUvQux2VWpSzBGhS/SeiPXynGWqR5AG1RLIA+o+BtV0LIno5XF8xdOkY/gozY4958v5z
         ahtg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z8Z4/vl5;
       spf=pass (google.com: domain of arteau.olivier@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=arteau.olivier@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <arteau.olivier@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id s53sor1085759qtj.70.2018.01.10.11.20.46
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 10 Jan 2018 11:20:46 -0800 (PST)
Received-SPF: pass (google.com: domain of arteau.olivier@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z8Z4/vl5;
       spf=pass (google.com: domain of arteau.olivier@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=arteau.olivier@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=G0Raee4B46W9zBg/PrJbo3n3fpnG45uG4cUz8Ku7jUo=;
        b=Z8Z4/vl5AS/YhXUpNDNkoUL0SLCfVyQ9ZB1r4i9XxJFDVuF0QfOs9VcA6ztIeQeYCm
         IUD7Xi95oyU/spkb2MrfYHAGC09EIBfee8DhJF+UUapyssr7qCIrKUNDLEqaBxp1dteR
         3p/caNZDv2FfDMp5J9uaqPRrf+jWWOvzf0aLWsHHT+hWRbqeeNEKVA5RLHsI55yw645Z
         7i0oFgA3PihhacoTQchJdm1dsqdhYc9Zg94WP39bDVdkQsgLx2CjfNBld0zCb2TcXqH7
         tCGUtgP5ExZV5KUX7a+ZOleBlD5IKqNMBabFMjgktN7OBVOL97ZUlHGX525Sfqs56uYV
         PhiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=G0Raee4B46W9zBg/PrJbo3n3fpnG45uG4cUz8Ku7jUo=;
        b=dA7jIWcxhat6WyOqpFHjYNAOf64cKFXVq22Ii28r3lcxYlRRcFjR/VFVZ4HImI5SMT
         kVHd9Kk9RkdDkbtrVJHGOB2+2WzfaOgj1iLeH9Veyx2rXOrtBjSEZKxxNWlj76mLpEqi
         2jA02XXfmdD6j6cg2dr1G07lounl1wFJUzUj3WkwnbR53LOF6kBXdXPOzNt7Wh1TJYqP
         R4+IEdZaxHWiQqFwijqV03Xf1/UtFUmsiEysG1Ohx0tg7Xg9sCdxPgHGFKk6b88PUgx+
         INtmlEfRx0gE+nAhQ8XQqAbid2vfOjbB2diViAbzZ4x91OswolpEgIrDA6X+ANmCnC8N
         9+Sw==
X-Gm-Message-State: AKwxytdqRL5FqpvS8R+QmhYS2hOvv1qgaD17A0y4q4N9VSZ0jbAXysjW
	nr472h0suAuekxSqPispQuWP+G2dMC9sgOaCHTokHA==
X-Google-Smtp-Source: ACJfBosIIiEwyL5MmhRCpkhRyjoJciJPKSVFOnaCub5OZLcpTGKBvVnqIUd252t87OZp3bbpk1PK0eqNRXNAVzhQ7zg=
X-Received: by 10.200.45.40 with SMTP id n37mr2875418qta.331.1515612046128;
 Wed, 10 Jan 2018 11:20:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.97.245 with HTTP; Wed, 10 Jan 2018 11:20:45 -0800 (PST)
In-Reply-To: <20180110191242.72975.41200@slab.local>
References: <20180110191242.72975.41200@slab.local>
From: Olivier Arteau <arteau.olivier@gmail.com>
Date: Wed, 10 Jan 2018 14:20:45 -0500
Message-ID: <CAMC10zTR+rxAKPwaUV08spRuJ=87B20EGHyEOoOT8_fLyGm6cQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for arteau.olivier@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114526aaa0866a056270ed48"

--001a114526aaa0866a056270ed48
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-01-10 14:12 GMT-05:00 <kurt@seifried.org>:

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

--001a114526aaa0866a056270ed48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">I accept</span><br><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-01-10 14:12 GMT-05=
:00  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_=
blank">kurt@seifried.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
This is a confirmation email sent from CVE request form at <a href=3D"https=
://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.o=
rg/</a> asking you to accept the MITRE CVE Terms of Use (assuming you fille=
d out the CVE form and want one, we can&#39;t use the data until you accept=
 the MITRE CVE Terms of Use).<br>
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

--001a114526aaa0866a056270ed48--
