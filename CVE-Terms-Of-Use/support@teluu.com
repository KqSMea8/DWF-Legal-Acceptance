Delivered-To: kurt@seifried.org
Received: by 10.79.17.3 with SMTP id 3csp1459580ivr;
        Fri, 23 Feb 2018 20:17:29 -0800 (PST)
X-Received: by 10.176.90.112 with SMTP id m45mr3029974uad.72.1519445849764;
        Fri, 23 Feb 2018 20:17:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519445849; cv=none;
        d=google.com; s=arc-20160816;
        b=B8cStKdNyhgLyGE0L8YqDTsyQIU80Z4EK//C7pv/s4/3SeZkbC4l5zG5bCf8Wy6ZD9
         wkvrn6U17iJU4pe7CbYRLs67aGIjWkTEVqN5yxmHwkYDs233eGAxCKg4eHKlfwsjn9qV
         b3Ah0MVPJqVEru96bZ03WeQz3QbqEr5+NKkeGm1tzqWiDNltli/iHJZ4rAzXEqT344An
         SwEE+QYzb6O7pdpF60WSXdnCpMUFU9tpWi781g0rgZnRBjGxSvK7H4lfH/tfGFSMGgFl
         /1n7YzlEwl/aEC0mJnbi5gXj+4T80C+YDd3tZ6qwff2ENdCPRieG0K3kEEVoLTQKiuEl
         163w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=0xd2p7RrOA0Ciop2CvLKGaNJAQ4/umorxdEZrJ+OpfY=;
        b=I1NIjoPtitTfXFZUHisHbqcgz4bO12bcAKlGYM+sovrhBPZExeWJ+P+EHJqmv7t/nG
         bGKZlYh41UQoyKXhFI4/lgOEOJVGdK4Sx6CVmYqRuA/T5xR3H7llzhdapr7oPpK1TWI4
         Kynyvq+wTdLlkEe+nXPbDg7QDPoqnRpmwKITCjpnKsVDRTLZY3unM31Ggq9hD7+dqSnK
         mpnzqkhteqJu8a9S0YkDmNkOFTe8Eu8PhC7FZQ+6Klh4wDDisdVv2L8B9OUzVezX2ysF
         pphvhERCGZe70oqPiAJ9VFkfbqLAk30aDmsgWDq57RC0NetFWzD6mphES6d1awonbQPb
         dr2w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@teluu-com.20150623.gappssmtp.com header.s=20150623 header.b=fvFj2PDk;
       spf=pass (google.com: domain of ming@teluu.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ming@teluu.com
Return-Path: <ming@teluu.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id u23sor1575444ual.236.2018.02.23.20.17.29
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 23 Feb 2018 20:17:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ming@teluu.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@teluu-com.20150623.gappssmtp.com header.s=20150623 header.b=fvFj2PDk;
       spf=pass (google.com: domain of ming@teluu.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=ming@teluu.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teluu-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=0xd2p7RrOA0Ciop2CvLKGaNJAQ4/umorxdEZrJ+OpfY=;
        b=fvFj2PDk76BTda2VGFthHvhUbnov8eZgB4M36zlLXVXxRNOUMlxS6uwSyR9pERUvNL
         M7HmiTjAkdZZdLqKoKeD47lkhfuUQ4kNis5Kk2Jfqs14Sra4E9TX6bkz5d9WmZNHcLKK
         sYlnY504sorp77B/pOanVDthrg3cdlWv3df8rz2tgSbiNa+Z2zZ9IaTcAfTEdxjDGz91
         bYA5oxUtQJJHETxZJhAgeqgpXhpNotSOdFWArsu6Hd4ZusLZbpGAZl8zoN57WhjpfmpX
         LHHFh9IrIVqPDqeNjHH9UUVCVIEokjYZH8VU7igQgU+IdFaIz6vI/DHr1BDBOmDYnCS7
         YrDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=0xd2p7RrOA0Ciop2CvLKGaNJAQ4/umorxdEZrJ+OpfY=;
        b=Wy5fK35xuVcK3/8IgY6/IceuYVPELgh+1+eiqwk60FfLo252pWBGq/Qib9BgN23gBl
         p0zR7v+h2/fesF0Mge8PvuAiEtGsrHCJxQHut6KcykYQDf+D6EpLS9iD0UU2ak/W1+CL
         Crps7Xb5qa+PslvscNbeR3CAPPLIYuNI5h31XK3rujkqcnxxbfQmfbDwJY/2Dbk0it83
         wnTC/m/5K0OC3UczA5QyU3XaLvUMocjNJo1VqWy95ftKe8sV5zv11TR2XTLQjJBPc2Q6
         v72vzIklvCmWdAu/s10Js6odwRawbMxMrkxL10GwPoFNK5fUIDivi9mWixmUqdshkhjz
         s77w==
X-Gm-Message-State: APf1xPBNHbraR8J2F2HI0eNWT1mvxu9AyF6b4+1FewYmm71aRsOHXPAb
	PfMtvkgxJqVYo76d1nn6h0RbTNG3ERg8dvVcmUTbnA==
X-Google-Smtp-Source: AG47ELullYI6scXBawDJRoIN0rxamiaFfvNzJLbnOVxxiweIouO9uNdVvYIMqRTvSAohRvHKAgW+u+syzVXJ7SM91gA=
X-Received: by 10.176.32.16 with SMTP id v16mr3055867uak.20.1519445848962;
 Fri, 23 Feb 2018 20:17:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.130.7 with HTTP; Fri, 23 Feb 2018 20:17:28 -0800 (PST)
Received: by 10.103.130.7 with HTTP; Fri, 23 Feb 2018 20:17:28 -0800 (PST)
In-Reply-To: <20180224041439.2287.9317@slab.local>
References: <20180224041439.2287.9317@slab.local>
From: "Teluu Support (Sauw Ming)" <support@teluu.com>
Date: Sat, 24 Feb 2018 12:17:28 +0800
Message-ID: <CAPimFqBQ6WDy5vD-A=5YMnqqvEvwF3UEYiej719nEwc5XdVH-g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for support@teluu.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f4030437d45c154fbd0565ed8edc"

--f4030437d45c154fbd0565ed8edc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

On Feb 24, 2018 12:14 PM, <kurt@seifried.org> wrote:

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
> --
>
>

--f4030437d45c154fbd0565ed8edc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I accept</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Feb 24, 2018 12:14 PM,  &lt;<a href=3D"mailto:kurt@seif=
ried.org">kurt@seifried.org</a>&gt; wrote:<br type=3D"attribution"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">This is a confirmation email sent from CVE request f=
orm at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_bla=
nk">https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of =
Use (assuming you filled out the CVE form and want one, we can&#39;t use th=
e data until you accept the MITRE CVE Terms of Use).<br>
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
--<br>
<br>
</blockquote></div></div>

--f4030437d45c154fbd0565ed8edc--
