Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp3119309otc;
        Thu, 29 Nov 2018 16:32:34 -0800 (PST)
X-Received: by 2002:adf:f9cb:: with SMTP id w11mr3000100wrr.201.1543537954819;
        Thu, 29 Nov 2018 16:32:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543537954; cv=none;
        d=google.com; s=arc-20160816;
        b=GxnriPamh5MWNnX9GANDy3qM/D8Y5jETXrrvgoc82soKDV6uFNoeM7fQYOiahqXLEN
         L75QTi1BOezzXjIdWYfB4X55PcYC8k0gYLLp2qt2/MWEw3J+xJrur++1rIpKJuieIrK8
         2cGD0SR5C44KeTLFWdJwzEQjE7SrKdxevUmBkoXBEiST3azyUISuebVYFMUuzT4ObBdQ
         AdnYYUWHxYEzYQVN6Ey2pT2zuOLLpk6x2a1ITNUmgM2kbC9DehSlQfSCiBTEh5wM7MQt
         6LS8AmaG5rF2QcBu1S614Nat4aTQUOK4KeHuuZ/e8FQVK6ORtOQUGFIbpio3/G7HY+V+
         GX8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:subject:date:mime-version
         :content-transfer-encoding:from:dkim-signature;
        bh=74PcieEIwsXD9lbcOPKPZDiGAE4ly5mNi/ORf3iz7oo=;
        b=R4k9Uy2HOkOW9oGisU/wtWD5PD/zDoe/s1VW2zXOsuko81cKj8uAJcSjVo0GLy6snI
         Ex9FxSGsyCQG5SWvyv88mF74kBhg4XpMcadPagn1ahj6bIi0IYV8IJ268265V+7QpeHi
         K+1HfYThIw8Ia4vguBgAI1sbofhHvLPbj2q4HCaF0+OWVJPTD20T7wQ87XuI23lpdaKm
         7WOl5yMVxO8OsdLVnXv+iAyGU+ThwzAgufAR1kl22NbS3cB4ljtECS+gUK004gQ3xO+M
         m4lsRyl6eK7zrCW987GBF7WoztvJn4Qzhm7mOUha+Ap7kH/L31KPsQcTKAACYlH7vu0j
         273Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ahack-ru.20150623.gappssmtp.com header.s=20150623 header.b=bYi7rZov;
       spf=neutral (google.com: 209.85.220.65 is neither permitted nor denied by best guess record for domain of beched@ahack.ru) smtp.mailfrom=beched@ahack.ru
Return-Path: <beched@ahack.ru>
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id r6sor2551130wro.6.2018.11.29.16.32.34
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 29 Nov 2018 16:32:34 -0800 (PST)
Received-SPF: neutral (google.com: 209.85.220.65 is neither permitted nor denied by best guess record for domain of beched@ahack.ru) client-ip=209.85.220.65;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@ahack-ru.20150623.gappssmtp.com header.s=20150623 header.b=bYi7rZov;
       spf=neutral (google.com: 209.85.220.65 is neither permitted nor denied by best guess record for domain of beched@ahack.ru) smtp.mailfrom=beched@ahack.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ahack-ru.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=74PcieEIwsXD9lbcOPKPZDiGAE4ly5mNi/ORf3iz7oo=;
        b=bYi7rZovUVVkrTQgidEarvECRUw+1+hgngYwofdD9kXslxjvlrRhQEK6lqymEep0Og
         yNUda56Y2eb8MLKlYPZmgu5LsT9HOgxBI2Ey9yN9jMKO4UryVp4gj1zAHQUeyT4q52mE
         JUWP3j0GfM3ZLmGQwiy+QF4acHsELi0ouXNcmiVmGZJqHLzAXTm+Dms7Gl0+UQNODVDy
         HLdpiwqbFRN1zMgAc5fytepG0+VxEfeGXkPIwcUkgGWqtHMWhhSeIPf4xSbL0diEXXYL
         TAUJuMb/gcCi2n1UejXPaTUuADBnM+OYiYLgsrL578Zu/nOmbA7fA18g7k7TKIkDPi+6
         RB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=74PcieEIwsXD9lbcOPKPZDiGAE4ly5mNi/ORf3iz7oo=;
        b=O1KChmk+khJm8V0OsKA7Ueyg2GYyhSGOqdE/V1D+tJyNCn7tXdKriRMiEPYdasi7fi
         5Yf3nmaX1ImRQ0yiPL4ol7otpqe0YJ+anGxkTzyqUIaxHg01UORS4KH7WVGsGG3/dQYP
         9OJGm2eeEWHHjky8SgPcdroiWlRluAwmkglLZHxiwZauouuucY4U+Qm5Hm6OiywsI8GF
         Dpqf+wH1C9+pVFtgEavWWy2Xo/p3n6qu+5BYjAlVxci+NBDytSLke7UMnD9m6zYQmImT
         2FliWJwpqXSpmfPItGVXMM61ZyCH+Bh+QR9O8PB8QV1IOR/gIf9TWUAKVANOJApWWBho
         7Ncg==
