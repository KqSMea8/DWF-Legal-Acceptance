Delivered-To: kurt@seifried.org
Received: by 2002:a4f:ca81:0:0:0:0:0 with SMTP id n1-v6csp2252436ivl;
        Thu, 26 Apr 2018 08:24:29 -0700 (PDT)
X-Received: by 10.98.110.136 with SMTP id j130mr4910400pfc.111.1524756269797;
        Thu, 26 Apr 2018 08:24:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1524756269; cv=none;
        d=google.com; s=arc-20160816;
        b=EU/F/Z/mLpokUrtShVyZjaXwg1FlKrYQ8JYgW8B+9DPOy3ZAdCyq9oJC3qWPyafqVj
         il/dNpDlBtgGPWeXLEkFwzdy6miDWsHWOmabhefXFUfsnfgHKKiBPMFDicI8m//1rxKN
         ywsBq3r5rFXmiUX7CDIDdYCWVgoo4HjJvOMm+ndjRvLOPP57SKXRCMNsMf2yiZS71EBv
         TA2js2tyT/HgiaYQ8jXYpymzSRkiuRM0jQu4AdBr/YwAUbcqUvOqzM+lbRwsyaTv5/aO
         kMTY9iXsE5U1trwNysEjdf5U8RU9qJ/5p4sOLSNxmHATKDAYWJexZo/Z2TmYt6ODWSFd
         d/Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=e5GFyJMI/5NlY6Twx+m9ySplfI9BO7iDMbjpLSKjlNg=;
        b=Aop+WvuUbC79H7IUoNu2uFVTQuLosmEwEghW+WKgVxZKpHmbbON7uSNKyZml3uFq+D
         kpskWvNrofpAvkva1DUUcU5dpP4kbCEbvQQ2d1vsY6k+gZC3etK/sVLQFLsPHgy/GHZm
         1wAArfA4F19iJ+VIjbdUSdKPekdXkLnwJ8lVkrIJyXgb+2I3sc96yeWrfZkWiDqhvGwm
         /Rw4fM/S/7JaN9ZykPrdb75B1xcvt8nBukGuRBW5C5qPXnPYMiseCv4cslg4bet69cUM
         aVODKNghsDhpGnXJsXJryC/hnN0fbISvX2lsKrWjFimYR8KepMFhoAM4a2S5UJZCt1vs
         swZA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z9MTry5c;
       spf=pass (google.com: domain of glennmcguire9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=glennmcguire9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <glennmcguire9@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id b9-v6sor6807160plb.139.2018.04.26.08.24.29
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 26 Apr 2018 08:24:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of glennmcguire9@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z9MTry5c;
       spf=pass (google.com: domain of glennmcguire9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=glennmcguire9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=e5GFyJMI/5NlY6Twx+m9ySplfI9BO7iDMbjpLSKjlNg=;
        b=Z9MTry5cq2kQcKisr0NvuzmouAfc3f6ZzlG86BB7ES89Ux7+nJmNpMjVhrY2xKsaIw
         MRKjdAqucd68hPsyZNf0UE95CbZ1P4xvXm/yRL14Qx7RdFabwQPDgOt8bNFw3iWVFUML
         q9f1j/d9mOv0sFjDpGEVc7/LdYnSWDam/kmrTSuAs78NQ65TTBVQhw0BFLsTxgymkZvc
         3Lji74CxlETdhWnX9X5HgQ1uQtYXzZ29NhmCK2ix6jdodOUho5w9dHTWhjfAsw0RujFD
         6LHz3EBKWvwksQQr6b50XY6CCv4b21fiN7nr+ULUcSW9pVR/paBSw95BP34JgBSXY8re
         CpvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=e5GFyJMI/5NlY6Twx+m9ySplfI9BO7iDMbjpLSKjlNg=;
        b=RqwQaMaUWqQj3S2llsNjaBbBb2mkkU08Xq2iM2muLu5eEWIVE97cjnwIAHvaCtlVqf
         RQeWRByx7FAMZ7QJtHk39AWWJqAz82YPG8jlZUHv/4WRwQ95kklAu1OrXebfdOz2I/v9
         miMVZe4A4Aj4erzZb/FDP2fDaVokko0zY47YGsJqyGE+6mlNG7UI2VmAGH1SyL2x36Dp
         QYrNLZirTU+ZCn8hHVBzjZc5F2YrRZBBEyzAb/WpOW9qtSpHo9NBvyhoTda5Na6IgnrJ
         CVjgd85XhXVQ7ZqSvjuk6lchrQW0qCa4yXKTUHaRwSljUMBeBhy/TyPry9/g4HQX0XFJ
         k9PQ==
X-Gm-Message-State: ALQs6tD0jLku1OXTdJkcomTTyEt9gEeK963aT6RdC9sq1zFBVoiWoL18
	GRbajtY3RDyb+Px6dQNBBR84ZB0Txrxqt4LBKBNxTA==
X-Google-Smtp-Source: AB8JxZpv7WDwsYl+aqWP3lOXzZ/ClYyiSckjwVo+gKjejGeRSDfieqBTlRecQ6gfvXahKmlXogVZsYDN+BmNC4JAUvI=
X-Received: by 2002:a17:902:8305:: with SMTP id bd5-v6mr9104859plb.13.1524756269044;
 Thu, 26 Apr 2018 08:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <20180426143425.43285.33936@slab.local>
In-Reply-To: <20180426143425.43285.33936@slab.local>
From: Glenn McGuire <glennmcguire9@gmail.com>
Date: Thu, 26 Apr 2018 15:24:18 +0000
Message-ID: <CABdHURjm2gVMpz3f+W766h1SQ3-NEc0Rrr+iR1-DPZ_sWobg6w@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for glennmcguire9@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000c91701056ac1fb35"

--000000000000c91701056ac1fb35
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Thu., 26 Apr. 2018, 4:34 pm , <kurt@seifried.org> wrote:

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
> This data cannot be removed from the Internet, or from our git repo. If
> you are concerned about your personal information (in the form of your
> email address and any attached information you include like your name)
> please do not submit it, setup an email address and use that. I cannot
> comply with GDPR requests to remove your information due to the nature of
> git, and my inability to confirm if you are a european or not, so if you
> don't want it in there, don't reply with "I accept".
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

--000000000000c91701056ac1fb35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept<br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Thu., 26 Apr. 2018, 4:34 pm , &lt;<a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">This is a confirmation email sent from CVE request form at <a href=3D=
"https://iwantacve.org/" rel=3D"noreferrer noreferrer" target=3D"_blank">ht=
tps://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (a=
ssuming you filled out the CVE form and want one, we can&#39;t use the data=
 until you accept the MITRE CVE Terms of Use). <br>
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
This data cannot be removed from the Internet, or from our git repo. If you=
 are concerned about your personal information (in the form of your email a=
ddress and any attached information you include like your name) please do n=
ot submit it, setup an email address and use that. I cannot comply with GDP=
R requests to remove your information due to the nature of git, and my inab=
ility to confirm if you are a european or not, so if you don&#39;t want it =
in there, don&#39;t reply with &quot;I accept&quot;. <br>
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
</blockquote></div></div></div>

--000000000000c91701056ac1fb35--
