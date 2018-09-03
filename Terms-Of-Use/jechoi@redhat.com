Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp2093418otd;
        Sun, 2 Sep 2018 20:32:13 -0700 (PDT)
X-Received: by 2002:a63:f309:: with SMTP id l9-v6mr23936694pgh.369.1535945533229;
        Sun, 02 Sep 2018 20:32:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1535945533; cv=none;
        d=google.com; s=arc-20160816;
        b=fQcT2AITr0OgAJLzIufc3B3KGO2NBhfS++Uzltiju8ozsBCUtqUczLkAz7jdf5PxNH
         c2zXwGx7gnjnwvi56G+ZkddFTBASsX7ytFg006MCbBGKA/IYp6bN0p7rSaJbFzMOnmtv
         ZczLfZvmCe3LekdZiB0b5N6x0SeSXESxGjC7VdHxRyKnP9UqRQb0OfzXQ4dkXF4RfGWF
         rtHaFjrqaW1KjCpuwaRhCHmey1y0BzEeoxLE9/DlqzIg3ukCbAdyyxSXrkOq7gYVGuhR
         vIJh8HUb8Llj+LjhduMS0qFxoqVOoOCN9j0xRK4v3pcuuB8VfuHpC4dAhWg3Q+cqTykg
         2GfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :arc-authentication-results;
        bh=NP29NouDG4oKoa/RGhsayHUI9bZBVA5HQ3rgS9XhfDk=;
        b=Ltwpm7PnxDT8Zcyq84WBFWxcyh2WD1E4bAf44A8g3yXGvDKzGjRBhC1tKLji0VNIlM
         8MdoISOsEgDpi66S9HFnbrW0HZ8KPttVFeLnvAWeaBesnZQlM3kckeO5uXRU5n+ofQDz
         eSLAZPuqR2NuqW9B3vi15nomlajsfp7qANTlyq5uXz+73olXjiBybBLZsILE17PHDtsY
         YbFKpzoPvRYqIXW9UDJoQnGOv+XNkXCgieuoXwifKuHjQWCJQk/673ZfVG0DAHDAlc0+
         Q4bexG68oCXqAN8u8hgcFcJnIL6SW3kbYU7cr3W4AM13UVMMU0ktH38SkfNDm+t6n0L0
         cLVg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jechoi@redhat.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=jechoi@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <jechoi@redhat.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id y83-v6sor392090pfa.107.2018.09.02.20.32.12
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 02 Sep 2018 20:32:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jechoi@redhat.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of jechoi@redhat.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=jechoi@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=NP29NouDG4oKoa/RGhsayHUI9bZBVA5HQ3rgS9XhfDk=;
        b=OoVfiGfhNKoUmpXQmJBLRm9RKXbiwVLa4WzEPwJ/NENoTwvR6/jkJ+Vmp8GRrGRkQa
         V/ZHovhBEjy1FFbAzySEQSDyUDc5rgtH7qVFKjfjteCCmsEzwyx+G/t65rZSEJqtnsxP
         toQlBfh3j/eK5cOtwlQyK8iGBW/nietbRvF+BeWQjbk4PLEGeinrzaSi5mrBSxpo3wci
         oyrlUxHTO9aAq06b3EzNOgm2AWydFbc/8YOECpjazRJnWZNDl2f2hmNmu9lUObnPSzyP
         FUYduLsarMacowtCpceNrpggtrjiENDjL0SPBM+3hBPqTvGdQtjUzpGodi6VVuhI0lrI
         ovDw==
X-Gm-Message-State: APzg51BYUmXw8IVPHbTwf6z9PHN5CX02G1u9pPJaZZhw5IV3uPafs8yU
	5blctALUwALYMLHliICLe5WYLULeo+JllOin/QaaCCSt
X-Google-Smtp-Source: ANB0Vdaw2R5txTGXV/u6gCxZUs6jRv1clYJ27GyZOC9CjSZKbs3ejUk50BSj54gVEK7Yc6JS76PpiFV2BH6dX7a7T8Y=
X-Received: by 2002:a62:d544:: with SMTP id d65-v6mr27282400pfg.107.1535945532079;
 Sun, 02 Sep 2018 20:32:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:3769:0:0:0:0 with HTTP; Sun, 2 Sep 2018 20:32:11
 -0700 (PDT)
In-Reply-To: <20180903005736.6662.21763@shiny-2.local>
References: <20180903005736.6662.21763@shiny-2.local>
From: Jeremy Choi <jechoi@redhat.com>
Date: Mon, 3 Sep 2018 13:32:11 +1000
Message-ID: <CADDhp-JOjmg7tZKNPu_KCMTQiT8Oa3arb1AXbQ_tMdotg+f5ug@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jechoi@redhat.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000d59c070574ef2fed"

--000000000000d59c070574ef2fed
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

--
Jeremy Choi / Red Hat Product Security

On Mon, Sep 3, 2018 at 10:57 AM, <kurt@seifried.org> wrote:

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

--000000000000d59c070574ef2fed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.</div><div class=3D"gmail_extra"><br clear=3D"all=
"><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div><span style=3D"font-size:12.8px">--</span>=
</div><div><span style=3D"font-size:12.8px">Jeremy Choi /=C2=A0</span><span=
 style=3D"font-size:12.8px">Red Hat Product Security</span><br></div></div>=
</div></div></div></div></div></div></div></div></div></div></div></div></d=
iv>
<br><div class=3D"gmail_quote">On Mon, Sep 3, 2018 at 10:57 AM,  <span dir=
=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@se=
ifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is =
a confirmation email sent from CVE request form at <a href=3D"https://iwant=
acve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> =
asking you to accept the MITRE CVE Terms of Use (assuming you filled out th=
e CVE form and want one, we can&#39;t use the data until you accept the MIT=
RE CVE Terms of Use). <br>
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

--000000000000d59c070574ef2fed--
