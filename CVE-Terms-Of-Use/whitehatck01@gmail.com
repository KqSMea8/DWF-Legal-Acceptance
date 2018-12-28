Delivered-To: kurt@seifried.org
Received: by 10.79.17.3 with SMTP id 3csp1591987ivr;
        Fri, 23 Feb 2018 23:42:35 -0800 (PST)
X-Received: by 2002:a25:5e55:: with SMTP id s82-v6mr2933436ybb.301.1519458155175;
        Fri, 23 Feb 2018 23:42:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519458155; cv=none;
        d=google.com; s=arc-20160816;
        b=WT6haeNGBq7nqoame2XaRRtM8aP33WKMREYZSQIE6Q6VjzaVrgLMBU+bPjOuQQ//RN
         1zy+q+OjcNtjFYbC7H0W2AbmczQwLbdHoK9hS4KJPKHBaD+lBqWZHYwkAktT3OAsan17
         ncsTOv4ZbmVuljmCgZIg7UHm3P35i2aldOGKCbFwYYfFUzY6VYPbc0aGbY3iVUsB5ALz
         DixIPlWvjPb68LGGpUnLer6s5Zygwl3cpTl5dP2JJRnF5jHVWIo/G2Vwxc1DXc/ZH2DL
         bAcKe6ybWYop4Mi7nxqzARBGjfzIaWoX8RWVgI4Wp2XyuHaV1qYXXWfVRaVTpSm2oB53
         0lVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=8wPvQaz5qRevH26cDi+Ha0wloVXcTdKfPn2q3+PPmbE=;
        b=y1NdS+m4Z7y31yP2LCraEFNZVpOrAzv32RMQUpitSlY3E5qqxpnSOheYjFh+y0kOcH
         8EBQyP3IwEx2ceMniHs68+bbtPRo4QvddQkNKDHM4GGFhS7AOe8xgIbX6rn3pswCm665
         KaSXzkL/C2V+pAMmAPlXTrXDmZTDtubsSL7ETvzuhRtlxtGiH9olFHV781eww+16HBs9
         6puCCo5KU7brPMfRkZo+uwI0f7I9WyjwC19XVroJgblpvTh/nvkTWBY0b7l1+jzCjlXW
         RroF16xoUN7f/1Uh5n8RxOxQlbqmxZJGapCkEULEO7t0+GRGA8uxW/gLMFTt/1JdtgjG
         PHUQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gWdcJr78;
       spf=pass (google.com: domain of whitehatck01@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=whitehatck01@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <whitehatck01@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id x18sor1629781ywx.548.2018.02.23.23.42.35
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 23 Feb 2018 23:42:35 -0800 (PST)
Received-SPF: pass (google.com: domain of whitehatck01@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gWdcJr78;
       spf=pass (google.com: domain of whitehatck01@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=whitehatck01@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=8wPvQaz5qRevH26cDi+Ha0wloVXcTdKfPn2q3+PPmbE=;
        b=gWdcJr78W1kKqfmTzJOxOg/hhn7L7Jh1DdRdYnBDuqUkRH+aAYU9TDCDaE0rti5HfN
         iVIv+Hos+wFHbEmjR9y0aG72Kd+5OSBFzg5n6M1BsDvxsi5sZ6o76lYPW3vX67gZVZN5
         R6hkjzWgvtphOv/6FkECdmn4LbPG2FJ5bYIaUQWHZ3gF6GiSFw0Slza+zbGqjl8trsIR
         e5PbF/lyGWJelcQUhr/VFFC3XKmmD6lP8XsY0PS3MrMEb9ZpmdhNrlGN9BoesiVHTGvQ
         FmsiOOn5Zvs62aiZXJujEevusxfg1o+qUpMGvnGTlv3UJOQiUrcM834LZX9QUEur8EcE
         vI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=8wPvQaz5qRevH26cDi+Ha0wloVXcTdKfPn2q3+PPmbE=;
        b=gSpcFlo/gSPAZveObE7iFBFQMLxMgMQRdYkQj6HAkXsEoE8VSkKBt6T646LprO4iQX
         g3Oy4VmmVsaeEqQflU/L30X9/MmFTS9BJffVyy606VjhESwBx1RY8ZS8gtth+C0ZYX7+
         PBN6XoQ/8JZMs43JkT6On6Zs78B3W0dmjys8aVikkhWtIx9LmRHLo/KK6r/FxmjuiwUv
         Np4VsV1Ec6pc/96ReuPuCL/EA7u5jnk00E7YlqlBcLgpia2G9vJyCC7+vaKgAotgzZHz
         6n6UlSjvRfJO34dHuAkRlgT7SJPKwQ8wmHwxVqTBTPEbpcklsD2D1V6JsbQhxDgfVRY8
         dioA==
X-Gm-Message-State: APf1xPBYTpMK3Pt9ywAZNY4gUit/LMsDDkAkDHdQEKYzFfRmpw80wgR1
	7+1yru0gpaCtCt+Tjpr11NsRjUGpT9Iw04DSyh3xvrob
X-Google-Smtp-Source: AH8x224riPcqsMEUN0DM9roxc+9WCio84bn5XBvTObFalUWo+WZ7cmo3xONl1pUZDOdenItmt2TLfVRyglN8r3NJgt8=
X-Received: by 10.129.91.193 with SMTP id p184mr2147357ywb.434.1519458154746;
 Fri, 23 Feb 2018 23:42:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a25:c404:0:0:0:0:0 with HTTP; Fri, 23 Feb 2018 23:42:34
 -0800 (PST)
In-Reply-To: <20180224041458.2287.11855@slab.local>
References: <20180224041458.2287.11855@slab.local>
From: =?UTF-8?B?5p2O5Yev?= <whitehatck01@gmail.com>
Date: Sat, 24 Feb 2018 15:42:34 +0800
Message-ID: <CAFDwJ+r7ngqtRcJBPfsJnhR_MHzYwucXvVZs-xxR30nyt_FXgg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for whitehatck01@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114c8ee29098040565f06bd2"

--001a114c8ee29098040565f06bd2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2018-02-24 12:14 GMT+08:00 <kurt@seifried.org>:

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

--001a114c8ee29098040565f06bd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:14px">I accept</span><br></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-02-24 12:14 GM=
T+08:00  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=
=3D"_blank">kurt@seifried.org</a>&gt;</span>:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">This is a confirmation email sent from CVE request form at <a href=3D"=
https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwanta=
cve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming you =
filled out the CVE form and want one, we can&#39;t use the data until you a=
ccept the MITRE CVE Terms of Use).<br>
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

--001a114c8ee29098040565f06bd2--
