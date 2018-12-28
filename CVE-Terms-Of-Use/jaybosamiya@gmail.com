Delivered-To: kurt@seifried.org
Received: by 10.176.3.232 with SMTP id 95csp2344706uau;
        Sun, 9 Jul 2017 06:13:52 -0700 (PDT)
X-Received: by 10.129.108.5 with SMTP id h5mr9200226ywc.241.1499606032056;
        Sun, 09 Jul 2017 06:13:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1499606032; cv=none;
        d=google.com; s=arc-20160816;
        b=fbZ85F3Say0o6yWWZQrwClvh4sdUUWLktiRSP59oBzJVB8/n+Di83OPbChKvRCe37q
         +1jsVIvv/F2FArP8IciioS2xsYcnXF5hxsTRddhHpQuA28hdo7vWVUZ8GcO5tdUCfACb
         6/PBol5LHFiHllUUzPgxCf4uWPZLbqNzVFq86hECRLNLpS/5YO0t5rCNMh4BX7LKExjz
         yki8G8Dn5tBsUHxQNtyubWhsrxk4YMJrAelMBM/zyMiQYuTsc8WfBTNFrvyB6GPjg4hN
         NJXf+9hW4ql+GYsShrHOGoAlC7JidxZvPgK4cvfR9AhdSfcsIII4INRpe70JKnXzt5SQ
         wT3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=c54L9ZjqZ0Nu1zvTtYhEx5ntUKdNY9Z503tpEWw2CGE=;
        b=DGsUOoDygoJkbnp9gStA13PDqjxg++6s6ZAPKG6pxldpBH9aYJS8Q/iIHvSpTqJEJG
         x9EOKu++EoNmZ/j6tzpli8GPIYhC5xhay4eb786LTfpZxN1nuvBxuizuTmPQI6RLhHN6
         40YzKULMHpvjQFCVuDKlxw6RhamJqoALdDW+0g2JHke9NdvWO4W5eLr/6V0yZom2fQFl
         V3e1+0n2FD2ycbEBq48kBp9amoa8p7ZIj/yKVLsGxs5EJFYGg4paHKy9mhiA6VrnR5/N
         2AICTIqFEzr9YXlP4KCKC+Pr7oeu+FS2D188IlLojPRDOmA0NjRr6JW3efmwX2m1rIae
         MCwA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=u5+QLqL5;
       spf=pass (google.com: domain of jaybosamiya@gmail.com designates 2607:f8b0:4002:c05::234 as permitted sender) smtp.mailfrom=jaybosamiya@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <jaybosamiya@gmail.com>
Received: from mail-yw0-x234.google.com (mail-yw0-x234.google.com. [2607:f8b0:4002:c05::234])
        by mx.google.com with ESMTPS id g84si2587603ywc.375.2017.07.09.06.13.52
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Jul 2017 06:13:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jaybosamiya@gmail.com designates 2607:f8b0:4002:c05::234 as permitted sender) client-ip=2607:f8b0:4002:c05::234;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=u5+QLqL5;
       spf=pass (google.com: domain of jaybosamiya@gmail.com designates 2607:f8b0:4002:c05::234 as permitted sender) smtp.mailfrom=jaybosamiya@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x234.google.com with SMTP id a12so27052837ywh.3
        for <kurt@seifried.org>; Sun, 09 Jul 2017 06:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=c54L9ZjqZ0Nu1zvTtYhEx5ntUKdNY9Z503tpEWw2CGE=;
        b=u5+QLqL5YuGesrsN1pPNyBT0rGjSs1KM/adJpQf+kFRemcqpDW6wMRTlYcYZ0VEBd2
         mgAWKzzjia459NSfbHzBTRDzlbWBb5F4KY4L4Og8mmTqHOkTOcSZLqaD1XbMo3TXFdP4
         IP9NUeEKiaqjRrqU8g4+ps62rQ6BlNMptk/u+pBibL539TzpvhYIu1LfUUd4N6q4qpai
         cDGmAZH32CblpWdwBN4qs4Yk08gqqR1Dn7LA9CG5osYdPhDabGfBdTCjo3cRLSwVVRBC
         6xVQsmyq+KXgLtvIaGfpMd8VPrv1I9S8RtaUyWkBDwyCV5rfmukxnehz6xsl19J5BUnb
         HRiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=c54L9ZjqZ0Nu1zvTtYhEx5ntUKdNY9Z503tpEWw2CGE=;
        b=glwBkyGI7GuqJMWc9vb+7cPRrnFksGNoULShdnknXN0eQ9ZnspT/FaAuQgksiwF9vN
         PNhKekqZ18PDprER+l8GGaFI9tcL8dKfcOYqfHC47SIff5vEEmekILSLQ41H3DqC7eF1
         D1U2kB5aihI+HpOSYqDfY1OFXObUt5czkGrAC+1QWTOgsQ9po/gey9qNAjlPYLpiqun3
         ngIiaGDsibVpft8dIvwNLP71KmjGuyRmEKpuoJpim+z7AKLWiX9O1mu+Mej5i+fLGUZj
         Pj510B5l3Vb0H5Gu1L73mTePa4gyNtPIWZ0Bc5HUzLgnZsLWHrA97z6WOXppDQj9n7h+
         ytpA==
X-Gm-Message-State: AIVw112CMwE/Ax90Mr0z0cAcLRL/idxI/L8dWrRmltzHjsfzb0SajkjQ
	6qcmEGa0ZrcVRMvV0BxcSn5YJZ8hWm5s
X-Received: by 10.129.67.27 with SMTP id q27mr8886403ywa.53.1499606031513;
 Sun, 09 Jul 2017 06:13:51 -0700 (PDT)
MIME-Version: 1.0
References: <20170709032223.2470.9702@shiny-2.local>
In-Reply-To: <20170709032223.2470.9702@shiny-2.local>
From: Jay Bosamiya <jaybosamiya@gmail.com>
Date: Sun, 09 Jul 2017 13:13:40 +0000
Message-ID: <CAOywxZhodAAOwfQfeSTopiYCrVh2UAtZCsPx1EYvJR4amVHg4Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jaybosamiya@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403045eba78cfbd270553e23ce1"

--f403045eba78cfbd270553e23ce1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept


On Sun, Jul 9, 2017 at 8:52 AM <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
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
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
> --
---
Sent from my iPhone

--f403045eba78cfbd270553e23ce1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">I accept=C2=A0</div><div dir=3D"auto"><br></div><br>=
<div class=3D"gmail_quote"><div>On Sun, Jul 9, 2017 at 8:52 AM &lt;<a href=
=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">This is a confirmation email sent from CVE requ=
est form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D=
"_blank">https://iwantacve.org/</a> asking you to accept the MITRE CVE Term=
s of Use (assuming you filled out the CVE form and want one, we can&#39;t u=
se the data until you accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br>
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
lank">https://github.com/distributedweaknessfiling/DWF-Database/blob/master=
/TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc.<br>
<br>
</blockquote></div></div><div dir=3D"ltr">-- <br></div><div data-smartmail=
=3D"gmail_signature">---<br>Sent from my iPhone</div>

--f403045eba78cfbd270553e23ce1--
