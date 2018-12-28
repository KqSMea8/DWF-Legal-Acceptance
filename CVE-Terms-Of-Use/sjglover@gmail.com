Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp103026uaa;
        Thu, 6 Apr 2017 22:00:56 -0700 (PDT)
X-Received: by 10.28.142.133 with SMTP id q127mr17038354wmd.116.1491541256884;
        Thu, 06 Apr 2017 22:00:56 -0700 (PDT)
Return-Path: <sjglover@gmail.com>
Received: from mail-wr0-x236.google.com (mail-wr0-x236.google.com. [2a00:1450:400c:c0c::236])
        by mx.google.com with ESMTPS id r196si6271706wme.81.2017.04.06.22.00.56
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 22:00:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sjglover@gmail.com designates 2a00:1450:400c:c0c::236 as permitted sender) client-ip=2a00:1450:400c:c0c::236;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sjglover@gmail.com designates 2a00:1450:400c:c0c::236 as permitted sender) smtp.mailfrom=sjglover@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x236.google.com with SMTP id c55so16740069wrc.3
        for <kurt@seifried.org>; Thu, 06 Apr 2017 22:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=6oDsU0gzoXYuw5e9XUWGJNeTwKfbT5mkOLJ9nRHs62M=;
        b=g5WX/YFtDZg9iIKSDL7mGMk/lRwn0VTcmAgK2of9Ntv9sOzGUQ51+5ZaqgfKcyx2Ty
         mdQCvwD7nV0+TkKCG2/sb+n/1xlpoGqoUPP550giep9JntYfxaPPTmwp78kmt35DJvz2
         0fuDTm7inAbXJqXBfdxKQJ+EXod6i6SeGzrX5bCrKR+MPutZYWHXkLRB6tDs5VAi6ryp
         Idmw651WwURr98+3+VOAcGE/btViphhT08zwXH17yS0BjKyidtPiKn2MLjCKz8F9FRcf
         C3YreiEA2yOOPW6xnh9LocUOzoCC7BwZe8hbhGfBcL3gSo6o1CztL4ToNWrnDNwIqTwP
         2s4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=6oDsU0gzoXYuw5e9XUWGJNeTwKfbT5mkOLJ9nRHs62M=;
        b=aqn7J/F2t1W+GrzSV2hY2WfE9YqakslRuYGd+YNAwq94GZ/YoPXRq6cGAryvZ2jx/u
         L9XvmRPBWNXNJBm1tqa3XA/W3atYf9dUZx2NdWmdEnSKlDjR0NAVw9qHpjPW45y6QpFM
         PQVoCQYe/GIM5uV5w3cXDKrnthKO7s6jVqpTJxKnlBGOKLwjgwJ1vVJHkmK+2aZLDMyh
         EkaIUpz+tth7twuc1fllOsBNCmfazboCCM/3hcj73PP1MtZGcR3yx95ZXX04ffZ/dHjX
         rxTYuHprwFaeyadzi4IATc5gfX7ZCcONe62JqZ0DIH1KqbdfRPz1h175l0zMKOfOj0xt
         goZA==
X-Gm-Message-State: AFeK/H2B49IGdhCs5olu/eO4wlOaVh46IZQKM1l4EQ+IQ7ylYcOwkKv63vwtwf0UPmjKExbUOpTzx6u3x4Z/rg==
X-Received: by 10.28.68.66 with SMTP id r63mr27006978wma.74.1491541256402;
 Thu, 06 Apr 2017 22:00:56 -0700 (PDT)
MIME-Version: 1.0
References: <20170406202413.4090.28031@shiny-2.local>
In-Reply-To: <20170406202413.4090.28031@shiny-2.local>
From: Steve Glover <sjglover@gmail.com>
Date: Fri, 07 Apr 2017 05:00:45 +0000
Message-ID: <CA+OPUuZD6TBq+OeLPXkJ2wcCA=PR_QgHfgqDdLPLUk_tnJK0rA@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for sjglover@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary=001a114a47c2c17b28054c8c8258

--001a114a47c2c17b28054c8c8258
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Thu, 6 Apr 2017 at 21:24 <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
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
>

--001a114a47c2c17b28054c8c8258
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br><br><div class=3D"gmail_quote"><div dir=3D"ltr=
">On Thu, 6 Apr 2017 at 21:24 &lt;<a href=3D"mailto:kurt@seifried.org">kurt=
@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This i=
s a confirmation email sent from CVE request form at <a href=3D"https://iwa=
ntacve.org/" rel=3D"noreferrer" class=3D"gmail_msg" target=3D"_blank">https=
://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assu=
ming you filled out the CVE form and want one, we can&#39;t use the data un=
til you accept the MITRE CVE Terms of Use).<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" class=3D"gmail_msg" target=3D"_blank">https://github.com/distributed=
weaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br class=
=3D"gmail_msg">
<br class=3D"gmail_msg">
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
MITRE CVE Terms of Use<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
LICENSE<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
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
PURPOSE.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br class=3D"gmail_=
msg">
<br class=3D"gmail_msg">
DISCLAIMERS<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br class=
=3D"gmail_msg">
<br class=3D"gmail_msg">
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" class=3D"gma=
il_msg" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF-=
Database/blob/master/TermsOfUse.md</a><br class=3D"gmail_msg">
<br class=3D"gmail_msg">
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" class=3D"gmail_msg" target=3D"_blank">kurt@seifried.org</a> manuall=
y with your question/concerns/etc.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
</blockquote></div></div>

--001a114a47c2c17b28054c8c8258--
