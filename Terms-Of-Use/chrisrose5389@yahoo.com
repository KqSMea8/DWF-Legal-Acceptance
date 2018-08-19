Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp3564057otd;
        Mon, 13 Aug 2018 14:09:08 -0700 (PDT)
X-Google-Smtp-Source: AA+uWPy7ff44FIjQ2Kkwcw/c7IAkZaBJiCM0Mf8+GY4HO8IjCRH3700g/ocHBRqDQgziFlwlKgbU
X-Received: by 2002:ac8:1a01:: with SMTP id v1-v6mr19010726qtj.183.1534194548534;
        Mon, 13 Aug 2018 14:09:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1534194548; cv=none;
        d=google.com; s=arc-20160816;
        b=pz9rgUhUg0y8ptmSpw+osDRF1J0Blu9WA1sxVAYGaZDoifLDelVtQCH6nFnUGHCrly
         TLJED55N8VHqJM0UTy1XfJ34UaxBF82ADFRGO1YY8XalSrKYq6he5I+EN16oGSOjkcEH
         o0f88nxJdfuYZW5TTdTzEP+QbqdW7BvcTnnK1fr68ECSfsk0RJX5Orswd7U8xu25pYZD
         BTrEVp0rxIHIQ5vp0Wy98mUR78PuhKVH2GcR3griMFLs/DcxWRns9bEPflEf/BtWZhAA
         QDQvlj+pZ4AdmAU9GYIRJmKGcg+1tUGsqgic0WnKG2Apsu5lRAXSZooyqnYssWu084D8
         t4Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :dkim-signature:arc-authentication-results;
        bh=v9cND7PENuaF/ptRk2qgCPniYUdE3V2L+pySrm/kZSI=;
        b=y/ldpCT77NDq/lSIRiXpIxum0Xv1YRQZ76EBrZ0hREoV/riHFgE2LzmQN6ZfyQsiYp
         4u7UVgjG0WrXB6dr2N8MYMoDaEoa5FC8f5HVbxjzTOXRNjReHZfW4jaNURaVcF9oZwTY
         yJD7GOXKeiIF3o7vtoH+nOZTWSk6KwRZTuPVgA4mdkY/57tThjjuOo25mSf+CLNBV0c+
         ifuXFpWr/v9z2ev+AwO+64xCp0RY+3V/gKZBLkKahTmmV97guHExqLBGUJw3afAQmxJi
         rSgv6wii+cMOXEgkJCuA3A/g0pKVfuMfzUPk/ODlUKyYAsIdkZomVT9plqnDJXXprU+2
         cQhw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=XyPqVSQ3;
       spf=pass (google.com: domain of chrisrose5389@yahoo.com designates 74.6.132.124 as permitted sender) smtp.mailfrom=chrisrose5389@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <chrisrose5389@yahoo.com>
Received: from sonic314-14.consmr.mail.bf2.yahoo.com (sonic314-14.consmr.mail.bf2.yahoo.com. [74.6.132.124])
        by mx.google.com with ESMTPS id t7-v6si1669946qtp.358.2018.08.13.14.09.08
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Aug 2018 14:09:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of chrisrose5389@yahoo.com designates 74.6.132.124 as permitted sender) client-ip=74.6.132.124;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=XyPqVSQ3;
       spf=pass (google.com: domain of chrisrose5389@yahoo.com designates 74.6.132.124 as permitted sender) smtp.mailfrom=chrisrose5389@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1534194548; bh=v9cND7PENuaF/ptRk2qgCPniYUdE3V2L+pySrm/kZSI=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject; b=XyPqVSQ3J/0XTzE270GIzR9cyyJy+WI5tj7BWrK+qgTmaKP4k4Rnov7krNU2eLXOzBvpXaSu/Wo6Cvaa6Otqgrr+5KkUJQxRrZ3CQjrQJgWw0Wy6ZaZ/yk1Rs6mLirYzrAiODndPNX/TfpeGoWov/+FvtYEa5J2j8vc0mg13LgVm+Q05W3cbfKV6IH7QQqfe2j0e6NF4ymwbpbfJ5SBFwqqBpfB+r5KV1bQKlCKQenASlfmvMvTv1ZTxfmdYZuJSjmBtug1nI0bj6dCFMzZRAkwKXPcJOQFHLF4Ul8HTa3yitDDu0/2loDUCIgvdfeqKNZi9Mz+1SXy5ZOAjkdiZxA==
