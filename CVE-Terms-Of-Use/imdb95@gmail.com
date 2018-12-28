Delivered-To: kurt@seifried.org
Received: by 10.103.27.130 with SMTP id b124csp1259809vsb;
        Fri, 18 Aug 2017 16:12:42 -0700 (PDT)
X-Received: by 10.202.67.6 with SMTP id q6mr14648301oia.144.1503097962790;
        Fri, 18 Aug 2017 16:12:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503097962; cv=none;
        d=google.com; s=arc-20160816;
        b=lUG1B1E+zwIehNC/udGNWTkN+2iohNzm94P7orxrZWb1SlzpCN1QV8HAr4pQy5BRBs
         XeDgKOA3/xTrfRHKG9r09ydRZK3eKwsslsQfGszJ0fOZQazYipHUas7VNzXUzBEfnsc2
         giWHyuWus9abgusrjXuv3ZdOq5B+h+VqKrOQ1mZ/cCj5H+gzbTdspfbQXw58PZ+8DazE
         PNZS9knlBik4tVia63OvM6zdparitOSegDU+FnFkqXr8L4Ap20Sx9LojZxermRoXm8bf
         6QzZkZK76yUGLw7zA74sWpOjP0zcmDSpmQ624ar0WF55HOz7s3j0NWf3YjgZfqoAFQT+
         A52A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=ELv+GqcTdkxcyWsqBhFvyfU6O+1h4A+tUXLhC3R+Ayk=;
        b=jmD8pRZFbHjJznJuBXvZaMFH9zBceecs5tlf/igewla9zp2YJNOHLA7HD5i7Uowllo
         gEeH7EC893Tet7LbVYzjKXNIRBkVpn92nlhaYzTDLtCS4WY+95fFLi7w4nIrvY2ZteaB
         X84Be0ah+gp6nl5fW1t5SDoVbjeERzjr6XFG1nirVf72txmGNHidoiAVIkMTpvEyL294
         r6OC3BlRhPXHootYXtZ6RwhC4YmNUPnzx4nswePQKFM1x3PzYhHSlfGqF63/Is3aKjyN
         zk1dtDdrPq2nHMCfLvyeHZ0jtRxx0/KPeuM/Wm5K38t0nQ+ypXenx5Nc5jSaxHFoYZ3O
         cL+g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y4OsmtbY;
       spf=pass (google.com: domain of imdb95@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) smtp.mailfrom=imdb95@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <imdb95@gmail.com>
Received: from mail-io0-x22f.google.com (mail-io0-x22f.google.com. [2607:f8b0:4001:c06::22f])
        by mx.google.com with ESMTPS id k84si5389138oia.9.2017.08.18.16.12.42
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Aug 2017 16:12:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of imdb95@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) client-ip=2607:f8b0:4001:c06::22f;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y4OsmtbY;
       spf=pass (google.com: domain of imdb95@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) smtp.mailfrom=imdb95@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22f.google.com with SMTP id j32so37616594iod.0
        for <kurt@seifried.org>; Fri, 18 Aug 2017 16:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ELv+GqcTdkxcyWsqBhFvyfU6O+1h4A+tUXLhC3R+Ayk=;
        b=Y4OsmtbYL+RFm6G6VNaaDJ2Qiunq6f9fX2RG7A1/GOOCQnNLOVbF6WXQE7wjlYwTV1
         IkvpZ2ToyJX6aOjG3oPwU+LeabVz1cog8WTP0CEFOVgBZ0VKo8M2+O49BZsm6FzTVju/
         sd5ZaQCd/7dvPxsiiK+0atXViWbd4/nhUfS4vUbFo2sqe8aHij64kFjS8mAa1izghMwv
         Q5E9xTnsMkCQLYV7XTY1PSzG/gLLV/Wv3j7zfafXs/ecQCp/Uwq/xTLy14gt8liydQK0
         whIy52byWGJvH45R+YFXBLDmFpYJSGLGG+zkRDLGtqtbG0KeZXoaxT9EwmPh9bGtdqDu
         xQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ELv+GqcTdkxcyWsqBhFvyfU6O+1h4A+tUXLhC3R+Ayk=;
        b=bQssy+TMzHgbwkyexmYV3K0uq27XphLWTwdJl9KlgY8paNpeKTBEBseFlnTj5zfk0d
         sPJCJQHa2JKY4YMfubvjVS0cICejY1wLXB3GijFzDXLB2DC3MKxB5Tt7pFYR8zg9GjVb
         MHVuB2ngLYgnw55vgEfz1+eK2uj5kyEqtNqTYp1unLp/7YVL73tLejPcS8YU1Ai8zsXz
         ENz49SunitfOdX29sc7DJ1QQAvs0EtKxwTFwWTb1XhyshXXNuqZ8bdmo7lK39dDVQKi7
         /TuI1br2X8fqZLoQWlYUA+KNPk5Nfnr7DQBrxQUfMSrnmmUIaW+jPDNF9KJAW3A1fHCy
         v9vw==
X-Gm-Message-State: AHYfb5gEUKM81VTVzDN+fWflZq4a9dyub116cVlSdQh883gwKlmdIgM8
	JoGhpPbAHstTFj0bsvJEoEkDky/TKQ==
X-Received: by 10.107.56.214 with SMTP id f205mr10184864ioa.208.1503097961868;
 Fri, 18 Aug 2017 16:12:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.208.248 with HTTP; Fri, 18 Aug 2017 16:12:41 -0700 (PDT)
Received: by 10.79.208.248 with HTTP; Fri, 18 Aug 2017 16:12:41 -0700 (PDT)
In-Reply-To: <20170818192841.55281.78568@shiny-2.local>
References: <20170818192841.55281.78568@shiny-2.local>
From: Manh Nguyen <imdb95@gmail.com>
Date: Sat, 19 Aug 2017 06:12:41 +0700
Message-ID: <CAMmf60juRcSCfegCTMwjhn8YcUhCrhM2BR67XCXszb_0_0G8SA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for imdb95@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114ac8ca14756305570f44bc"

--001a114ac8ca14756305570f44bc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

V=C3=A0o 19-08-2017 02:28, <kurt@seifried.org> =C4=91=C3=A3 vi=E1=BA=BFt:

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
Database/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.

--001a114ac8ca14756305570f44bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept<br><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">V=C3=A0o 19-08-2017 02:28,  &lt;<a href=3D"mailto:kurt@se=
ifried.org">kurt@seifried.org</a>&gt; =C4=91=C3=A3 vi=E1=BA=BFt:<br type=3D=
"attribution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent fr=
om CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer=
" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the MIT=
RE CVE Terms of Use (assuming you filled out the CVE form and want one, we =
can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div><br></div></div></div>

--001a114ac8ca14756305570f44bc--
