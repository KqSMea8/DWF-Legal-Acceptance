Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp2074570ivb;
        Sat, 18 Nov 2017 13:20:59 -0800 (PST)
X-Received: by 10.176.5.167 with SMTP id e36mr7984675uae.153.1511040059419;
        Sat, 18 Nov 2017 13:20:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1511040059; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/0qcK5uMQTqGy4GXDxQ6BORbHlvtu3VXwuSk++AcYYgVHDAQIJ6APhuoGS0Xz8Dut
         +zJeU8FfY+KqILYseDzqZTJ3W2ijqAufoZH2APWCEUvfqI7J/ioQUej4zN6HzLp9crHh
         4mEv4FXQT4QvT60OCe3KSZFNfx7KfrQUi7Un3KHk5H/9Gd0YxiHu+ibc+oVLxC5xBN8I
         5DLAvXrXl+TwDIg2EtitA25I0+QFgZf6ETKOsextrkK48PA981oYrtpAFT3hW+Vwuu4A
         kOxGZMsF54008dCOTT+q1ccbQWcE6u6kjyRBls3bLYgnr3RgxfNFVX2xUDhYCBZoL+It
         JY+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=CLTO+hFnvFyfp5gjAuXxnuu9wo+O8nMoJLJob4FZ5zU=;
        b=ycvL6s3vRkI46aCNewfl6pFL9oIivlrZGdt6p4jeycRtiGIkaS9SHFnw499Vj6Ch8N
         xf7MHheEPwNNtBDjIiDQBQRJa5zz0PQAFKUyWb7S+yakZKpdbUTmR+zw132tQkt9qDnk
         sbiHNSkybErrDmrvXQaN1/XKQWy8aksbah9CKG+Oc5p86PytdHWyyClM4tfWzT0+BKUN
         m36lkEOMXGpbEZzOXcjqmXKLz9ZYLh1eXwdU2ReX9LWyGoryfFQCeA2q6qhaVKEm32AV
         Jw51GV5QnR9BQWbP385PTuhgieNNJVLEl718VE5veHsGNXgV2cybiBGiJaJ9QXkj/2Jl
         5FmQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@dragos.com header.s=google header.b=YRE5XIpu;
       spf=neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of rwightman@dragos.com) smtp.mailfrom=rwightman@dragos.com
Return-Path: <rwightman@dragos.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id m39sor2382824uad.135.2017.11.18.13.20.59
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 18 Nov 2017 13:20:59 -0800 (PST)
Received-SPF: neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of rwightman@dragos.com) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@dragos.com header.s=google header.b=YRE5XIpu;
       spf=neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of rwightman@dragos.com) smtp.mailfrom=rwightman@dragos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dragos.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=CLTO+hFnvFyfp5gjAuXxnuu9wo+O8nMoJLJob4FZ5zU=;
        b=YRE5XIpuM0ExIVZcUoL6PEvizSUCoJtZ+D6Aj8g5Xy841RtGxzD3Usr/az7wr+8zB8
         +lEiAkt3VZ3hs18aOT4qVhdCnNrxxSR0owRAwirR22MewEplWE27cOVcXGqCROzkpUu5
         3W2offS5LtbqPereGGJ68tszkKMuZaHcAoiaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=CLTO+hFnvFyfp5gjAuXxnuu9wo+O8nMoJLJob4FZ5zU=;
        b=V5M95j83Bug5jtkjQqSg/uniuNn4sYCIC3M8+A3NH3CPbXLEa7OdLS1k2ij4GvMofJ
         K6btfbZHJtjVj7/Kex7bA2oJwcKN5lth1QXgzQtN8glXUz6Yr3GB53TzlDeQAGr/gfdZ
         yLtPd00jehyJEbgW/hKdSicpEHe4s35qbAFy4ZMlHAoFRQ/86vGtzK+DKF7Bmvj7FVuo
         XJ5T6eKLnCLpE12zRXNq8JN7Ap3/tIideZLPX6jIjPqqHSu8Ro9LO/Pd3Sm88emwjnIl
         9C91TnAM7LLnYBUkgD/IX1EWq4Thfw90sEkyx5kOvD3phQ0rD9MB38ypjvkFTfZ7+Rw0
         /Djg==
X-Gm-Message-State: AJaThX5I8/Dc9ZeusbrAq5cLqMKfjaKmfh+7T/P2+N0C+cPiFkHZ79OF
	usQ2yJ8t6Hzt4621HGew4C/TgobAOVWyJbEQpIJbOO0y
X-Google-Smtp-Source: AGs4zMaH1ObAO+vswcFeE9EUW7hU7jGxfKsgo/TkiPHnN9rHr6qoEu5cngqbO50bW9eijy/vj+NNaqzLHjtXz4/zays=
X-Received: by 10.176.73.45 with SMTP id z42mr7763811uac.71.1511040058853;
 Sat, 18 Nov 2017 13:20:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.134.216 with HTTP; Sat, 18 Nov 2017 13:20:58 -0800 (PST)
In-Reply-To: <20171118163932.64559.40550@slab.local>
References: <20171118163932.64559.40550@slab.local>
From: Reid Wightman <rwightman@dragos.com>
Date: Sat, 18 Nov 2017 16:20:58 -0500
Message-ID: <CANOi3muyiTAXyobuskaZO9wiWop9qQ+yDKJWBdM5Xxb7e529wA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for rwightman@dragos.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114515b6f31d6d055e486d34"

--001a114515b6f31d6d055e486d34
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

Thanks!
Reid

On Sat, Nov 18, 2017 at 11:39 AM, <kurt@seifried.org> wrote:

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

--001a114515b6f31d6d055e486d34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept.<div><br></div><div>Thanks!</div><div>Reid</div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Nov =
18, 2017 at 11:39 AM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifrie=
d.org" target=3D"_blank">kurt@seifried.org</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">This is a confirmation email sent from CVE request =
form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_bl=
ank">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of=
 Use (assuming you filled out the CVE form and want one, we can&#39;t use t=
he data until you accept the MITRE CVE Terms of Use).<br>
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

--001a114515b6f31d6d055e486d34--