X-Gm-Message-State: AA+aEWZ5NCc1jXLi+YZ0j93kZipjnqfHDnHthO41L6AADipT0/Fdzfwg
	FZ88Px+fyfHVF81XmjNME2Bm6oLeC/I=
X-Google-Smtp-Source: AFSGD/XRYVrdu+q8b54qV4hgBtQOGQ6ML9gOCvQSLtGWOmj5CuxBWCW8kuBiQB+j6ABgg4vH2O3y/Q==
X-Received: by 2002:a5d:5607:: with SMTP id l7mr3160127wrv.25.1543537954015;
        Thu, 29 Nov 2018 16:32:34 -0800 (PST)
Return-Path: <beched@ahack.ru>
Received: from [192.168.207.82] ([81.0.71.164])
        by smtp.gmail.com with ESMTPSA id e68sm6696177wmf.25.2018.11.29.16.32.33
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Nov 2018 16:32:33 -0800 (PST)
From: Omar Ganiev <beched@ahack.ru>
Content-Type: multipart/alternative;
	boundary=Apple-Mail-48183AAD-D706-4278-B64D-8C2DAB716DAD
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (1.0)
Date: Fri, 30 Nov 2018 01:32:29 +0100
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for beched@deteact.com
Message-Id: <18E8416D-601F-4D3A-B407-016610311C4F@ahack.ru>
References: <20181130001401.2883.52203@bigbox.local>
In-Reply-To: <20181130001401.2883.52203@bigbox.local>
To: kurt@seifried.org
X-Mailer: iPhone Mail (15F79)


--Apple-Mail-48183AAD-D706-4278-B64D-8C2DAB716DAD
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I accept

Regards,
Omar Ganiev
Deteact.com

> On 30 Nov 2018, at 01:14, kurt@seifried.org wrote:
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
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Le=
gal-Acceptance/blob/master/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually w=
ith your question/concerns/etc.=20
>=20

--Apple-Mail-48183AAD-D706-4278-B64D-8C2DAB716DAD
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I accept<br><br><div id=3D"AppleMailSignatu=
re">Regards,<div>Omar Ganiev</div><div>D<span style=3D"font-size: 13pt;"><a h=
ref=3D"http://eteact.com">eteact.com</a></span></div></div><div><br>On 30 No=
v 2018, at 01:14, <a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>=
 wrote:<br><br></div><blockquote type=3D"cite"><div><span>This is a confirma=
tion email sent from CVE request form at <a href=3D"https://iwantacve.org/">=
https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (=
assuming you filled out the CVE form and want one, we can't use the data unt=
il you accept the MITRE CVE Terms of Use). </span><br><span></span><br><span=
>Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF M=
ITRE CVE Terms of Use acceptance data at <a href=3D"https://github.com/distr=
ibutedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use">https://=
github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-=
Of-Use</a></span><br><span></span><br><span>The reason we use a complete cop=
y of the email is that it provides an artifact showing that the email addres=
s accepted the Terms of Use, when they were accepted and so on. </span><br><=
span></span><br><span>If you did not submit a CVE request to the DWF you can=
 safely ignore this message, however we may resend it at some point in the f=
uture, if you don't want any future emails simply reply with "unsubscribe" o=
r "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to t=
he block list so we don't spam you with these, please note that this will pr=
event you from being able to accept the MITRE CVE Terms of Use via the DWF a=
utomatically in future (you'll have to manually ask). But again, if you have=
 no idea what a CVE is then you can ignore this/ask to be added to the block=
 list with no problems. </span><br><span></span><br><span>MITRE CVE Terms of=
 Use</span><br><span></span><br><span>LICENSE</span><br><span></span><br><sp=
an>Submissions: For all materials you submit to the Common Vulnerabilities a=
nd Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applicab=
le law or agreed to in writing, you provide such materials on an "AS IS" BAS=
IS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied,=
 including, without limitation, any warranties or conditions of TITLE, NON-I=
NFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.</span><br=
><span></span><br><span>CVE Usage: MITRE hereby grants you a perpetual, worl=
dwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license=
 to reproduce, prepare derivative works of, publicly display, publicly perfo=
rm, sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE=
). Any copy you make for such purposes is authorized provided that you repro=
duce MITRE's copyright designation and this license in any such copy.</span>=
<br><span></span><br><span>DISCLAIMERS</span><br><span></span><br><span>ALL D=
OCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDE=
D ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENT=
S OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES,=
 OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIE=
D, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION=
 THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTA=
BILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span><br><span></span><br><span=
>A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md">https://github.com/dis=
tributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><=
/span><br><span></span><br><span>To contact the DWF either hit reply, or ema=
il <a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a> manually with y=
our question/concerns/etc. </span><br><span></span><br></div></blockquote></=
body></html>=

--Apple-Mail-48183AAD-D706-4278-B64D-8C2DAB716DAD--
