Delivered-To: kurt@seifried.org
Received: by 10.79.17.3 with SMTP id 3csp1464869ivr;
        Fri, 23 Feb 2018 20:27:00 -0800 (PST)
X-Received: by 10.55.170.146 with SMTP id t140mr6118257qke.126.1519446420024;
        Fri, 23 Feb 2018 20:27:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519446419; cv=none;
        d=google.com; s=arc-20160816;
        b=Ht1zCjKMcrv+E158R+6kqsUBNmOB62+fHM1CrCSIFzO/o5YKqcVfdgXuK7Is+uEgt8
         9GMryY/q2Kyau1Rlaj1HeLBu7lHV9q5njTTC0IcmYPG4dUS1ItUErAFO9wrVtM4E+soI
         4mgHEjQjvh9ZIy0iY13JfeYsdCMzBZMzTAGDSZePDBOtPQRkSIAIR6ALlZdsSeo9H8WF
         CLHMBaoxFqNyz2gcaATmgg4uFBq25NJYg2UNI5oOM8NR3G+oKx0m5dfSiFmIY8UsbIf6
         2ybz4pcPXMujkulPzMuQh5GX+gKvAIk3bRCoQa9uvyRB3RHhqfRJ3kEGtmauXnnoEWCI
         +XFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=gRZWvTdOE2A5igxqwV8Xbo5hBFUH7m42jZg2uAGU8W0=;
        b=GdEDf+oNnbLXZ/5jREQMlnft5VlJ1xxJJgJjpZVAc6AXaP3knWcAGAoFOE4IgM6Etc
         uW+qdrKEjd8BDgEu0PfleZCwwTwxxcEXn+pwe8Xv4GtfzFR3ZfnZREReHMr2tX86kvPC
         8GvKDrNSd5lOqilHQhOL57qJDy1uG6OFHuNFl7yimuCyd07G6mTeAfvEIZlFVmCwQ/Ux
         zsReWMx/B0H4maHFsHauUsr4GV5MOgYJaoqOM0KcSb8Yy+N8hIiJy1DqsPsDnVzMNDx8
         /W/zWam8LmEcOsJ4RhylHmGHmmIVyJIF3YBwmegUUSNUQYBfejkEoO5CAxm/n2NEPxPL
         fxgA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7CtxjNE;
       spf=pass (google.com: domain of gregory.szorc@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gregory.szorc@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gregory.szorc@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z37sor2872612qtj.76.2018.02.23.20.26.59
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 23 Feb 2018 20:26:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gregory.szorc@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7CtxjNE;
       spf=pass (google.com: domain of gregory.szorc@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gregory.szorc@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=gRZWvTdOE2A5igxqwV8Xbo5hBFUH7m42jZg2uAGU8W0=;
        b=o7CtxjNETMb+PUtulCtPcAXOnzXKcSQ6mk6LYQU1uSKR9ihbztcI/xfpUSF/OlUIs+
         DT6f38oZ4jK0LcT3W7d6NawfBEgeNaXD/FpDk4YPTtgqPjahOaIlWh1yki027lIy+RqR
         gHuYUxAoDBjBKPOS7jQFx95mlZub1mXtVXt+XHQBchRm9OHwcxScdJn2vFB3OCV1zAcs
         NQ0LtpM8l1Mq932zHgssXt2F2kv4RjKjpispmBm3cgiSMs0dyaW/ER6iLbbMhq7yJF07
         OURePtRatRyDVrzkJ5ydaHpro6GQKNrjfO8tzEu34RWiCS0XqJjc8zitvNnbWzVQs9uu
         um4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=gRZWvTdOE2A5igxqwV8Xbo5hBFUH7m42jZg2uAGU8W0=;
        b=EA8p4TVSFHYBFJfALn9Ba5JfmyN6KUjNC8dNupClLM4yfmw40/PD4RMW0+zwvRgfVe
         Eo0APjTZPplM7S7GWFWrtPIqVnWKuPPYC0PhT05NTa/gaRdmvkULJzwSqYHds8IkXObY
         PD2bISKyKyEYsC+CrfFYsXBUgRtOALhivXLw6Bxw3KtUACXOhmSKr8UAwDGTvJTMO204
         1Mue5tUZKPxE7FdFr+yeuqKDJf+HX09cgH8XJoflwUE0W101OtWHDTDt7N/v66oDuyxH
         jV2FekgoMwDo501mT+m2gEluY1Ku3jFCs0AbDfH5BWY1/R3X/wUXAdNBxUlUOyPaR0p9
         ZYlA==
X-Gm-Message-State: APf1xPB0xKuXdq/67jHAOV6D5EfU+OB7SLV6TdwnU7jIWc9FXCEt9udO
	XEON2vcRfrgmZajmVgCk/udwe1ghdalG4+BogcmZQw==
X-Google-Smtp-Source: AG47ELv4LfsAqbZyDWjQWk6JkOVbCHdTCHAoEGZA8EkL73Wiyf85R8vbpMR2nDqabxwo8OZezCv4cLJ/fsr4lFQcF74=
X-Received: by 10.237.35.133 with SMTP id j5mr6213662qtc.122.1519446419531;
 Fri, 23 Feb 2018 20:26:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.229.72 with HTTP; Fri, 23 Feb 2018 20:26:59 -0800 (PST)
In-Reply-To: <20180224041449.2287.43141@slab.local>
References: <20180224041449.2287.43141@slab.local>
From: Gregory Szorc <gregory.szorc@gmail.com>
Date: Fri, 23 Feb 2018 20:26:59 -0800
Message-ID: <CAKQoGanSnvYu9L2fW0hcjwgkVZ2==P=q5S1HfNbAocp+8AFLqw@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for gregory.szorc@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a1139fa60176fb60565edb030"

--001a1139fa60176fb60565edb030
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Fri, Feb 23, 2018 at 8:14 PM, <kurt@seifried.org> wrote:

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

--001a1139fa60176fb60565edb030
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On Fri, Feb 23, 2018 at 8:14 PM,  <span dir=3D"ltr">&lt;<=
a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is a confirmation=
 email sent from CVE request form at <a href=3D"https://iwantacve.org/" rel=
=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> asking you to =
accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and=
 want one, we can&#39;t use the data until you accept the MITRE CVE Terms o=
f Use).<br>
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

--001a1139fa60176fb60565edb030--
