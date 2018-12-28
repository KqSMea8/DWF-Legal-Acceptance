Delivered-To: kurt@seifried.org
Received: by 10.176.6.162 with SMTP id g31csp182187uag;
        Tue, 9 May 2017 23:29:42 -0700 (PDT)
X-Received: by 10.129.183.7 with SMTP id v7mr3647203ywh.15.1494397782680;
        Tue, 09 May 2017 23:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1494397782; cv=none;
        d=google.com; s=arc-20160816;
        b=ymqroz5+2zZlS9srnWso/R3t68zZwsp6xQmRwake9xYkynuRlMEVfd+dAmb8Gh4b2x
         QflMYsHUfwGr9vQp1iLUtABLsCL5G7fLjBQntI6O3dkelJJNdFk57P8J9DsbXQaNJPcR
         lvCvFhM4qu8GbzDwzU30m5B+zPAtg2P1zQ+7GqhzHY+VxFMS81ZFVpinB8+LloG8uOXq
         NtqIe9Z2JfBN6agDFTJYVIg1nwjSbtQkkGLM9z/YQnu0tFo0xXefSTwPlExSZ1Pbf+Cu
         0zJNEpAt7SSTdcRhchaj+S3ojX/8pQBeNYJuYGQga3QCZ0nVwDzZyfakYOb5oxh10/rj
         xbuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:to:date:message-id
         :in-reply-to:from:references:subject:arc-authentication-results;
        bh=JBcOacUut5/WZq3mwL0CXqcbQC6Is/JnW3H5ybahsTY=;
        b=gPCSM9Hwbkg+1B1cXCp5V8WHOdAt9OZKx8ffRJhc5iAUE4EImbRMv1x6W3nmOaf1tb
         GgfLxEUbmiiDq4mSM0LKNqc4sgn/TCS/peyYnpyoruTWL7fGgTrJg9Vdw8O5E7jYoOok
         znVF923JWMl4cWmyfbsAlgsS/vAiu7NyndkcrFEbKl+yQXUSAvAXzPR0gkudWUfv26G7
         0ihQDi4S4QCAuhfUmqKjM8qOzqhiUfVzONfX4LZC0m1iEvrVvGKkrwwfbHjh4BxFXB3i
         pjUUff+bodlA+jR9dN+WvnSEqdSVu5hF5JYCpDm6GNZ1CqqGGWC9ur2IxmirB39E1PWi
         Un+Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 88.198.28.102 is neither permitted nor denied by best guess record for domain of stephan.zeisberg@splone.com) smtp.mailfrom=stephan.zeisberg@splone.com
Return-Path: <stephan.zeisberg@splone.com>
Received: from www333.your-server.de (www333.your-server.de. [88.198.28.102])
        by mx.google.com with ESMTPS id v187si845600ybb.273.2017.05.09.23.29.42
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 May 2017 23:29:42 -0700 (PDT)
Received-SPF: neutral (google.com: 88.198.28.102 is neither permitted nor denied by best guess record for domain of stephan.zeisberg@splone.com) client-ip=88.198.28.102;
Authentication-Results: mx.google.com;
       spf=neutral (google.com: 88.198.28.102 is neither permitted nor denied by best guess record for domain of stephan.zeisberg@splone.com) smtp.mailfrom=stephan.zeisberg@splone.com
Received: from [217.246.183.27] (helo=[192.168.2.102])
	by www333.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <stephan.zeisberg@splone.com>)
	id 1d8L81-00083F-8v
	for kurt@seifried.org; Wed, 10 May 2017 08:29:41 +0200
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for stephan.zeisberg@splone.com
References: <20170510022933.8102.82595@bigbox.local>
From: Stephan Zeisberg <stephan.zeisberg@splone.com>
Content-Type: text/plain;
	charset=utf-8
X-Mailer: iPhone Mail (14E304)
In-Reply-To: <20170510022933.8102.82595@bigbox.local>
Message-Id: <01155A4F-8A79-40B2-9369-3920832AE8FD@splone.com>
Date: Wed, 10 May 2017 08:29:39 +0200
To: kurt@seifried.org
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
X-Authenticated-Sender: stephan.zeisberg@splone.com
X-Virus-Scanned: Clear (ClamAV 0.99.2/23373/Wed May 10 07:07:49 2017)

I accept

> Am 10.05.2017 um 04:29 schrieb kurt@seifried.org:
>=20
> This is a confirmation email sent from CVE request form at https://iwantac=
ve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept the M=
ITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you agree t=
o the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Terms o=
f Use acceptance data at https://github.com/distributedweaknessfiling/DWF-Le=
gal-Acceptance/tree/master/Terms-Of-Use
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
>=20

