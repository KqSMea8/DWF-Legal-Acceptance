Delivered-To: kurt@seifried.org
Received: by 10.157.29.99 with SMTP id m90csp1387267otm;
        Wed, 13 Sep 2017 13:43:58 -0700 (PDT)
X-Received: by 10.55.4.141 with SMTP id 135mr21148973qke.86.1505335438782;
        Wed, 13 Sep 2017 13:43:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505335438; cv=none;
        d=google.com; s=arc-20160816;
        b=0wiGrUFSxlPMGD56LC73ExkrV8iJvM8UjB0MyzfO1XX07Q648mHizvB8yGAzu9DX+j
         IutM6Cvxbkw9eHWgaadZRAo+TPQRLEn1eRlEUneuldTPT1EDlMJnWO8As45LdE+vzcHS
         RWWerBi8Kjnak7Ow/SGoAc1mETrEwF57yb7yRsHS21cCtR9AOMn44Uu3cE/+NoibkzSv
         DxzZ/Kbfyh/5UAGJPF0pZ/S3IB6h0bB3P1M1TBRviE6hLSrNGQ/w+V3Tg3iQiSx04UNu
         mp69Kbgwft62Hq7ztpqvyg9gIM5X7A5OgXb0/mlH/TwvrN/aKx/fkvlvR4RlqEXSGrAu
         xWTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:subject:date:mime-version
         :content-transfer-encoding:from:dkim-signature
         :arc-authentication-results;
        bh=Lgw6ET4xDzMIzRm/fpb1C5gwzI3blbjpMmRQ/miS5dE=;
        b=lJHSpuaXJ676SkiseorWxKRSPrJTA5/LdgmT+hygan4foQVHTd6dZdqnqA2nz1+i5K
         6Qi+IAk3sm4Z9I8C1V3P7qIP2M4c4iON2bnlDOnDeq65/WeyqzuI6717/vL1U5s1mvaE
         dvraUh2FofKaxODgifp22imBet64Jm5DvXA3ccmoS04gQZaqbm22u344v79fKd1rbA8H
         wm/7RGbw+4e82XivjGiA4pHs4ateQhfCcCcnQginwIYfDc/OurcKXXI7KwYuM9cgPV6d
         1HIjFmNDlkjbL/L9IjLBJlZu2FxO1wp80fHHCcIZfZQEWTRdWteJzil0WHm/DTIGkFAi
         +0KA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rd2PkX3p;
       spf=pass (google.com: domain of tylerp96@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tylerp96@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <tylerp96@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id b7sor2291432qkf.89.2017.09.13.13.43.58
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 13 Sep 2017 13:43:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of tylerp96@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rd2PkX3p;
       spf=pass (google.com: domain of tylerp96@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=tylerp96@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=Lgw6ET4xDzMIzRm/fpb1C5gwzI3blbjpMmRQ/miS5dE=;
        b=Rd2PkX3pyitlnPyddQY6fSYSQaQeOJPNsttVlk+M2DfpDH8MoSPmNYuJjo+usezRRm
         G6UpZFO/BDQOVMim7ZSZnRmBL0fHFrz+ZZgHoORghEEf76ZlPW/My402OuUQtRmVvJdU
         0+Z9Cj1hSW39C2VoRYN3/J0k0kqdoIcYw14ul4WzSnO8Yx5ko0FFcT3+koShjoo8aks1
         qTQlN/yNcBB00eunAcM6HDmLXu1hOE7sSDL/BS6NPRfhReIwpWvceq+cprlH5C48xJTe
         odgJzPyAS7FKHVU0qXe3Guey2BYiuIzrjUt76n1obBiTBz+PazmjhBV0IV3V78RGMWJC
         s8Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=Lgw6ET4xDzMIzRm/fpb1C5gwzI3blbjpMmRQ/miS5dE=;
        b=FdNOUN0iZkbO6msOVb2w7cxNFJHLMSrPzk4OlsfX9jt+Z8denJqOWPf541ZoQbrTYy
         5aaQV2Gr+iypwpLO+ddSZnMtp4GtA8A2dzdx9m3t++tSPn4Pe5+4eUDQgEq1pNUgjDK0
         V1Ko9RG+V/+fF2Egb2GokoVqwd+lzrndyuKMdIZCCNkjr0nIH9idDhErr7CcPiNc80o9
         kbC7kZwS1i02TNmfNIMlZnxZqy5RTJRPKUD3SwrYoK8J1aK13ruTp+6OZqCn9tPItUu3
         WIQF4nYtGqIBALNnOh1bF2lYm4yfmjiVZ87yrulJampfVR2sEN+NxYSdD0d06iomoUzZ
         1u9w==
X-Gm-Message-State: AHPjjUiBinyK1X0WJrzbW3cXotWC3yTosDk3SuzvGCPo6mSYgczsiKJb
	F2xOC4XgQ1UgaJW0sw0=
X-Google-Smtp-Source: AOwi7QCmoBw2xqa04/YMIwAtw64aN0Z7017NzRsS/XaTbqDABS9pm5Iba87BLD3mEut4/xouOHw7xA==
X-Received: by 10.55.94.135 with SMTP id s129mr27183292qkb.152.1505335438037;
        Wed, 13 Sep 2017 13:43:58 -0700 (PDT)
Return-Path: <tylerp96@gmail.com>
Received: from ?IPv6:2603:3003:3c00:2500:f9c0:90bb:5e53:ffc0? ([2603:3003:3c00:2500:f9c0:90bb:5e53:ffc0])
        by smtp.gmail.com with ESMTPSA id j40sm10367984qtj.38.2017.09.13.13.43.57
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 13:43:57 -0700 (PDT)
From: Tyler Price <tylerp96@gmail.com>
Content-Type: multipart/alternative;
	boundary=Apple-Mail-4D034A65-DD40-4FC0-A196-AD06545F390B
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (1.0)
Date: Wed, 13 Sep 2017 16:43:56 -0400
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for tylerp96@gmail.com
Message-Id: <228B1F44-821F-4110-AEF1-9F6E2F636F97@gmail.com>
References: <20170913203638.2669.85929@222.1.168.192.in-addr.arpa>
In-Reply-To: <20170913203638.2669.85929@222.1.168.192.in-addr.arpa>
To: kurt@seifried.org
X-Mailer: iPhone Mail (14G60)


--Apple-Mail-4D034A65-DD40-4FC0-A196-AD06545F390B
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable


I accept

This is a confirmation email sent from CVE request form at https://iwantacve=
.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled o=
ut the CVE form and want one, we can't use the data until you accept the MIT=
RE CVE Terms of Use).=20

Simply quote the email and reply with "I accept" at the top if you agree to t=
he MITRE CVE Terms of Use and we will add a copy of the email to the DWF MIT=
RE CVE Terms of Use acceptance data at https://github.com/distributedweaknes=
sfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artifa=
ct showing that the email address accepted the Terms of Use, when they were a=
ccepted and so on.=20

If you did not submit a CVE request to the DWF you can safely ignore this me=
ssage, however we may resend it at some point in the future, if you don't wa=
nt any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS E=
MAIL EVER AGAIN" and I'll add your email address to the block list so we don=
't spam you with these, please note that this will prevent you from being ab=
le to accept the MITRE CVE Terms of Use via the DWF automatically in future (=
you'll have to manually ask). But again, if you have no idea what a CVE is t=
hen you can ignore this/ask to be added to the block list with no problems.=20=


MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and E=
xposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) and a=
ll CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare d=
erivative works of, publicly display, publicly perform, sublicense, and dist=
ribute such materials and derivative works. Unless required by applicable la=
w or agreed to in writing, you provide such materials on an "AS IS" BASIS, W=
ITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, incl=
uding, without limitation, any warranties or conditions of TITLE, NON-INFRIN=
GEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no=
-charge, royalty-free, irrevocable copyright license to reproduce, prepare d=
erivative works of, publicly display, publicly perform, sublicense, and dist=
ribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyright=
 designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PR=
OVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPR=
ESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUS=
TEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR I=
MPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORM=
ATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERC=
HANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-Data=
base/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wit=
h your question/concerns/etc.=20


> On Sep 13, 2017, at 4:36 PM, kurt@seifried.org wrote:
>=20
> This is a confirmation email sent from CVE request form at https://iwantac=
ve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the M=
ITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you agree t=
o the MITRE CVE Terms of Use and we will add a copy of the email to the DWF M=
ITRE CVE Terms of Use acceptance data at https://github.com/distributedweakn=
essfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an arti=
fact showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.=20
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't w=
ant any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS=
 EMAIL EVER AGAIN" and I'll add your email address to the block list so we d=
on't spam you with these, please note that this will prevent you from being a=
ble to accept the MITRE CVE Terms of Use via the DWF automatically in future=
 (you'll have to manually ask). But again, if you have no idea what a CVE is=
 then you can ignore this/ask to be added to the block list with no problems=
.=20
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities an=
d Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BAS=
IS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,=
 including, without limitation, any warranties or conditions of TITLE, NON-I=
NFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare d=
erivative works of, publicly display, publicly perform, sublicense, and dist=
ribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you make f=
or such purposes is authorized provided that you reproduce MITRE's copyright=
 designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REP=
RESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRU=
STEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR I=
MPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORM=
ATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERC=
HANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Da=
tabase/blob/master/TermsOfUse.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually w=
ith your question/concerns/etc.=20

--Apple-Mail-4D034A65-DD40-4FC0-A196-AD06545F390B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div><br></div><div id=3D"AppleMailSignatur=
e">I accept</div><div id=3D"AppleMailSignature"><br><span style=3D"backgroun=
d-color: rgba(255, 255, 255, 0);">This is a confirmation email sent from CVE=
 request form at&nbsp;<a href=3D"https://iwantacve.org/" dir=3D"ltr" x-apple=
-data-detectors=3D"true" x-apple-data-detectors-type=3D"link" x-apple-data-d=
etectors-result=3D"0">https://iwantacve.org/</a>&nbsp;asking you to accept t=
he MITRE CVE Terms of Use (assuming you filled out the CVE form and want one=
, we can't use the data until you accept the MITRE CVE Terms of Use).&nbsp;<=
br><br>Simply quote the email and reply with "I accept" at the top if you ag=
ree to the MITRE CVE Terms of Use and we will add a copy of the email to the=
 DWF MITRE CVE Terms of Use acceptance data at&nbsp;<a href=3D"https://githu=
b.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Us=
e" dir=3D"ltr" x-apple-data-detectors=3D"true" x-apple-data-detectors-type=3D=
"link" x-apple-data-detectors-result=3D"1">https://github.com/distributedwea=
knessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br><br>The rea=
son we use a complete copy of the email is that it provides an artifact show=
ing that the email address accepted the Terms of Use, when they were accepte=
d and so on.&nbsp;<br><br>If you did not submit a CVE request to the DWF you=
 can safely ignore this message, however we may resend it at some point in t=
he future, if you don't want any future emails simply reply with "unsubscrib=
e" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address t=
o the block list so we don't spam you with these, please note that this will=
 prevent you from being able to accept the MITRE CVE Terms of Use via the DW=
F automatically in future (you'll have to manually ask). But again, if you h=
ave no idea what a CVE is then you can ignore this/ask to be added to the bl=
ock list with no problems.&nbsp;<br><br>MITRE CVE Terms of Use<br><br>LICENS=
E<br><br>Submissions: For all materials you submit to the Common Vulnerabili=
ties and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (M=
ITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-e=
xclusive, no-charge, royalty-free, irrevocable copyright license to reproduc=
e, prepare derivative works of, publicly display, publicly perform, sublicen=
se, and distribute such materials and derivative works. Unless required by a=
pplicable law or agreed to in writing, you provide such materials on an "AS I=
S" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or im=
plied, including, without limitation, any warranties or conditions of TITLE,=
 NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.<br>=
<br>CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive=
, no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you mak=
e for such purposes is authorized provided that you reproduce MITRE's copyri=
ght designation and this license in any such copy.<br><br>DISCLAIMERS<br><br=
>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REP=
RESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRU=
STEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR I=
MPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORM=
ATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERC=
HANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br><br>A copy is available a=
t&nbsp;<a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/=
blob/master/TermsOfUse.md" dir=3D"ltr" x-apple-data-detectors=3D"true" x-app=
le-data-detectors-type=3D"link" x-apple-data-detectors-result=3D"2">https://=
github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md<=
/a><br><br>To contact the DWF either hit reply, or email&nbsp;<a href=3D"mai=
lto:kurt@seifried.org" dir=3D"ltr" x-apple-data-detectors=3D"true" x-apple-d=
ata-detectors-type=3D"link" x-apple-data-detectors-result=3D"3">kurt@seifrie=
d.org</a>&nbsp;manually with your question/concerns/etc.&nbsp;<br></span><di=
v><br></div></div><div><br>On Sep 13, 2017, at 4:36 PM, <a href=3D"mailto:ku=
rt@seifried.org">kurt@seifried.org</a> wrote:<br><br></div><blockquote type=3D=
"cite"><div><span>This is a confirmation email sent from CVE request form at=
 <span><a href=3D"https://iwantacve.org/">https://iwantacve.org/</a></span> a=
sking you to accept the MITRE CVE Terms of Use (assuming you filled out the C=
VE form and want one, we can't use the data until you accept the MITRE CVE T=
erms of Use). </span><br><span></span><br><span>Simply quote the email and r=
eply with "I accept" at the top if you agree to the MITRE CVE Terms of Use a=
nd we will add a copy of the email to the DWF MITRE CVE Terms of Use accepta=
nce data at <span><a href=3D"https://github.com/distributedweaknessfiling/DW=
F-Legal-Acceptance/tree/master/Terms-Of-Use">https://github.com/distributedw=
eaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a></span></span=
><br><span></span><br><span>The reason we use a complete copy of the email i=
s that it provides an artifact showing that the email address accepted the T=
erms of Use, when they were accepted and so on. </span><br><span></span><br>=
<span>If you did not submit a CVE request to the DWF you can safely ignore t=
his message, however we may resend it at some point in the future, if you do=
n't want any future emails simply reply with "unsubscribe" or "DON'T SEND ME=
 THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so=
 we don't spam you with these, please note that this will prevent you from b=
eing able to accept the MITRE CVE Terms of Use via the DWF automatically in f=
uture (you'll have to manually ask). But again, if you have no idea what a C=
VE is then you can ignore this/ask to be added to the block list with no pro=
blems. </span><br><span></span><br><span>MITRE CVE Terms of Use</span><br><s=
pan></span><br><span>LICENSE</span><br><span></span><br><span>Submissions: Fo=
r all materials you submit to the Common Vulnerabilities and Exposures (CVE=C2=
=AE), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numberin=
g Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royal=
ty-free, irrevocable copyright license to reproduce, prepare derivative work=
s of, publicly display, publicly perform, sublicense, and distribute such ma=
terials and derivative works. Unless required by applicable law or agreed to=
 in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANT=
IES OR CONDITIONS OF ANY KIND, either express or implied, including, without=
 limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHA=
NTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span><br><span></span><br><=
span>CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you m=
ake for such purposes is authorized provided that you reproduce MITRE's copy=
right designation and this license in any such copy.</span><br><span></span>=
<br><span>DISCLAIMERS</span><br><span></span><br><span>ALL DOCUMENTS AND THE=
 INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" B=
ASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED=
 BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS=
, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT N=
OT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT I=
NFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FO=
R A PARTICULAR PURPOSE.</span><br><span></span><br><span>A copy is available=
 at <span><a href=3D"https://github.com/distributedweaknessfiling/DWF-Databa=
se/blob/master/TermsOfUse.md">https://github.com/distributedweaknessfiling/D=
WF-Database/blob/master/TermsOfUse.md</a></span></span><br><span></span><br>=
<span>To contact the DWF either hit reply, or email <span><a href=3D"mailto:=
kurt@seifried.org">kurt@seifried.org</a></span> manually with your question/=
concerns/etc. </span><br></div></blockquote></body></html>=

--Apple-Mail-4D034A65-DD40-4FC0-A196-AD06545F390B--
