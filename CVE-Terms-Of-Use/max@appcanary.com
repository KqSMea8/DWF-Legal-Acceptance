Delivered-To: kurt@seifried.org
Received: by 10.176.3.133 with SMTP id 5csp1171560uau;
        Thu, 3 Aug 2017 11:21:05 -0700 (PDT)
X-Received: by 10.55.167.211 with SMTP id q202mr3505705qke.77.1501784465625;
        Thu, 03 Aug 2017 11:21:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1501784465; cv=none;
        d=google.com; s=arc-20160816;
        b=Ojk3DBb8ZtRP2arR1X6JEulc4Qhep3ykzKQhmErGhrhn11ABqLFaok4TTpA7ylEE9S
         +ElE+4X4GdUKlLn1EPVIRgCdBl8wAR22mpHRx1y/ExF/cZ+5ivcNXz8vhn1YmM8YoKJ8
         SYJtO8r9+v5GNPuX4LmpxpV5h5prAiZeCVjQ5bckXL2uQQaLBBMJF3x51C2HTiICtmnR
         GRva+Yinm1L0xf2UUptMhXwGvxAYblpwEMES7hqXl+KpxOW5bE3ZRow0xuy5/fAAOfj7
         LzU0+fFSqfL1D5Rw8UIlmly+4UPqeXUfXOURyUZN9ppzfq7a//Tqd+D2Hjf2TEX9UylQ
         WrEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=99456XgFXkY3cTnGr7hRemtq1BmwIpDnGFy0vJvxCMU=;
        b=n0QX757bcJLNWb3NuwbPl7+MeN+ENbAoV2VYGit0Ji3Ghb4kpmUsolFhvwI2K72Sbk
         OTwTprvmXUNFs0CddI3fiZtjRfSBqOY1QLvCqblsxM6798jygaOHL2LCXViOD1Zc5gkh
         GQz/fQ4CwpMn1KsawQ0JzlFdEgsiRxuAVF+LAkg9c8yWA2Tbt97GmEuDepytK3g0u3X6
         zk2H3P/lUZQAYCYFyrU4GQc5/9YNDTpbGMipjEe1+uL5rENU3kDD9IpWYHYwZTIeueyQ
         5VCudzl6Vq7V1rMprUTpKqkqaE06jwq043nOqXtx1z5z0L6bhvUnFuIW8yU0qhF+3T5X
         S8/w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@appcanary.com header.b=Np9oQl1r;
       spf=softfail (google.com: domain of transitioning max@appcanary.com does not designate 2607:f8b0:400d:c09::22c as permitted sender) smtp.mailfrom=max@appcanary.com
Return-Path: <max@appcanary.com>
Received: from mail-qk0-x22c.google.com (mail-qk0-x22c.google.com. [2607:f8b0:400d:c09::22c])
        by mx.google.com with ESMTPS id y6si10674219qth.62.2017.08.03.11.21.05
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Aug 2017 11:21:05 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning max@appcanary.com does not designate 2607:f8b0:400d:c09::22c as permitted sender) client-ip=2607:f8b0:400d:c09::22c;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@appcanary.com header.b=Np9oQl1r;
       spf=softfail (google.com: domain of transitioning max@appcanary.com does not designate 2607:f8b0:400d:c09::22c as permitted sender) smtp.mailfrom=max@appcanary.com
Received: by mail-qk0-x22c.google.com with SMTP id u139so12454551qka.1
        for <kurt@seifried.org>; Thu, 03 Aug 2017 11:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=appcanary.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=99456XgFXkY3cTnGr7hRemtq1BmwIpDnGFy0vJvxCMU=;
        b=Np9oQl1rquBU8wZEKqnqAtf0AdehfMkajZjOh35BMH1zuGcgx1nXGMbh3vvllOgK9F
         iKfW6vO+CHFddGAPC0VUuih1Fee1cFIOBbCMDX7KDVk40/h8vdmd0UdRr1n4GYBIlP9I
         qJ0g0x+548fBofW0JHhOfYJKFphQqt2wNpzdgmPx9GIPIiTrjvRUpAXGhVHXrbMwmJi7
         5sn1uO2bR86sLouC0vBmnIksC0OkdPWwY61LXcqyYkXJvTyaytn3FiqNm/WUnhBYK9IR
         AFE68qkjbgTEuRrqJrYLMds0qtvTGyPkD50M+UxPkKC4BQZWducT+x8ZDY7iB5AaEo91
         qiqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=99456XgFXkY3cTnGr7hRemtq1BmwIpDnGFy0vJvxCMU=;
        b=GkJWm2UqMLcx0qeYTPZxAXlszlqGOBmYy0S3y+yFdUf/hYmyQ321kCCDtlM+zl0fs6
         ov5y2jv3avTfR3Zva2JHDVfrgo6tOBP167YcDU6+bzz4txscBvPQHImmscTQpRF1SP5w
         nLV9zn3l5h2ZGje19tNFxiBWbTfRhshAPaFnQtb2TsA1GIRY1HvyxZ8lFR9Co06NH2TG
         9YjSuomtThWW4VFRfd9EFShFk0r2iDMNTHppr6NjYqNURSgN78aVykIBAuTanB8BgoqU
         eitmb0AhNSRuAUR1u31cJ9ZFjL/ZOLzkK7f7QDd1drPHvzBUSGZ4gKiEmvzIMvMyKfxN
         mEuA==
X-Gm-Message-State: AHYfb5jodxIlnptj0R5n5WzRewYfjtXjCBlCOVV2it9AJ8Kpp4zeOHW9
	zl7Bul9xKtvPEL6LrTwqT+ZVXYkXA/yzamY=
X-Received: by 10.55.161.68 with SMTP id k65mr3801306qke.57.1501784465141;
 Thu, 03 Aug 2017 11:21:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.141.205 with HTTP; Thu, 3 Aug 2017 11:20:44 -0700 (PDT)
In-Reply-To: <20170803181855.4892.15585@shiny-2.local>
References: <20170803181855.4892.15585@shiny-2.local>
From: Max Veytsman <max@appcanary.com>
Date: Thu, 3 Aug 2017 14:20:44 -0400
Message-ID: <CAGW7fdu3P-7VVst_+g+N6Tiacgz758hoVq6w0WLrngAy5NWaHg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for max@appcanary.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary="94eb2c0769d69308500555dd71fd"

--94eb2c0769d69308500555dd71fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

--
Max Veytsman
Co-founder appcanary.com
@mveytsman <https://twitter.com/mveytsman>


On Thu, Aug 3, 2017 at 2:18 PM, <kurt@seifried.org> wrote:

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

--94eb2c0769d69308500555dd71fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I accept<div class=3D"gmail_extra"><br clear=3D"all"><div>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div>--</div>M<span style=3D"font-size:12.80=
00001907349px">ax Veytsman</span><div>Co-founder <a href=3D"http://appcanar=
y.com" target=3D"_blank">appcanary.com</a></div><div><div><div><a href=3D"h=
ttps://twitter.com/mveytsman" target=3D"_blank">@mveytsman</a><br></div></d=
iv><div><br></div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Thu, Aug 3, 2017 at 2:18 PM,  <span dir=
=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@se=
ifried.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is =
a confirmation email sent from CVE request form at <a href=3D"https://iwant=
acve.org/" rel=3D"noreferrer" target=3D"_blank">https://iwantacve.org/</a> =
asking you to accept the MITRE CVE Terms of Use (assuming you filled out th=
e CVE form and want one, we can&#39;t use the data until you accept the MIT=
RE CVE Terms of Use).<br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div>

--94eb2c0769d69308500555dd71fd--
