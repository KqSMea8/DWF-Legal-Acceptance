Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp893948otd;
        Sat, 11 Aug 2018 02:43:38 -0700 (PDT)
X-Received: by 2002:aca:4c14:: with SMTP id z20-v6mr9320046oia.164.1533980618025;
        Sat, 11 Aug 2018 02:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1533980618; cv=none;
        d=google.com; s=arc-20160816;
        b=CU0wGY5G72KMCeeTEVKkJCtlWCZq3bnXEx2ZAtvvYlzKgmmW7qMHh98IVJe7lRSamK
         Mr063pEXH1D5JjoFo8hNMsAl5QaunyT2qBkfoW/xZjAy4fkRLoK9mgiEqkeCOCrtJ2hr
         UKy86+6RpHBoEj7mKeiiabf8FzkNwUmD+aLmpeTvoXvl+jGrbaRHgQ7z/N81Yt/8Z1B+
         vgRa1jTvCVtP8R9KrOx2dsXoGJNfwPc2pYXtohD8E6E6WQPz663ykwBtQ5Vlmncgb0SA
         RhRWq8Quo0nvH7WQ8/fDdQPkxxtfWGsrvND1H4YdTEo+j72ojJDSkr00JPS18olyVKMB
         cBmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=vaq9kNiPqUm+MhM2CWAwnU++kGypM8KkXmkLlJ+o34A=;
        b=k0ekA+c7e5e2fVM8kTsiVy8K0Dz8MJ/JdE0MvDXWmi/KAWrZ4lUEZZ3RBqQVSiHDya
         JKW5YzCJKmf01n4zC0QaHjYClGAnVKYu+AFIwRLMRjdLGKz5USTO+0PjmieLey9C3nI7
         LEFI+5ifxMdz7DOMZn7rBUF148ISx2YTan3EcHj4bOZXuZg2xYmJ0ealGHh/V8n3D3lP
         8bDgt/e/dX3pcRM4kNRSVkyG4fG8OwV+ph0E4xTmMZ4H5u0w0NNETleOcaK8xC3zT72d
         d98g7OlTduute/4NoXz/K2mkj2/fKPT3ZLhuenUxRAbWanQL1c5rrA/vUMih2a2+3KuO
         NxHw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uQQton7G;
       spf=pass (google.com: domain of karan.ramani@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=karan.ramani@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karan.ramani@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 26-v6sor6614486oiz.295.2018.08.11.02.43.37
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 11 Aug 2018 02:43:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of karan.ramani@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uQQton7G;
       spf=pass (google.com: domain of karan.ramani@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=karan.ramani@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=vaq9kNiPqUm+MhM2CWAwnU++kGypM8KkXmkLlJ+o34A=;
        b=uQQton7Gsrlw/jd32IVC1ELNVlfZgPozrI8W87RnzpVp2xvab1aDJfEAKRe/DgsBY5
         ACc4mq1EcURsY/qMz4veJDrY/qlQCPdR8mXIBwM6n+6GiaErHI/plQkK8exfjCKbG1sy
         CRakG2AL0dUv7d6tyX7FpF7DsCgRSn/+ewl27O0HveQ1hC6/fq7bF9PDQB9eMhnBqwxn
         TkURSfEJCszDY8BVKUcsTeYveDVSxMdKEfVr8ivEnqE0vjeyqn483M957Opmh3vtDLcU
         WhpAOGZLqkD8RU4dgrpFJJrUCoc7Io47l1ivVd/DVy/OjZ0qS6W4yOiMliAu562QW2jD
         NFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=vaq9kNiPqUm+MhM2CWAwnU++kGypM8KkXmkLlJ+o34A=;
        b=CsuY9ecH3EiBZVJAr4OLxdy/ec8Z5wzDPsScjKbTn0mP9Wus+9LFALkSZFWpTpFX9b
         I8vjGBW12nUAaFxkYS8v03lAlmY4lQlVGn08jdQb6SH11bYIZNyJCRh5wYeJIZ7Ksto0
         jzxwJTwBnLhc6HfFr4JcsIyQG9nzxb4EBPiKQZDIwfLmH9QAjmRITM2lpTbvIkRx9hHN
         mpqU/YTIpWQQBBNKmHZ3tgOzKaC4Jmq0IaBmkdeHJsUgK0x8TaRSK0wIdcucjWFayN0G
         y7PgwtW+VFwgyripiJ6bBI7iWZH22KTct3u+4MHuWQ6U/30/X+NayQs5Saq46VgJis1V
         txMQ==
X-Gm-Message-State: AOUpUlHhDaS7lkArDtxPhnzx6JJaZndUPe6teorvM4juUN5iyA2xbSjg
	2cvxVEzqtsFBN4aG0yM6qJNE61ZemwIkYK1fExCtOBAK
X-Google-Smtp-Source: AA+uWPzdJvds/O4SzCpdpnKs8Sp1N585IW+2whDbtP9CDzD12ySgqOp6jXDaFpk9h315mvDANSJ9MM3F4RPK+8zc7HA=
X-Received: by 2002:aca:400b:: with SMTP id n11-v6mr4545551oia.150.1533980617248;
 Sat, 11 Aug 2018 02:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <20180810221301.2668.9722@shiny-2.local>
In-Reply-To: <20180810221301.2668.9722@shiny-2.local>
From: karan ramani <karan.ramani@gmail.com>
Date: Sat, 11 Aug 2018 15:13:24 +0530
Message-ID: <CA+KT4OVRAmzCqswPNdW=DM_xtzy-VkMhD-gcahjGEWQHvJbVRg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for karan.ramani@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000c898b2057325b192"

--000000000000c898b2057325b192
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I accept.

On Sat 11 Aug, 2018, 3:43 AM , <kurt@seifried.org> wrote:

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
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--000000000000c898b2057325b192
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I accept.</div><span>
</span><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sat 11 Aug, 2018,=
 3:43 AM , &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation em=
ail sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D=
"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to acc=
ept the MITRE CVE Terms of Use (assuming you filled out the CVE form and wa=
nt one, we can&#39;t use the data until you accept the MITRE CVE Terms of U=
se). <br>
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
rget=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Acce=
ptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank">kurt@seifried.org</a> manually with your question=
/concerns/etc. <br>
<br>
</blockquote></div>

--000000000000c898b2057325b192--
