Delivered-To: kurt@seifried.org
Received: by 10.79.37.80 with SMTP id l77csp6806201ivl;
        Sat, 21 Oct 2017 14:03:41 -0700 (PDT)
X-Received: by 10.36.111.194 with SMTP id x185mr3598745itb.54.1508619821141;
        Sat, 21 Oct 2017 14:03:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508619821; cv=none;
        d=google.com; s=arc-20160816;
        b=eXZwAurZgyupeWt5E5wp+nrUf8LP8fZvs+AtBzAVqLk599/k93noELVb9kFpKogzsH
         da6GQ8ye85ogvc4wI4zzu0ibzeet/Ilz4rbb/WltsEor6vQbm5XvwauAXvE4YWZR9sX7
         /pDBb0fktzgRNI3kPAck59pRqcVHwhHL4tC6B2Y4H0U7iY414DHPbgfZNLs1CNCc9Y3R
         tCs3ktReapLzvptg7tsGeqg22SDtKVyuukK/ksLOdakqr5cLTE23BlRWzg3T3eoqFAkE
         8zvo+UaDyp6ajVJs9fqneKSWtANuNGIjU5uxxjFTsb7ooYNi71qtH28H5bV5L0lT83C3
         DI0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=oNtq5MKSWOSmE0Jr1Z5n4SrwKXsnkcvpCC4GqhNypdo=;
        b=wVjtyHrMh+HpZh0pN8n+b2p/Sk6mIF+Z21QIvbYlc6PxuREitCMLWe3G4DtOpco2DG
         DT9w0TJfb2aEA9InImAFK0XhcfSjj4GvwlTFZDxB8jYbFD6kIsqZYbG11c7hnVDLvEjt
         sE6Yupw1fP8/mCvatH9UhOqQ71ZH9xp/hPIlB9a4deF4Tyn4OlVpVCu3m7oKXFJhR/rR
         bocGx2LJ9p9LwQVmhOMMj6XzHtDG2cWMS32PJNWWOxLlhPhdeQjYbyMzXgIRJJOduKCy
         3y0njCaDnwvb9vYWcJFnmfBgtm5pmmOSOH0x8bD3Im2JHHbqi+vPD75f3NKYyIn0J04j
         S/dg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YbXCkQu5;
       spf=pass (google.com: domain of antoniociscobg@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=antoniociscobg@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <antoniociscobg@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id g69sor1892165iog.332.2017.10.21.14.03.41
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 21 Oct 2017 14:03:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of antoniociscobg@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YbXCkQu5;
       spf=pass (google.com: domain of antoniociscobg@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=antoniociscobg@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=oNtq5MKSWOSmE0Jr1Z5n4SrwKXsnkcvpCC4GqhNypdo=;
        b=YbXCkQu5CATFhGiYETuCt8dgGmyBdKSbX5XutP9tl6JDryeyKnZjWTaM+XMrDkBwFS
         j2IsNIvXXkfERCzlnDyD33y6xPLQEuSA12iDuIS2g/DRIBmzmWDlbUlsCwLBae2l5qDg
         Dy0O74LUMHaVb7uilk23bkCj2DdplQgi87zcDvmJD1XjQtI1V0MsNwCl132qX+bEZ5Q/
         dKw47gsuzWN7dMLY1sEjKgUU6F8aDs8GtVFPZPfdc8TTUj43ganb1239ZF8CDo5zObsz
         ZNJcXPyO45uXvm73ASL6MgK1q10xuk5I0L572VxvL6Wr4+OSajkBiIx+zQR/Ky650fwf
         /etQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=oNtq5MKSWOSmE0Jr1Z5n4SrwKXsnkcvpCC4GqhNypdo=;
        b=FQ+DmhMpZxacReLqiOmkv7px566K8mPenDqrfB4nG284/Y5zSWH1xvBiuLXeqXvQST
         LOwQPLfMIhX/vMiguo+/WKIqNp5m4klXBDQP977sqlVHNnoz3pdP4Faqe1iehOl84Pj4
         jxj/5qnsPHLHnKIcHj6nwWsnJZlJkdSNHLyj1zQFoY5Fyhc1dibH0ZilQVIAvmtizMql
         3xk+qgZ64I8vaQp9cYj+KUFoPaTsq/iHW60A2l4ZQmk6cEPshgD7plxzMlX3o3VHC6x7
         KMT7cdnywZ9FvC6CTgAJDw3DrYpx7XHh0J/oGY+h6bDWiPuKjx/7XyOLolwwSNQ45rb3
         fFmQ==
X-Gm-Message-State: AMCzsaXdA/yrI6IBmZClk/dwIy58cjjiJ3bBAdzDarlfX/3N3AsuMAG1
	bpg0f4Sthdz/r5mbUNQ9DUdNvGHtFbjSxHRvy0irMA==
X-Google-Smtp-Source: ABhQp+Q3ByM6yoHKVdOboanOt0R0vDgpYE30VHzK4J0XhLkETUcuf0DlSGkcin2LUn289VwfkWN/XSqm8Gj9cDpZjRE=
X-Received: by 10.107.29.73 with SMTP id d70mr11287699iod.201.1508619820694;
 Sat, 21 Oct 2017 14:03:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.83.201 with HTTP; Sat, 21 Oct 2017 14:03:39 -0700 (PDT)
Received: by 10.2.83.201 with HTTP; Sat, 21 Oct 2017 14:03:39 -0700 (PDT)
In-Reply-To: <20171021210006.19234.2670@shiny-2.local>
References: <20171021210006.19234.2670@shiny-2.local>
From: Antonio Sorrentino <antoniociscobg@gmail.com>
Date: Sun, 22 Oct 2017 00:03:39 +0300
Message-ID: <CAGmnr+-KycAZBqGzfNHbx7v06QVWSBCPnJ93aHS7fMTfqow3aw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for antoniociscobg@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a113ff9ca838058055c14ec07"

--001a113ff9ca838058055c14ec07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On 21 Oct 2017 11:00 p.m., <kurt@seifried.org> wrote:

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

--001a113ff9ca838058055c14ec07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept=C2=A0<br><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On 21 Oct 2017 11:00 p.m.,  &lt;<a href=3D"mailto:k=
urt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution">=
<blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">This is a confirmation email sent from CVE request=
 form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_b=
lank">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms o=
f Use (assuming you filled out the CVE form and want one, we can&#39;t use =
the data until you accept the MITRE CVE Terms of Use).<br>
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

--001a113ff9ca838058055c14ec07--