X-YMail-OSG: 0Brt3UoVM1lKYr4yZq9EiSg_9bVM1l5ZW9MTxx9zphZqBBaIArFZuCeSF_LcKiu
 XpJAhvjNvwm90SXWeuS_qLYLIVDJRV393ZxttUKPX.X5UI.ahHWJNtpCcNQxgQiyaKkp5WKu1y1C
 sVlxVFvfgrFraYLSshsI7cYuulIQ4.7Z.CBynGofep0KIK0O58GzRPb1EFFGn.iB2DS2uCpl5FYz
 jnFZacZf8Ghj4zfIMQcMiRcgvRYecjwKVsHGa5ySlBRfndai4iZGdxbs0IPq7xYgvGeJqwbTxs4_
 ZijJ1BOqFpwKxr6XzV2IGg1SfTIlohNN1sAR0gdmHJpLfewjXYxxSfwujEyjh7cwg3OKLTPCuygi
 ZKc3j6kWH64AOmUVFJFgDQd2hPZslIWRQSkb8XBPg2.KERFLvB.ebDNHT9D_EgYk2yARf2sTD.04
 z20_n34L9bfZaCXfkxfObWhU3ae6H4YqP7MNEzWoMnfF7TfUqrGkppXSEW4fgdIbJSlywUR.rMrg
 jKxzvBamxv.04VSqlKeZ4zPQMpjmONIn6leoWWmoho928vYQZ82WO5hY.lnBOnwKdXmfrFGTmZVi
 mL9bCeLkQ60MAwrtJYfHib_PhQZjZmvmqO85BVQxUu27RZ3PlCPvUIPQzIuW4O8tzPHnQobfkLQA
 T9QM2J.lJsFIeC.nDymF4kGAv7ezBIvPaLhtI665iACVBD9bZEJnElOMfLZWrHZwvpAN.LzPd34t
 .cHC.SOl197KW.S2Yzifm5E2I5RU5FtZdinCG1RcTimdketSLQGmFOKCc5_QdWEunmi2k1I.W11Q
 pH_5wpUxP5O6c70MqrpAmEgJxUwMVgD_STMVWmgKejbFWz6oe7KHt9VHKKWvRMKsf3Rt.Hk5dzkb
 s9eTSJwpyDtGMIZrlGUeyAhZaNUzMGGQ.TqfSkhpkI_O_CY7HaKeiM4ZSH3MRxNDMLvL9EeqaIZN
 iTCY75.1Ru3BLLP5QmGyHqjxVfLst5RwCS1_uvn64wrUHMBs6wa93JfV9v_WuDMoDw1Imx8Bf7Di
 CN6.W_QQebBm9dAHEf4iGVJ5miGx14IREzHI-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.bf2.yahoo.com with HTTP; Mon, 13 Aug 2018 21:09:08 +0000
Date: Mon, 13 Aug 2018 21:09:01 +0000 (UTC)
From: Chris Rose <chrisrose5389@yahoo.com>
To:  <kurt@seifried.org>
Message-ID: <437229815.6848915.1534194541543@mail.yahoo.com>
In-Reply-To: <20180813210031.3797.62851@bigbox.local>
References: <20180813210031.3797.62851@bigbox.local>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 chrisrose5389@yahoo.com
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_6848914_1963124627.1534194541541"
X-Mailer: WebService/1.1.12206 YahooMailIosMobile Raven/42719 CFNetwork/887 Darwin/17.0.0
Content-Length: 16673

------=_Part_6848914_1963124627.1534194541541
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=E2=80=9CI accept.=E2=80=9D
This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use).=20

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.=20

If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems.=20

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporation (MI=
TRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-e=
xclusive, no-charge, royalty-free, irrevocable copyright license to reprodu=
ce, prepare derivative works of, publicly display, publicly perform, sublic=
ense, and distribute such materials and derivative works. Unless required b=
y applicable law or agreed to in writing, you provide such materials on an =
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express=
 or implied, including, without limitation, any warranties or conditions of=
 TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURP=
OSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any copy =
you make for such purposes is authorized provided that you reproduce MITRE'=
s copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE I=
NFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=
F MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94
=E2=80=9CI accept=E2=80=9D.=C2=A0


On Monday, August 13, 2018, 4:00 PM, kurt@seifried.org wrote:

This is a confirmation email sent from CVE request form at https://iwantacv=
e.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the =
MITRE CVE Terms of Use).=20

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.=20

