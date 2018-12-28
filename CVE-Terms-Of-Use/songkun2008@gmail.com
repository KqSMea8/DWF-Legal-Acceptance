Delivered-To: kurt@seifried.org
Received: by 10.176.6.230 with SMTP id g93csp17933uag;
        Mon, 19 Jun 2017 22:51:43 -0700 (PDT)
X-Received: by 10.176.78.29 with SMTP id g29mr17732148uah.55.1497937902982;
        Mon, 19 Jun 2017 22:51:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1497937902; cv=none;
        d=google.com; s=arc-20160816;
        b=wEHXAbvGU4mFYNZ9u/fiQ15KfX8bZ0hTGJQNP6QwOhLj3LcHIVeE7HMTlfHMCs81km
         0YEVpRzF0MWGmpkxc6mS+bv8a5slmJqtc7IyRSwtRpd00zMRroroaPSherPFJ1u7YW2l
         ac0T7BkW0i4qvdKaTK+NYzmffyLSnHhLs/oAeZwDXyTI2eaIGvXrXKfMAMRbqEGRT3/r
         rakXaFxEo7vGFs4j9C3bID5zT829rx4oz8ZZl7WPiOdo7ItFSJQ+lZqmZK7uTnuidsdx
         sB3l0yEUa5wpyteEMGANBpbYW6QW55o36GIJLz6vfiPwPwo6GQpJjHm/ikM66GZpO3i5
         0oUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=aqIm5GAjooLhzaFNM7zh3lqWw4gdF/K/CP7Jncc/4Jg=;
        b=LrmMDpCtACypKHRYrT6G0Hav6cI8c6d54fCPMpxsW29xiwA9FwOW5t5eWzo5LeP2D4
         Ot9yjrQxyb8XtQTa6Ph72WB15ZWlvWmJ7We9BtZn160CHJmcFlVeKSi6UQ+Xj9ozx9nk
         yznsHj+7hochdYYsNh3juUlHQYBAblhAu8MElY9DWa+bOyYtnHqk3NlUbNdPZd47ygXP
         lj5wFAg7LshD4yiOZmLyWRrIdybbWw9QtuHGHo0yJqYtaoAqBE3r45ZrzMIFkR/q529b
         sLhqdaxYF3rbepnEtyQk5CB9ZdhxL/utN1q+zudyrP/EmJ8W2qbMGCwOmhRhumByjgFO
         ab2g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=R4TuXjOe;
       spf=pass (google.com: domain of songkun2008@gmail.com designates 2607:f8b0:400c:c05::233 as permitted sender) smtp.mailfrom=songkun2008@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <songkun2008@gmail.com>
Received: from mail-vk0-x233.google.com (mail-vk0-x233.google.com. [2607:f8b0:400c:c05::233])
        by mx.google.com with ESMTPS id m21si7104447uah.260.2017.06.19.22.51.42
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jun 2017 22:51:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of songkun2008@gmail.com designates 2607:f8b0:400c:c05::233 as permitted sender) client-ip=2607:f8b0:400c:c05::233;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=R4TuXjOe;
       spf=pass (google.com: domain of songkun2008@gmail.com designates 2607:f8b0:400c:c05::233 as permitted sender) smtp.mailfrom=songkun2008@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x233.google.com with SMTP id y70so63678206vky.3
        for <kurt@seifried.org>; Mon, 19 Jun 2017 22:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=aqIm5GAjooLhzaFNM7zh3lqWw4gdF/K/CP7Jncc/4Jg=;
        b=R4TuXjOe+CLAA1S0fNUU0bp3blreQL4ckJeTK8uOtodTW/00rv1+X6s+ECMdquIvvI
         jUf4QtlpGokNU6Zbb9KSSZnafaCh2HSt2cK522OGAyI8w2Uz+HBfhshtncyyxmbLedxR
         yl5I/cCWdzQQFHr2+Cm/VCvdahDBL2KlGoRt/ufuNhIUhvpV3NZS/ywc0YzaWwLzTmIn
         E0YB5xPIj8I9QmRgctthUu/oCTqfOiqBWrIj/fGsUo0y0o6MNzfjAn6f9BiUtqLspNbE
         JOnDyJqFvHqwPQq6A4paaN/q+RHreq8NSPPx58UwephZohs8iBWiIwpflkHTZPl5VrTb
         7b/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=aqIm5GAjooLhzaFNM7zh3lqWw4gdF/K/CP7Jncc/4Jg=;
        b=rbO93SGaIO+DGzODVUY6KAiqxktn1th8QQZ2ujalIfJDbOMsoNOzTJ8SwLWrMeAnxa
         OXZwqZUCmE95UUrpXmKtBmKi5CtMk4FnobXMzX079J4awEwjHvVXBDBeqMzT9W31S+2j
         kA6aY+CYg2VmcQyStTUij9lYIex2IUlXQTGF9I7g0fko/KsBjuFS1YMxw5L4eUSO0+QR
         SCJq3VHXvWVE/4sijuyV+bl3efQTS7YeS++MTuqK8L7Tg59Q4CTVkxC2BgK8k4rDE0LP
         Gi+23nZkfzxQOTKSwakCLA/0vxwvC3MrxFoq6MIchK/myC42e9W6qjB97D38Sd0WTZQB
         GlZA==
X-Gm-Message-State: AKS2vOxAkrkO9OcyFVkU0QKBcR+tIEA9OAUms4WuDN1VjlwnIbA5FPPr
	MBGNOUAulIkam+lxQ+BqqqN/eDXSlw==
X-Received: by 10.31.88.6 with SMTP id m6mr15822897vkb.0.1497937902572; Mon,
 19 Jun 2017 22:51:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.35.114 with HTTP; Mon, 19 Jun 2017 22:51:42 -0700 (PDT)
In-Reply-To: <20170620014525.46686.26122@bigbox.local>
References: <20170620014525.46686.26122@bigbox.local>
From: =?UTF-8?B?5a6L5Z2k?= <songkun2008@gmail.com>
Date: Tue, 20 Jun 2017 13:51:42 +0800
Message-ID: <CAHtjmr3YriQzX8XvSjf32U1KGvNf9_e5HQqd3qzKRnK8cCt-ew@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for songkun2008@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a114e620694190605525dd811"

--001a114e620694190605525dd811
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

2017-06-20 9:45 GMT+08:00 <kurt@seifried.org>:

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
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a114e620694190605525dd811
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I accept<br></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">2017-06-20 9:45 GMT+08:00  <span dir=3D"ltr">&lt;<a =
href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&g=
t;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;padding-left:1ex;border-left-color:rgb(204,204,204);border-left-widt=
h:1px;border-left-style:solid">This is a confirmation email sent from CVE r=
equest form at <a href=3D"https://iwantacve.org/" target=3D"_blank" rel=3D"=
noreferrer">https://iwantacve.org/</a> asking you to accept the MITRE CVE T=
erms of Use (assuming you filled out the CVE form and want one, we can&#39;=
t use the data until you accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" target=3D"_blank" rel=3D"noreferrer">https://github.com/<wbr>distribut=
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
ing/DWF-Database/blob/master/TermsOfUse.md" target=3D"_blank" rel=3D"norefe=
rrer">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div>

--001a114e620694190605525dd811--
