Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3475:0:0:0:0:0 with SMTP id v108csp718149otb;
        Sat, 15 Dec 2018 08:46:43 -0800 (PST)
X-Received: by 2002:a9d:5415:: with SMTP id j21mr4967095oth.202.1544892403225;
        Sat, 15 Dec 2018 08:46:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544892403; cv=none;
        d=google.com; s=arc-20160816;
        b=VXeIG5pXvNti3z8FRe/VT7IcpbIV7K1JfJEOFSPUfz0YC8mfyqW++r1dz9pNL5YWxc
         gPGjz1YBnjxDnvcSVXqf1p40NBTic/TUGH0ubP+OiKjCetvWXiepmuAoOJ1wv7X8GIWd
         LndrkVV52LtuC1mCYlvlfGurUMqFzMbL2lYEugFgG5Ck7MkDWwL842cSOWXmRYPzI0Bn
         L+gkVePYmKmt3v45s5fvQGtulVrowEMQbc9Wi6SguSfY9p4xx1YUTThnPDM5QGwsKhs8
         shDJ4izvHehI+kD/PkS6owXURu5Jrmy4Uqx03AYSyxcSDf+omYiNm8Mqet0aqf2184Do
         qDzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Jc8mHpP28w4atuLL4pAr+akHFfYVsCwi7tSBacqnf0k=;
        b=wLvEt0P60VrQ0cgSsxzEBcDBEOQiI84d6Wfqp+twfC6lJnLCRSXdSIwOMnTyBeKh/I
         MBdYYvkFiR2rLI0dEHoGlp4jeDemTMC/I97dSfNKH47jRrOf/A0/XFdJJQdvyq+Ka9+W
         O21I5PJLqOpsiAe9WPUcEaek5vjYyiy/yPrV7y/i/IaszhYS3hxHNZNcPIgjhpAOvtcQ
         hU0HcN4BCbLCsFLwjChyVdWOLgZkz67tPnJAkOdJzU2t/tW5xArtxvM6rsgvN0aTWxtG
         bJv8AWe5BWQJ0Q/arSin25cRlvUziAab/jiaSBVjyAYBOqGXGYQujwqgxZ/jRysUhvcN
         UHuw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HB4Aqetb;
       spf=pass (google.com: domain of theaspens0@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=theaspens0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <theaspens0@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 77sor5205886otj.120.2018.12.15.08.46.42
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 15 Dec 2018 08:46:43 -0800 (PST)
Received-SPF: pass (google.com: domain of theaspens0@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HB4Aqetb;
       spf=pass (google.com: domain of theaspens0@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=theaspens0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Jc8mHpP28w4atuLL4pAr+akHFfYVsCwi7tSBacqnf0k=;
        b=HB4AqetbTB4pOwvhrx/F0GfBBhm5pWPtci9IlfWdYtQk6Y2/WHkoEgAOdQCLx3mopk
         CAOVWrsLlosP/EjL0rzuFLmo4n+e2OceEbVERH2gboIkzYIV2THDP8YOF32hFxAk2sh8
         55pyiRWBf9fy7W8U4OgMnG0YGWjFvPYnjsQ0hV3cKmLXGw1gfTA8LtTMaMU5v3E8zzz+
         T1Qr1m/0D0aKeUjdUCVKUTQNgGNsWD4gCwNsHYRyLzgl8Rc4j0GV16/4xEfGTufzZRdt
         Z0esN0qh2FiwoF/HtHmgIzkyX+JJrqfBwoaUAQDpDIg7daytPoV+Ef7sG+AsGfBuwWXC
         ncYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Jc8mHpP28w4atuLL4pAr+akHFfYVsCwi7tSBacqnf0k=;
        b=gVAsb3fztMg2tbEhnelyuydbstTH2c//rFhYXlVrbgl3bq/T59H7FX/Vbt4BJ2UoNV
         1CBDnBQ5Iz8Rrd7/Ois5MaIX/YZurcp7TjTCVcxSyGqQY+6jewGq67wIfFASeoGq0k+a
         1NUAa2kafjGrEfuZp++fBsF0n6BlW5JNbKFtWo5tzNxz0xqc17rJLh3+NJMfthIo6gol
         NB0RrsoEWAVU4970/tBqUvDLApY64bK62SCd1V0ZOE75iL/7Pi4JAZFZEI/FygJf28aT
         F8kMNBBaA+8XgXZboW5vtw6R9aVcd1RCHNeh2fMvUCNHE3msYisQoRX7glnAPGV9qWsO
         zMcw==
X-Gm-Message-State: AA+aEWZ5V4FWpVNJ7UX52L5I5ALeIgrsooHE3Apuge6Ab5sm1pSvT0Jg
	gByiMnpQsd8XReh3rgD1TypiWVT0RCHjJArsuSgaBGMF
X-Google-Smtp-Source: AFSGD/Uh1OMSLuQFSGrHBscoxC2z2AgXo/bANUw/InJx76wINasfg2N4UuMEwp1MBRRPNWF6FWdQcsvIZ/+bqqkgePo=
X-Received: by 2002:a9d:2aa2:: with SMTP id e31mr4808606otb.246.1544892402053;
 Sat, 15 Dec 2018 08:46:42 -0800 (PST)
MIME-Version: 1.0
References: <20181215042918.59218.17022@bigbox.local>
In-Reply-To: <20181215042918.59218.17022@bigbox.local>
From: Kevin Reed <theaspens0@gmail.com>
Date: Sat, 15 Dec 2018 10:46:30 -0600
Message-ID: <CA+jWPUxOAWU_tKyY4nmsRCn7Vn-h9byXvj5O-9p6P8rm79-_bw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for theaspens0@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000d7393c057d124aaf"

--000000000000d7393c057d124aaf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Fri, Dec 14, 2018, 10:29 PM <kurt@seifried.org wrote:

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

--000000000000d7393c057d124aaf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept</div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr">On Fri, Dec 14, 2018, 10:29 PM  &lt;<a href=3D"mailto:kurt@seifried.or=
g">kurt@seifried.org</a> wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Thi=
s is a confirmation email sent from CVE request form at <a href=3D"https://=
iwantacve.org/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://iwa=
ntacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming y=
ou filled out the CVE form and want one, we can&#39;t use the data until yo=
u accept the MITRE CVE Terms of Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/dis=
tributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br=
>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank" rel=3D"noreferrer">kurt@seifried.org</a> manually=
 with your question/concerns/etc. <br>
<br>
</blockquote></div>

--000000000000d7393c057d124aaf--