If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems.=20

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporation (MI=
TRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-e=
xclusive, no-charge, royalty-free, irrevocable copyright license to reprodu=
ce, prepare derivative works of, publicly display, publicly perform, sublic=
ense, and distribute such materials and derivative works. Unless required b=
y applicable law or agreed to in writing, you provide such materials on an =
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express=
 or implied, including, without limitation, any warranties or conditions of=
 TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURP=
OSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any copy =
you make for such purposes is authorized provided that you reproduce MITRE'=
s copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE I=
NFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=
F MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.=20





------=_Part_6848914_1963124627.1534194541541
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html xmlns=3D"http://www.w3.org/1999/xhtml" xmlns:v=3D"urn:schemas-microso=
ft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:office:office"><head><!--[=
if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>=
96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]--></head><bo=
dy>
<div>=E2=80=9CI accept.=E2=80=9D</div><div><br></div><div>This is a confirm=
ation email sent from CVE request form at <a href=3D"https://iwantacve.org/=
" target=3D"_blank">https://iwantacve.org/</a><div id=3D"temp-enhancr-place=
holder" class=3D"enhancr-placeholder-medium" data-size=3D"medium"></div> as=
king you to accept the MITRE CVE Terms of Use (assuming you filled out the =
CVE form and want one, we can't use the data until you accept the MITRE CVE=
 Terms of Use). <br><br>Simply quote the email and reply with "I accept" at=
 the top if you agree to the MITRE CVE Terms of Use and we will add a copy =
