Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp1874935ivb;
        Sat, 18 Nov 2017 08:42:57 -0800 (PST)
X-Received: by 10.200.4.7 with SMTP id v7mr14398156qtg.129.1511023377472;
        Sat, 18 Nov 2017 08:42:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511023377; cv=none;
        d=google.com; s=arc-20160816;
        b=oXaSIrprqzl7WdjhbkkhCuB6sr6cSHP3eywL3TO6ZFqEnrnsxo16JNGyriI7bPCQV3
         2e63TGvCrklK3q+YxwtBHbYxQz3UUGgT6u+WzMaKElOcKcXqqdGn4ZxKth79EXdx54+O
         2dvcVDLBKXdGr9gt7JEEgtUufPKwlkpQMUc7gEf+eHiWKoWGU4SZVITZutrxTE4N7kzj
         bue6UjozQXE1wxz/j2nNqUq5HzHyZkBrqpaYT6RpKwbhWHQE2kr2ybNKGeAwVJbX6daQ
         /yN+Ce+cSZybkgCGWqzMhCjZmHL3wZLEPkC7tx8sbJ92TYQLkAEA7DBJLdiOEplcR2mG
         N+cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=rDiM5ntDO8O51Jw+TqIabCoqeKYaIscGFdMzt1W7RBc=;
        b=GUmKiH7GAWMyifTNSCJM8RtHgRTgG/t1kunny5MWyCb1qVZPggbwvAV7KxNsnaPxuz
         37FkizZR3EpL4p2uIo9PFGYhwMvsd4kTtHUXxKTfVhh3mrB5kS2caJDkAXQMiYNEJPXu
         rLrapmjXKjKk6uElDa8w44dLmzmrdf9s9YyedKu0PFQeDqbZE3tXBpnvIy4eE6969zAz
         aFT8A4FD0Ug8Gk1s44U9SD7RdxRDe11dkZ8mZcMVLyR7dreH4ckXNS/iCooKE3ZfjGAS
         /VZg5Fy0YYd3SoQf6fypfSlIpchqxGjGR/IB1w5Rh5ojSCno+Q3MfR2uyCNQSTyZGuJs
         hpZQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@fdcarl-com.20150623.gappssmtp.com header.s=20150623 header.b=qQLbyuGc;
       spf=neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of fdcarl@fdcarl.com) smtp.mailfrom=fdcarl@fdcarl.com
Return-Path: <fdcarl@fdcarl.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z4sor4992997qta.102.2017.11.18.08.42.57
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 18 Nov 2017 08:42:57 -0800 (PST)
Received-SPF: neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of fdcarl@fdcarl.com) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@fdcarl-com.20150623.gappssmtp.com header.s=20150623 header.b=qQLbyuGc;
       spf=neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of fdcarl@fdcarl.com) smtp.mailfrom=fdcarl@fdcarl.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fdcarl-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=rDiM5ntDO8O51Jw+TqIabCoqeKYaIscGFdMzt1W7RBc=;
        b=qQLbyuGc2TCVuEuyJUR/slVoX3dhTOFus3ccwPVCJVzv8/BrM4CHulY6AJw5dh1WTh
         YAI7ipeD2Vtj8Dhym7xiJFRWQ7e8vFadwmNMa7bqV9LIfatt2omITAeCY9y5DZnsjwbG
         T64XnokV7m1QvYOXq5lhSV95X5fJcRHtyEVGMMozUdxPLg/outbDSt4oOewwk9oJ3Edw
         psYTouq7yHkIXRCtZ5hKD2q1o9nMW0jAHXbt5zhXwZoCzbOU8B0yGTpehogv1jby+tSw
         +L9m2P2AkzuS7po11+0tGqlza3xKU1heIgn9Q6Owl711vOZQlWAy9h3o0QtaNx0g4qTH
         U5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=rDiM5ntDO8O51Jw+TqIabCoqeKYaIscGFdMzt1W7RBc=;
        b=WP0M8rM4sI1H54q7p/dl9aQcNivInZnCxE9XKrSyBRf3DXvQ7NUH6wAZhDZgofCb9S
         qgVH0r67BTqNqgfKXz7a0RYy1cU26yjPNHw8lnVAD5APQ5WzQcX7Occa99WA+2YUQWIA
         Aez0OxNab4APMhwhLQUod5XF0ELwl4chl8l8OvSBRveIdvkAL2pWK2i15b/EEq6ZUYs9
         JgJYZ1dqJWBSvh/yx+M5LhA7CqI4SHh7hso0+zdZ1wXld79+IJy/641S8Rm5V4eJKD4x
         2ZswV5stK7qzgHOfwDWzpISDfu3h2jENY86lD9j5NfgTcZniQLbl0VAgoRC+3vFyqFYk
         Nq8A==
X-Gm-Message-State: AJaThX7I/LMvrsc2bxXdzHr5661TzaVDv12Iqa2CPCnSn1zsfeZKEXPY
	4/28IAANHGzsEkjGdAzySlQh0+p1XJ0Iw4AFEpOYAg==
X-Google-Smtp-Source: AGs4zMYCTxhR4eCNKxa/jsoiFPQVuzRAugrVtsnCmzPuazIr8Hgs8mdneTN6E4fPxHLk3e5l15hdTimAmVyvZnp0GZA=
X-Received: by 10.237.53.78 with SMTP id b14mr14121177qte.106.1511023376898;
 Sat, 18 Nov 2017 08:42:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.38.189 with HTTP; Sat, 18 Nov 2017 08:42:56 -0800 (PST)
Received: by 10.200.38.189 with HTTP; Sat, 18 Nov 2017 08:42:56 -0800 (PST)
In-Reply-To: <20171118164139.64559.46818@slab.local>
References: <20171118164139.64559.46818@slab.local>
From: Fredric Carl <fdcarl@fdcarl.com>
Date: Sat, 18 Nov 2017 08:42:56 -0800
Message-ID: <CAD43YSUcsM+6N2RpojS6AcYCprmObdD0mFBk6mPqukW+fWBWaQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for fdcarl@fdcarl.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a11c00d58a0afe0055e448bd7"

--001a11c00d58a0afe0055e448bd7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Nov 18, 2017 8:41 AM, <kurt@seifried.org> wrote:

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

--001a11c00d58a0afe0055e448bd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept<br><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Nov 18, 2017 8:41 AM,  &lt;<a href=3D"mailto:kurt@seif=
ried.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockqu=
ote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">This is a confirmation email sent from CVE request form at=
 <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">ht=
tps://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (a=
ssuming you filled out the CVE form and want one, we can&#39;t use the data=
 until you accept the MITRE CVE Terms of Use).<br>
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

--001a11c00d58a0afe0055e448bd7--
