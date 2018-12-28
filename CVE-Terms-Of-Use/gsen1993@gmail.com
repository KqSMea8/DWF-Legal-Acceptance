Delivered-To: kurt@seifried.org
Received: by 2002:a4f:ca81:0:0:0:0:0 with SMTP id n1-v6csp2195787ivl;
        Thu, 26 Apr 2018 07:37:05 -0700 (PDT)
X-Received: by 10.46.151.151 with SMTP id y23mr15809323lji.52.1524753425742;
        Thu, 26 Apr 2018 07:37:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524753425; cv=none;
        d=google.com; s=arc-20160816;
        b=aWPG4eKlHL+tnXu2qpIGayDi/BBdq7L6mkGvuxr1q+Rjk3mHAbv1PWtR3GgBCo9OJG
         P/G4LQ5CFYKt7xipnxS7lz08cnlah83leKFG8fjunzwfjrTV/42/rHaME1Vk7/OMQFSe
         KOYXgb+eu66PEJOlXvmYXn2g1IndLeMCV+Vuhsx9P4RN2W2J8o6uT+rSLjrUD3rslKeR
         sT+lWhcQgqFMpABALROqgJCOySHPChNjlUYJfBo+Whsm1wz6Qviz4+gJB9ieKpcSETys
         LyjtCNCPdo6C1ss3190l0+Z+NI9R+UUWFrG0Ayffmgrt+spqS/7V1IlkzNtBft/hHNpr
         vF7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=R8sRJ3GoQgNuyIQ0tgU9jwyLwjQ03yLTGzv32wwN5Jg=;
        b=ZTscZ2X70PIBHBN12vW1PgBCurUpAQBww7Q2K66AC95OJMauNO+jUgD01B+0w/+XC+
         LUyLjCgvmaT4aJe1vXBI2xVC0HLpbuAnixlHbMp3lYoA3jvTuh+xpnhFyM1rU9vxiOcn
         Ay32OlqXrkfdM1L6rOi6/YC/zfGSEO9RW3A3zCEnJ5jM9BXnJVXieVZsysQlg37oZfWz
         hnhOsoESYv2B2AT6XxFOWrueLhYw6X+7xF3sE7qCgxGmfHdPh8qo3XckAY7ifaE1fJXB
         Zb/73b7gWyrQDw9/FhYQtubShv9wJMf868OjRVBhTOTnBk7TfCKhXQsg4jm7KYvSxjco
         ug5A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qoncfhzW;
       spf=pass (google.com: domain of gsen1993@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gsen1993@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gsen1993@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id j199-v6sor4762084lfg.106.2018.04.26.07.37.05
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 26 Apr 2018 07:37:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gsen1993@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qoncfhzW;
       spf=pass (google.com: domain of gsen1993@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gsen1993@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=R8sRJ3GoQgNuyIQ0tgU9jwyLwjQ03yLTGzv32wwN5Jg=;
        b=qoncfhzWnpslJEFvN43Y5L6Z/kXAgHsxs9xVXrgh7L4suPUQwGD8DTZGUZVPUYwO3c
         nSrozVfQv9pmNzWFqvy4km7UoznfZjLSeWgeqsH1ce25WzmbK97BKxd8O6lBHoEMw4a7
         fXP0n6mx0p/AQS3AhIzjGEgwxBFII7v7sMTAspIaUOxnMPLSqXwg4AepFI/H/UnQl25s
         H/yYiYVqu16j+WWsSjHXM9MFDCOCEbV/d+IvR4QIIRI83Y/MeuNC1sk3iD8arYbNjQSv
         mqKOcDyKSZ/IN2LS0bwKGQLA+gwq8rCbPK3+qeKrDJI4dVIQxRLrTyZCcct0FYNHHFNe
         NcHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=R8sRJ3GoQgNuyIQ0tgU9jwyLwjQ03yLTGzv32wwN5Jg=;
        b=h+YpGEP4G0STMwybZ3pX5nPe/PKCy5z2PepmCUFBJIWQMZu6EgZXMY5N94AtM6OUc1
         ZZ5DEaSpiWU5BkYdIFNW9R2XvwFNYOPGvObsyVufzQ1u863Hv8g7uM/mRcHqtNovMHFY
         4DxN2p46EWNjW2t9upr+qOrE2l+DvoBH6jWwbh70lrwyM2hJpyg4rnRKETeX6YDuwjrB
         CC4VQwu23Rh/Fz5SMXUdwdwF4HBiX9oFkNF/8P17pstAK2QZqYPQuH/YlgQ26SQ20iB1
         AY350yQiOViyzq98wRuVXzKcBrYPJCGBb2It+AVTJCDenOPfX3hbBcMElx2tkieB0dKh
         b3WQ==
X-Gm-Message-State: ALQs6tBi51L/kDCRKUlm9iAKD+TFWU50DILAGAu1kHpT7xRa6zaSjMWf
	zodEDhcVYbcLnBLzBclaNgfAcnMe9590asdval5yZg==
X-Google-Smtp-Source: AB8JxZodQTcn5K9B7NXykVxSWKbdU0lY8AnNy1/+8S7bzn03NDK7nonizn4dd+Ws8OqMCrfNbSzNPw8Samk7wi1yxso=
X-Received: by 2002:a19:7303:: with SMTP id o3-v6mr17040136lfc.48.1524753425236;
 Thu, 26 Apr 2018 07:37:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.29.198 with HTTP; Thu, 26 Apr 2018 07:37:04 -0700 (PDT)
In-Reply-To: <20180426143444.43285.39988@slab.local>
References: <20180426143444.43285.39988@slab.local>
From: ZhangSen <gsen1993@gmail.com>
Date: Thu, 26 Apr 2018 22:37:04 +0800
Message-ID: <CAOLuyykT_9GFAg8AoUXjoy1QF6JEDbBZsu2-B+Zt5a628YO0ng@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for gsen1993@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000004807f9056ac152b4"

--0000000000004807f9056ac152b4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 I accept

2018-04-26 22:34 GMT+08:00 <kurt@seifried.org>:

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
> This data cannot be removed from the Internet, or from our git repo. If
> you are concerned about your personal information (in the form of your
> email address and any attached information you include like your name)
> please do not submit it, setup an email address and use that. I cannot
> comply with GDPR requests to remove your information due to the nature of
> git, and my inability to confirm if you are a european or not, so if you
> don't want it in there, don't reply with "I accept".
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

--0000000000004807f9056ac152b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:1=
4px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">I accept</span><br></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">2018-04-26 22:34 GMT+08:00  <span dir=3D"l=
tr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifrie=
d.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmat=
ion email sent from CVE request form at <a href=3D"https://iwantacve.org/" =
rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you =
to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form =
and want one, we can&#39;t use the data until you accept the MITRE CVE Term=
s of Use). <br>
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
e accepted and so on. <br>
<br>
This data cannot be removed from the Internet, or from our git repo. If you=
 are concerned about your personal information (in the form of your email a=
ddress and any attached information you include like your name) please do n=
ot submit it, setup an email address and use that. I cannot comply with GDP=
R requests to remove your information due to the nature of git, and my inab=
ility to confirm if you are a european or not, so if you don&#39;t want it =
in there, don&#39;t reply with &quot;I accept&quot;. <br>
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
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc. <br=
>
<br>
</blockquote></div><br></div>

--0000000000004807f9056ac152b4--