of the email to the DWF MITRE CVE Terms of Use acceptance data at <a href=
=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/=
master/Terms-Of-Use" target=3D"_blank">https://github.com/distributedweakne=
ssfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><div id=3D"temp-e=
nhancr-placeholder" class=3D"enhancr-placeholder-medium" data-size=3D"mediu=
m"></div><br><br>The reason we use a complete copy of the email is that it =
provides an artifact showing that the email address accepted the Terms of U=
se, when they were accepted and so on. <br><br>If you did not submit a CVE =
request to the DWF you can safely ignore this message, however we may resen=
d it at some point in the future, if you don't want any future emails simpl=
y reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'l=
l add your email address to the block list so we don't spam you with these,=
 please note that this will prevent you from being able to accept the MITRE=
 CVE Terms of Use via the DWF automatically in future (you'll have to manua=
lly ask). But again, if you have no idea what a CVE is then you can ignore =
this/ask to be added to the block list with no problems. <br><br>MITRE CVE =
Terms of Use<br><br>LICENSE<br><br>Submissions: For all materials you submi=
t to the Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE), you hereby=
 grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (=
CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrev=
ocable copyright license to reproduce, prepare derivative works of, publicl=
y display, publicly perform, sublicense, and distribute such materials and =
derivative works. Unless required by applicable law or agreed to in writing=
, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CON=
DITIONS OF ANY KIND, either express or implied, including, without limitati=
on, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILIT=
Y, or FITNESS FOR A PARTICULAR PURPOSE.<br><br>CVE Usage: MITRE hereby gran=
ts you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irre=
vocable copyright license to reproduce, prepare derivative works of, public=
ly display, publicly perform, sublicense, and distribute Common Vulnerabili=
ties and Exposures (CVE=C3=82=C2=AE). Any copy you make for such purposes i=
s authorized provided that you reproduce MITRE's copyright designation and =
this license in any such copy.<br><br>DISCLAIMERS<br><br>ALL DOCUMENTS AND =
THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS =
IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPO=
NSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS,=
 AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUD=
ING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN=
 WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY =
OR FITNESS FOR A PARTICULAR PURPOSE.<br><br>A copy is available at <a href=
=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/=
master/Terms-Of-Use.md" target=3D"_blank">https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><div id=3D"=
temp-enhancr-placeholder" class=3D"enhancr-placeholder-medium" data-size=3D=
"medium"></div><br><br>To contact the DWF either hit reply, or email kurt@s=
eifried.org manually with your question/concerns/etc.<br></div><div>=E2=80=
=94=00=E2=80=94=00=E2=80=94=00=E2=80=94=00=E2=80=94=00=E2=80=94=00=E2=80=94=
=00=E2=80=94=00=E2=80=94=00=E2=80=94=00=E2=80=94</div><div><br></div><span =
id=3D"yahoo-rte-cursor-span"></span>=E2=80=9CI accept=E2=80=9D.&nbsp;<br><b=
r><p class=3D"yahoo-quoted-begin" style=3D"font-size: 15px; color: #715FFA;=
 padding-top: 15px; margin-top: 0">On Monday, August 13, 2018, 4:00 PM, kur=
t@seifried.org wrote:</p><blockquote class=3D"iosymail"><div dir=3D"ltr">Th=
is is a confirmation email sent from CVE request form at <a href=3D"https:/=
/iwantacve.org/ " target=3D"_blank">https://iwantacve.org/ </a>asking you t=
o accept the MITRE CVE Terms of Use (assuming you filled out the CVE form a=
nd want one, we can't use the data until you accept the MITRE CVE Terms of =
Use). <br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Simply quote th=
e email and reply with "I accept" at the top if you agree to the MITRE CVE =
Terms of Use and we will add a copy of the email to the DWF MITRE CVE Terms=
 of Use acceptance data at <a href=3D"https://github.com/distributedweaknes=
sfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" target=3D"_blank">ht=
tps://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master=
/Terms-Of-Use</a><br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">The =
reason we use a complete copy of the email is that it provides an artifact =
showing that the email address accepted the Terms of Use, when they were ac=
cepted and so on. <br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">If =
you did not submit a CVE request to the DWF you can safely ignore this mess=
age, however we may resend it at some point in the future, if you don't wan=
t any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS =
EMAIL EVER AGAIN" and I'll add your email address to the block list so we d=
on't spam you with these, please note that this will prevent you from being=
 able to accept the MITRE CVE Terms of Use via the DWF automatically in fut=
ure (you'll have to manually ask). But again, if you have no idea what a CV=
E is then you can ignore this/ask to be added to the block list with no pro=
blems. <br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">MITRE CVE Term=
s of Use<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">LICENSE<br></=
div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Submissions: For all materi=
als you submit to the Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE=
), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering =
Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalt=
y-free, irrevocable copyright license to reproduce, prepare derivative work=
s of, publicly display, publicly perform, sublicense, and distribute such m=
aterials and derivative works. Unless required by applicable law or agreed =
to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARR=
ANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, wit=
hout limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, M=
ERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.<br></div><div dir=3D"l=
tr"><br></div><div dir=3D"ltr">CVE Usage: MITRE hereby grants you a perpetu=
al, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyrigh=
t license to reproduce, prepare derivative works of, publicly display, publ=
icly perform, sublicense, and distribute Common Vulnerabilities and Exposur=
es (CVE=C3=82=C2=AE). Any copy you make for such purposes is authorized pro=
vided that you reproduce MITRE's copyright designation and this license in =
any such copy.<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">DISCLAI=
MERS<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">ALL DOCUMENTS AND=
 THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS=
 IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SP=
ONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS=
, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLU=
DING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREI=
N WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY=
 OR FITNESS FOR A PARTICULAR PURPOSE.<br></div><div dir=3D"ltr"><br></div><=
div dir=3D"ltr">A copy is available at <a href=3D"https://github.com/distri=
butedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" targe=
t=3D"_blank">https://github.com/distributedweaknessfiling/DWF-Legal-Accepta=
nce/blob/master/Terms-Of-Use.md</a><br></div><div dir=3D"ltr"><br></div><di=
v dir=3D"ltr">To contact the DWF either hit reply, or email <a ymailto=3D"m=
ailto:kurt@seifried.org" href=3D"mailto:kurt@seifried.org">kurt@seifried.or=
g</a> manually with your question/concerns/etc. <br></div><div dir=3D"ltr">=
<br></div><blockquote></blockquote></blockquote>
</body></html>
------=_Part_6848914_1963124627.1534194541541--
