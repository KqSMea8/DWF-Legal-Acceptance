Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp431797ivl;
        Sat, 26 May 2018 00:02:01 -0700 (PDT)
X-Received: by 2002:adf:f78d:: with SMTP id q13-v6mr4963405wrp.60.1527318121358;
        Sat, 26 May 2018 00:02:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1527318121; cv=none;
        d=google.com; s=arc-20160816;
        b=iyg2eBZEDo/EmzpUtJb+28KLfQTggYAOwPBJ9hDnA/i0p9fjLrjIOtMcKAox3lHPDE
         nxsxCf8Q9jL8uk/Jw8MhUiXRrAvF8NDdfkRZIXZC8SoOE+m9XS8RmabiUaliLy/Ts7Kt
         xbM1ZdNN1T8FVxqmVix+4d0Cl3+FkT/DgnnEUF/o81NaZi3dRK2KOyV/cir/V/MfpUg9
         Ko/CeDD4vVb7vDEhiXwy0Pdh8qhh0Q+6gEDLVPUkHg0LTzlywXSSrh9YDcqUqHvFxb58
         4C/sUrCCrZWMNo5CAjcAQmCJetP/t0PPED2eqlwA9Z7vNE7Qh2tqLE23dd53VIw/J39e
         Q9hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:to:in-reply-to:subject:date:mime-version:message-id:from
         :dkim-signature:arc-authentication-results;
        bh=znBzjIXEZg+zmbLQ6MNgyLSriSEwRLBfY6C/PkeOqyk=;
        b=ole24e0Bny5+8bSJpDkIZUplrQwPF7+HAqyIthSc2ZRs5ZRDBdayCgdQ2uphpcW0tV
         9w/9MMrXZOM+Xl5mCh1i8PmgO8dVLessu1v1c2uoRwkOdWxwR6fLCJlw4xzp1mPEGq/o
         QanW6lP4L/5ojPB4p0+Bws8KFioXx611RFFP9KRjV2Wh24aXfQVPDLjvLI62x85Q3AK1
         GGN9DfgnpE0BjvDNsePziK3XbJ4667sYP7WOTijdqz1gxvvfFO6lsya8fIUcXCdr6EbT
         cpyq7dXOekbSgEYfWJmhSWBFIPIvxs1ulfTjmAwUQUlfd+h23hoXeOjQuARY306Fb6sB
         6vIQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@fractalideas-com.20150623.gappssmtp.com header.s=20150623 header.b=YRef5VYt;
       spf=pass (google.com: domain of aymeric.augustin@fractalideas.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=aymeric.augustin@fractalideas.com
Return-Path: <aymeric.augustin@fractalideas.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id x23-v6sor2875046wma.70.2018.05.26.00.02.00
        for <kurt@seifried.org>
        (Google Transport Security);
        Sat, 26 May 2018 00:02:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aymeric.augustin@fractalideas.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@fractalideas-com.20150623.gappssmtp.com header.s=20150623 header.b=YRef5VYt;
       spf=pass (google.com: domain of aymeric.augustin@fractalideas.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=aymeric.augustin@fractalideas.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fractalideas-com.20150623.gappssmtp.com; s=20150623;
        h=from:message-id:mime-version:date:subject:in-reply-to:to:references;
        bh=znBzjIXEZg+zmbLQ6MNgyLSriSEwRLBfY6C/PkeOqyk=;
        b=YRef5VYtyhF7wM3Q3EwOyCpVZ2Q9QFj+OKwVTCepdXYGASDeh9rgPkyppIqA/aa6kO
         W5+rWU9DoVQwiJaQs9sYpykX2B59XorTNHewbCoddz6fM8OJ8NNDvWuAIVZjL2hDMHYd
         r5qgURg+qHRSixahjNQIIzSg2BSbaFUPrClDl1QhBh4wwkD64NiDsO63phyPqFXJdB68
         MyArtZr46ToOA51R3LFCJl12+EjfN0q5ccLfWFkJU+5EA55XlucOoGPXR9rv24m0G7zw
         mgHohrfSaVMtKOwREcilpS/Mf7ZAA7ybsPVbjc6QbOFpN4Keb/2p2rWZf2ibcMNGgfu+
         nmxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:message-id:mime-version:date:subject
         :in-reply-to:to:references;
        bh=znBzjIXEZg+zmbLQ6MNgyLSriSEwRLBfY6C/PkeOqyk=;
        b=uhIg5QbNHr3OzOS1QuOzLSiVPA6bAQp0UHnLRtqlF5xt3ZaVHIjizTycxueMUJ7eR9
         qvKA9A9XycI9XqpNSH19e79kGxgW2O5V/46kSe52ye/0viQ/3dfOztkZFcokfUGqysVL
         q6PShd6XcvO4jg7+i823YEwpZRBB9h/myeKIxlTxuEG6hp3hzm3vZi7X5jva21Y1weTs
         qEZ/KsOTb6t8vIwxWkU14JsBThgqNteOVksiKMq3gRgs2EBA5SdOGqry7B4aNwYauT05
         UjoAfgWpsLBTccYnmjOHQA5Tysgmyev50mRbwwTesowQOcnW1axaXcx0o8QbXYH4hM66
         0mkQ==
X-Gm-Message-State: ALKqPwfPRtH1c4CEcd3NHdKay79csL7/IEbE+KeWjcPoSAVsiatgTGLt
	ZCJQpz4QBVX1ZuRhFMWREOCxHEYR/AU=
X-Google-Smtp-Source: AB8JxZpwHumMibUHO+XI+HxgqMPCDIPcxPwfEpi3l6cUZVtiU4FziCrV74gCX3kSWK7TGd3Qdtj0EQ==
X-Received: by 2002:a1c:850c:: with SMTP id h12-v6mr4432741wmd.136.1527318120498;
        Sat, 26 May 2018 00:02:00 -0700 (PDT)
Return-Path: <aymeric.augustin@fractalideas.com>
Received: from [192.168.0.12] (85-171-50-151.rev.numericable.fr. [85.171.50.151])
        by smtp.gmail.com with ESMTPSA id q7-v6sm17932449wrf.0.2018.05.26.00.01.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 May 2018 00:01:59 -0700 (PDT)
From: Aymeric Augustin <aymeric.augustin@fractalideas.com>
Message-Id: <EA732819-4DCD-4D02-B168-A695FC1ED809@fractalideas.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_575E3719-81AE-484A-A7F0-6C96040D563C"
Mime-Version: 1.0 (Mac OS X Mail 11.3 \(3445.6.18\))
Date: Sat, 26 May 2018 09:01:58 +0200
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 aymeric.augustin@fractalideas.com
In-Reply-To: <20180525190612.6783.65852@shiny-2.local>
To: kurt@seifried.org
References: <20180525190612.6783.65852@shiny-2.local>
X-Mailer: Apple Mail (2.3445.6.18)


--Apple-Mail=_575E3719-81AE-484A-A7F0-6C96040D563C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I accept.

--=20
Aymeric Augustin



> On 25 May 2018, at 21:06, kurt@seifried.org wrote:
>=20
> This is a confirmation email sent from CVE request form at =
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can't use the =
data until you accept the MITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you =
agree to the MITRE CVE Terms of Use and we will add a copy of the email =
to the DWF MITRE CVE Terms of Use acceptance data at =
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mas=
ter/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an =
artifact showing that the email address accepted the Terms of Use, when =
they were accepted and so on.=20
>=20
> If you did not submit a CVE request to the DWF you can safely ignore =
this message, however we may resend it at some point in the future, if =
you don't want any future emails simply reply with "unsubscribe" or =
"DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to =
the block list so we don't spam you with these, please note that this =
will prevent you from being able to accept the MITRE CVE Terms of Use =
via the DWF automatically in future (you'll have to manually ask). But =
again, if you have no idea what a CVE is then you can ignore this/ask to =
be added to the block list with no problems.=20
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common =
Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant to The MITRE =
Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a =
perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, =
publicly display, publicly perform, sublicense, and distribute such =
materials and derivative works. Unless required by applicable law or =
agreed to in writing, you provide such materials on an "AS IS" BASIS, =
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, =
including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, =
non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly =
perform, sublicense, and distribute Common Vulnerabilities and Exposures =
(CVE=C2=AE). Any copy you make for such purposes is authorized provided =
that you reproduce MITRE's copyright designation and this license in any =
such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE =
ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION =
HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, =
ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL =
WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY =
WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY =
RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A =
PARTICULAR PURPOSE.
>=20
> A copy is available at =
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mas=
ter/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org =
manually with your question/concerns/etc.=20
>=20


--Apple-Mail=_575E3719-81AE-484A-A7F0-6C96040D563C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">I =
accept.<div class=3D""><br class=3D""><div class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div class=3D""><div class=3D"">--&nbsp;</div><div =
class=3D"">Aymeric Augustin</div></div><div class=3D""><br =
class=3D""></div></div><br class=3D"Apple-interchange-newline">

</div>
<div style=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 25 May 2018, at 21:06, <a href=3D"mailto:kurt@seifried.org" =
class=3D"">kurt@seifried.org</a> wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">This =
is a confirmation email sent from CVE request form at <a =
href=3D"https://iwantacve.org/" class=3D"">https://iwantacve.org/</a> =
asking you to accept the MITRE CVE Terms of Use (assuming you filled out =
the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use). <br class=3D""><br class=3D"">Simply quote the =
email and reply with "I accept" at the top if you agree to the MITRE CVE =
Terms of Use and we will add a copy of the email to the DWF MITRE CVE =
Terms of Use acceptance data at <a =
href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/=
tree/master/Terms-Of-Use" =
class=3D"">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptan=
ce/tree/master/Terms-Of-Use</a><br class=3D""><br class=3D"">The reason =
we use a complete copy of the email is that it provides an artifact =
showing that the email address accepted the Terms of Use, when they were =
accepted and so on. <br class=3D""><br class=3D"">If you did not submit =
a CVE request to the DWF you can safely ignore this message, however we =
may resend it at some point in the future, if you don't want any future =
emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER =
AGAIN" and I'll add your email address to the block list so we don't =
spam you with these, please note that this will prevent you from being =
able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea =
what a CVE is then you can ignore this/ask to be added to the block list =
with no problems. <br class=3D""><br class=3D"">MITRE CVE Terms of =
Use<br class=3D""><br class=3D"">LICENSE<br class=3D""><br =
class=3D"">Submissions: For all materials you submit to the Common =
Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant to The MITRE =
Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a =
perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, =
publicly display, publicly perform, sublicense, and distribute such =
materials and derivative works. Unless required by applicable law or =
agreed to in writing, you provide such materials on an "AS IS" BASIS, =
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, =
including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br class=3D""><br class=3D"">CVE Usage: MITRE hereby grants you =
a perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, =
publicly display, publicly perform, sublicense, and distribute Common =
Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make for such =
purposes is authorized provided that you reproduce MITRE's copyright =
designation and this license in any such copy.<br class=3D""><br =
class=3D"">DISCLAIMERS<br class=3D""><br class=3D"">ALL DOCUMENTS AND =
THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN =
"AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR =
IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, =
OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR =
IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE =
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED =
WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br =
class=3D""><br class=3D"">A copy is available at <a =
href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/=
blob/master/Terms-Of-Use.md" =
class=3D"">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptan=
ce/blob/master/Terms-Of-Use.md</a><br class=3D""><br class=3D"">To =
contact the DWF either hit reply, or <a href=3D"mailto:kurt@seifried.org" =
class=3D"">email kurt@seifried.org</a> manually with your =
question/concerns/etc. <br class=3D""><br =
class=3D""></div></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_575E3719-81AE-484A-A7F0-6C96040D563C--
