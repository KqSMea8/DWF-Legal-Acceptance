Delivered-To: kurt@seifried.org
Received: by 10.79.37.80 with SMTP id l77csp34579ivl;
        Mon, 2 Oct 2017 20:36:00 -0700 (PDT)
X-Received: by 10.200.39.13 with SMTP id g13mr22155460qtg.234.1507001760873;
        Mon, 02 Oct 2017 20:36:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507001760; cv=none;
        d=google.com; s=arc-20160816;
        b=x/xUeu7BT0Hv+8hqbXw+qHe4Ldu09+rodd+bp8uZB8iEU0dIYDJ74tMqlkQGYJklTX
         kc9JHG4FR8p9ZTnLBojQmHNkVQ6kJCmOHRgw6DFF6srwhdtri1BoX5uGglkkNJMw3enl
         qJxFfkbMkun3oJwjje9ha8P8aEld2sUax4hhyC6N9oZILjIjegXglAvElriMrl0naTKc
         rU2h24iCJkDeew1AOflvfooY4VlutSFzLy7dwMofL8QXCR2auffPtc8KvWCUzXRxts8I
         FuSZN1mAMxk1imLjAZi757FKwbiPBRSBt/OkoY5QsSuqwMXsS+g6wqIT0y94svjFZtBB
         PpIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=yMmpatDK6//STD2Rz/qX6RuePcxxzn8POmx2vNB5W3g=;
        b=QSx9ZXL8CgY5jGn0nffcibuXx0SAxaH3gjNpdHgPmv68vt/La2ArENTkmsfYhy1NXR
         TUyD0YRUySRmvqdNArqdRUyk86vVAfz19HV6cSY4I/XBQPl017RYUmQLOsBC/HvzZ6vt
         WhvvpbJrDS00epqGQhbv++c2xKMV1Ya3XmCHYxY6IRB4dSW1gs9gSsuHvSQvRVx2K0TD
         EODnXG/c9Y6dq9nO9hVKqn2y5nGVas8lMxxC0tfyTrKOUGWWZvtM6awEqCwYdiGaBg2B
         bFl7SQrLjI7VlMWV6ugyG/xoPH7X8GazwRT5t42CgKSvr/TBV0+uwJNZ46LZ89I2bcOV
         L10w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V5eRvczr;
       spf=pass (google.com: domain of abiralshrestha100@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abiralshrestha100@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <abiralshrestha100@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p11sor8557145qtg.39.2017.10.02.20.36.00
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 02 Oct 2017 20:36:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of abiralshrestha100@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V5eRvczr;
       spf=pass (google.com: domain of abiralshrestha100@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abiralshrestha100@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=yMmpatDK6//STD2Rz/qX6RuePcxxzn8POmx2vNB5W3g=;
        b=V5eRvczrVTHYbFYkKB/OeM0Nh7uPu1FwGfdpZLOGRhAiCFSe91a+oH44rCS7EgLDHX
         Vlh66LTGJFMtBQQSaYBsnCHEa34tyTanJM1DHTBCB27fNKWQgCAqZBmLvSPlFpaC9EnJ
         NQmtPQmj9w/8/zh4DrB3nZ81+hH7G6+Lg1xJipaD+oI5q9cRMzcg4pIID5V8sPa7ofaZ
         vQsz00Xy/fNe+4kzNP1+H11pRrmNpuN6VThc3oXroIhg/wHV6mWHCsjz89YrL6rvFy2F
         zyjOGs7imOfGlr+FGVTcN3AzHzIB5AL3o8b35lHjUUoT4RR2q89l6KEHZ/YyIlmef7uQ
         dzCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=yMmpatDK6//STD2Rz/qX6RuePcxxzn8POmx2vNB5W3g=;
        b=jMj2i41ggtuy08CipCR8V503acUdAZxJKUINEd8kCNenFYDZTy80/IlyGFy3bjEfi9
         bkcPJ/1F6y2Aa2jd8nEOVPIRpoPXrmbMDcT9nZ1flxKIwbBISf+30pKd+xLcgyjE6UN0
         4Y6gUcpr0lmI9yJooIjq2OW+YeMXrahY4AbpLk8KP9juqEiST/hYwldczYZsnyIALWty
         TAr0nXD2RpaQnuubQewQ4u1HeolaeX/M+KPCLVlFuFUpfVtMFs9e1+Su1PY3glUq5UCm
         CdKl/qQq3uh6l4eufrItlKsKUjnAqsvVLQu2iBS1zamXwQFDK6E74PqdibvFZ3tQCB3J
         p8wQ==
X-Gm-Message-State: AMCzsaU/jD7VqlrR2+RybVPu3ZMp/NQZuUR6ACNMODXjdoy1opOwT5Uq
	fQxZLJvsZiLht1nT9i3CbiYgwo6btUyWe3y7dppuyw==
X-Google-Smtp-Source: AOwi7QCgCm4+ske0JY48DHNvkzYLgLBi9lGAWmgHZiZUWPQUWsOZevSkHNvn03S3C8lnqPEAZfCnnQldqFK7J8S9GVc=
X-Received: by 10.200.46.58 with SMTP id r55mr3867363qta.244.1507001759985;
 Mon, 02 Oct 2017 20:35:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.200.131 with HTTP; Mon, 2 Oct 2017 20:35:59 -0700 (PDT)
In-Reply-To: <20171002202239.11491.908@slab.local>
References: <20171002202239.11491.908@slab.local>
From: Abiral Shrestha <abiralshrestha100@gmail.com>
Date: Tue, 3 Oct 2017 09:20:59 +0545
Message-ID: <CAKkZfN1+z2LQ6PFA1S-Q-=fri4PHtA=iBz=amFu-Y=FPFH8Uyg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for Abiralshrestha100@gmail.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary="001a1137b4409472c5055a9c301c"

--001a1137b4409472c5055a9c301c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept
"
This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at https://github.com/
distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when
they were accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically
in future (you'll have to manually ask). But again, if you have no idea
what a CVE is then you can ignore this/ask to be added to the block list
with no problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) an=
d all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-
Legal-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.
"




On Tue, Oct 3, 2017 at 2:07 AM, <kurt@seifried.org> wrote:

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

--001a1137b4409472c5055a9c301c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br>&quot;<br>This is a confirmation email sent fr=
om CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer=
" target=3D"_blank">https://iwantacve.org/</a>
 asking you to accept the MITRE CVE Terms of Use (assuming you filled=20
out the CVE form and want one, we can&#39;t use the data until you accept=
=20
the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree
 to the MITRE CVE Terms of Use and we will add a copy of the email to=20
the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://github=
.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Us=
e" rel=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>distributed=
weaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a><=
br>
<br>
The reason we use a complete copy of the email is that it provides an=20
artifact showing that the email address accepted the Terms of Use, when=20
they were accepted and so on.<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore=20
this message, however we may resend it at some point in the future, if=20
you don&#39;t want any future emails simply reply with &quot;unsubscribe&qu=
ot; or=20
&quot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your e=
mail address to
 the block list so we don&#39;t spam you with these, please note that this=
=20
will prevent you from being able to accept the MITRE CVE Terms of Use=20
via the DWF automatically in future (you&#39;ll have to manually ask). But=
=20
again, if you have no idea what a CVE is then you can ignore this/ask to
 be added to the block list with no problems.<br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities=20
and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE=
)=20
and all CVE Numbering Authorities (CNAs) a perpetual, worldwide,=20
non-exclusive, no-charge, royalty-free, irrevocable copyright license to
 reproduce, prepare derivative works of, publicly display, publicly=20
perform, sublicense, and distribute such materials and derivative works.
 Unless required by applicable law or agreed to in writing, you provide=20
such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITI=
ONS OF=20
ANY KIND, either express or implied, including, without limitation, any=20
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
 FITNESS FOR A PARTICULAR PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide,=20
non-exclusive, no-charge, royalty-free, irrevocable copyright license to
 reproduce, prepare derivative works of, publicly display, publicly=20
perform, sublicense, and distribute Common Vulnerabilities and Exposures
 (CVE=C2=AE). Any copy you make for such purposes is authorized provided th=
at
 you reproduce MITRE&#39;s copyright designation and this license in any=20
such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE=20
ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZ=
ATION=20
HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION,=20
ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL=20
WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY=20
WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY=20
RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A=20
PARTICULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>=
&quot;<br><div><br><br><br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Tue, Oct 3, 2017 at 2:07 AM,  <span dir=3D"ltr">&lt;<a href=3D=
"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">This is a co=
nfirmation email sent from CVE request form at <a href=3D"https://iwantacve=
.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> aski=
ng you to accept the MITRE CVE Terms of Use (assuming you filled out the CV=
E form and want one, we can&#39;t use the data until you accept the MITRE C=
VE Terms of Use).<br>
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
</blockquote></div><br></div></div></div>

--001a1137b4409472c5055a9c301c--
