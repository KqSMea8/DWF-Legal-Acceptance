Delivered-To: kurt@seifried.org
Received: by 10.79.153.144 with SMTP id a16csp2232724ivh;
        Thu, 25 Jan 2018 09:15:58 -0800 (PST)
X-Received: by 10.129.153.11 with SMTP id q11mr9282241ywg.498.1516900558477;
        Thu, 25 Jan 2018 09:15:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1516900558; cv=none;
        d=google.com; s=arc-20160816;
        b=Z7SNxLmgn45MaCNrnQ8NZ7yp3mciVSsDbBfXLUzym058Dnvv4fasmsOVZZcySCASer
         TTdYEmoS4I5jYx2T5L1ci4UxH971Cjzk5cjT/6cCYseUrGLBgiLm80zP5Wc8ba0iYGyZ
         lZdb0lA+GfPlr0vcDoKDR6gRv5yytCFR1+ID9dnfcEaQtycLOOMmZ+CHs+4EdG+AVhIW
         78HLgeg2joD8It/kwOHsZP2f7SoO3ckSxjW664NOVY/2myOzH9k6cHIx2smlJT5m/0G8
         q/TDBQ3FQidnUKygYerLooM1cS5lQPhrCfZef2ukM2nVlMMaK2fUJLc/G4DN5lwaLcBE
         Ub2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=KFCkXwmaeAjeDJgg305gtPCg+RkZSsT76zjb8NHyuPA=;
        b=GKbjJ4zWv+WyOujj/fPryPttJMzMj7eLYCZLsFe8bwlMLTuX1IktQGB6rY+iEaxDAE
         S0JB8dEhhbcSx5k5yqjDscLNp8hOF0hurvqGSJpYlAg8bFvxPY9iShWIQwtpRKiHj/ld
         tEzL1FIKBsT7MDsr75JiHYMbiCGuOp+zEA0iMgziMcYQaypOtIoQt3i7GT92GVNJgSSl
         /UT+Aj4o+a9CEDqyzdBQZdXxxcgCVd1d7oYbwkVQsj0TQDKViqDPl5n5GARXzjftWLcP
         2iJqAnCUEjkm4kys68IahYc+d/BvaHLO01U1uVKuP8QjRCVLZF429v6Bb+3bZ8Scxkn8
         g9Hw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=temperror (no key for signature) header.i=@hernandev.com header.s=mail header.b=brJ2Oc8O;
       spf=pass (google.com: domain of diego@hernandev.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=diego@hernandev.com
Return-Path: <diego@hernandev.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f127sor1122885ywd.172.2018.01.25.09.15.58
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 25 Jan 2018 09:15:58 -0800 (PST)
Received-SPF: pass (google.com: domain of diego@hernandev.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=temperror (no key for signature) header.i=@hernandev.com header.s=mail header.b=brJ2Oc8O;
       spf=pass (google.com: domain of diego@hernandev.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=diego@hernandev.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hernandev.com; s=mail;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=KFCkXwmaeAjeDJgg305gtPCg+RkZSsT76zjb8NHyuPA=;
        b=brJ2Oc8OlBGz2I71JTcAd2EDcSBMOPLFYygYAbau77Ln+TkWi+AlvGehMBbPhYK4Gd
         8hw4BFWG2XPu/Tt0SyIy3fq81F0jPGpm5po1dMQBdK8aOi0zl1DbTyYmBpKB1Ga2lUoo
         6XqLSt8kaYWUlwHL7W2xh4H/72emyt9nErhDY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=KFCkXwmaeAjeDJgg305gtPCg+RkZSsT76zjb8NHyuPA=;
        b=SOOxrRaiptfar09QDaXHSUrBu29zDaXqNFNHkviRjzRfC6/hT0KO8fK86+qur+PS5i
         qdC5GiZ6SwpuRZ2DqIF/ELBivaldkwGQO54S3B/YPeN1NUkwpnVTkXR6nwRAFQQXjmnf
         OEnngKIR12Dglc5ZqQya21NmFnMoOg3D34HwaYMSfVwFzGFtInSIderlT4M7gkB1Ay91
         LDKMNUMEI2FY/UZu1lU69tZQoqv0Sk9E/REV10s58amH978565PygpUBau1+1qYdHnTj
         iHSYQJGmctQWNcn6Wv69ysfxaB2ou6hDvopm16UasizY5g9xgs89Lv3VPm2jlU1Agi4r
         VZfw==
X-Gm-Message-State: AKwxytekBZDFgsLqfmueyuNHVltgk3VAsTCRx2zKwAWyd/OmZkrx5Eol
	Oz7YAFEc7UGSSP04VKH1GXF78y7sTDRCJ3yCJvpQmw==
X-Google-Smtp-Source: AH8x225Mbgdf3bDMoO+PuzTJZTGoeXGt6DIePpVGV+ClK+91EjiVTR8S740haqG5I4tLgyg9VVoqkhd2Dsi8PvWQHOw=
X-Received: by 10.129.193.73 with SMTP id e9mr9255944ywl.514.1516900557718;
 Thu, 25 Jan 2018 09:15:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.196.4 with HTTP; Thu, 25 Jan 2018 09:15:57 -0800 (PST)
Received: by 10.37.196.4 with HTTP; Thu, 25 Jan 2018 09:15:57 -0800 (PST)
In-Reply-To: <20180125170453.4519.23959@slab.local>
References: <20180125170453.4519.23959@slab.local>
From: Diego Hernandes <diego@hernandev.com>
Date: Thu, 25 Jan 2018 15:15:57 -0200
Message-ID: <CADW5tn9m_cfBKfb16U1yKGR3v+eqviVLzc-cv6e4yodukLMF=g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for diego@hernandev.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403043d38d4e71d8305639cee45"

--f403043d38d4e71d8305639cee45
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

Em 25 de jan de 2018 15:04, <kurt@seifried.org> escreveu:

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

--f403043d38d4e71d8305639cee45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:12.8px">I=
 accept</span></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">Em 25 de jan de 2018 15:04,  &lt;<a href=3D"mailto:kurt@seifried.org">ku=
rt@seifried.org</a>&gt; escreveu:<br type=3D"attribution"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">This is a confirmation email sent from CVE request form at <a=
 href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https=
://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assu=
ming you filled out the CVE form and want one, we can&#39;t use the data un=
til you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div></div>

--f403043d38d4e71d8305639cee45--
