Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c8c:0:0:0:0:0 with SMTP id l12-v6csp3503361ocg;
        Mon, 1 Oct 2018 00:01:23 -0700 (PDT)
X-Received: by 2002:adf:b64e:: with SMTP id i14-v6mr519521wre.14.1538377283232;
        Mon, 01 Oct 2018 00:01:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538377283; cv=none;
        d=google.com; s=arc-20160816;
        b=N1jJ0rUN6Ln+8JM5T4Aahq3MKXZjvhCVfSOTruZB8apYbqlNqfUSCEBtHXH6hfnRFi
         HffpbCgBb7tdpWcGT39KrmCEd878bELe3u8khU6lJM6uWWbldAT0mFtDIQZap+RITc2i
         WUNlNV/gRRwNmObRCBXL8H4ryb1+wWEp05aqdgKrjkScTcc92ATvqMYcX8CJG4+O4cDF
         OzjxPnt/CtHyezwlHwqqS14KWk658dBqb92OeIJbFMfIwiej4sMr9RjureLCDPNIB+ii
         lHsoC2T0fn054Ce+ddhI1EZGX9vNhwJCSJCnUpdbWTYFfenO9uMosZmQq07f0cN7hngQ
         bgEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date;
        bh=6crNBOhNX0mDpHoSQsmPxkeDGuPVmWmd6BCTj5UMkEw=;
        b=wz02sP2Svh6YRezIed57On8mRHOVRIHySgaeb8WZ9nvajXKhEqf46JECYCSGJfYm8G
         uNVrPBU4b9wBm6uXUmjTHau9deS4l/JQFiVl+1aEZ8kxmN+kweLkyorgy2SFz8hL/sPf
         7LOdB4dbRqqZq+byIVgCpGXu0vmV3tje+vVT6W0eXzC5NB5+R3lAysVRipmTOM8B1j1V
         +glZrS2OUtt3n9VduOIbnLoWqQr7aX66PBK7H7mwEycXvKPRn7IJ0agQ/q8oMtu85XYt
         XslbxsFoTyhE24YITfRRvFfbUKINOqfjr1kXottUBLlfWoJ+0FT3zyAZVVjXAKXoHTI0
         oDxA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rschiron@redhat.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=rschiron@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <rschiron@redhat.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id i8-v6sor5361173wmg.26.2018.10.01.00.01.23
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 01 Oct 2018 00:01:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of rschiron@redhat.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of rschiron@redhat.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=rschiron@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6crNBOhNX0mDpHoSQsmPxkeDGuPVmWmd6BCTj5UMkEw=;
        b=CNmUGgewIPYGq+F40F3X4aEeFJHg2/aoQcCEAzZesk0VZpD5HJvQYbzBWGzty6vzZE
         gugUgWdDfah7BPrn8tTmdHuw69qvtdgCmIMIuDB55RhreykBnobdzPF6fflzNefTdk0H
         e+fpxZvX9f46ABq59VSiLOPOg9BPaoFmsandHFiHbD1PFTWDeF2UJ+WEudstbGnADczy
         jwu206ZR08wZwwyk0dBfpUWRQ9QOH2/aWu01mOwBfrxBRvP4ts5HQ435oYE6jxGcLxQp
         nPGwYUwL2733EWn8SIz6Js1YWq1h0URFozK5+e8u7YuY6hxL716Wov9uKoUHqz6NOA3a
         +kDA==
X-Gm-Message-State: ABuFfogNJgnNgGoKSdpxFKAonDK+QZZ3VTC9DenaH9k70llnosoRb/Wk
	+//gKd/6+B2Obrzaq+VcvlCk7kXck+I=
X-Google-Smtp-Source: ACcGV63kiNVkyVTCQ7aahVAqjwRCaPw1TF3z/+1G46GIS1FytwIy5orGOltIiiaU+4W04oRcRzFcKw==
X-Received: by 2002:a1c:b404:: with SMTP id d4-v6mr7525737wmf.28.1538377282315;
        Mon, 01 Oct 2018 00:01:22 -0700 (PDT)
Return-Path: <rschiron@redhat.com>
Received: from localhost (host31-59-dynamic.246-95-r.retail.telecomitalia.it. [95.246.59.31])
        by smtp.gmail.com with ESMTPSA id a18sm9991703wrx.55.2018.10.01.00.01.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Oct 2018 00:01:21 -0700 (PDT)
Date: Mon, 1 Oct 2018 09:01:19 +0200
From: Riccardo Schirone <rschiron@redhat.com>
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 rschiron@redhat.com
Message-ID: <20181001070119.GA4463@fedorawork>
References: <20180928152830.22875.13820@shiny-2.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline
In-Reply-To: <20180928152830.22875.13820@shiny-2.local>
X-PGP-Key: http://keyserv.sr32.net/pks/lookup?op=get&search=0x1E8AB789CF96E110
User-Agent: Mutt/1.9.2 (2017-12-15)


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I accept.

On 09/28, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at https://iwanta=
cve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fill=
ed out the CVE form and want one, we can't use the data until you accept th=
e MITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you agree =
to the MITRE CVE Terms of Use and we will add a copy of the email to the DW=
F MITRE CVE Terms of Use acceptance data at https://github.com/distributedw=
eaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an art=
ifact showing that the email address accepted the Terms of Use, when they w=
ere accepted and so on.=20
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this=
 message, however we may resend it at some point in the future, if you don'=
t want any future emails simply reply with "unsubscribe" or "DON'T SEND ME =
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so=
 we don't spam you with these, please note that this will prevent you from =
being able to accept the MITRE CVE Terms of Use via the DWF automatically i=
n future (you'll have to manually ask). But again, if you have no idea what=
 a CVE is then you can ignore this/ask to be added to the block list with n=
o problems.=20
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and=
 all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive=
, no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are derivative works of, publicly display, publicly perform, sublicense, an=
d distribute such materials and derivative works. Unless required by applic=
able law or agreed to in writing, you provide such materials on an "AS IS" =
BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or impl=
ied, including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (CVE??). Any copy you make=
 for such purposes is authorized provided that you reproduce MITRE's copyri=
ght designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE=
 PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE =
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF=
 TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRES=
S OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE=
 INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES=
 OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
> A copy is available at https://github.com/distributedweaknessfiling/DWF-L=
egal-Acceptance/blob/master/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually =
with your question/concerns/etc.=20
>=20

--=20
Riccardo Schirone
Red Hat -- Product Security
Email: rschiron@redhat.com
PGP-Key ID: CF96E110

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJbscY/AAoJEB6Kt4nPluEQYOIP/R1hRSqObbwu06RooXdN/uLR
ZKsTSA+ZrhWdt1etJthnPAr/18TfPHqtgBG1625U1jZZsw+C/Q538ejKrwOLNvRR
Tdi6YfjVUw8W1BfXXvWsqXQucNDipxwVBbanHxGwjYjHSX3QIW3mYrmC//3W49IL
BDX6Mzn7f4Z+ExNDSTrCo4+4LKtA71mQEPXCjy8yWs6yjmsf7szXBDDYilXP6LO8
4ccelJxa/ZCyZHx0+YHLTKJg354IIEg3+nomHKQIL5TSLd6rDY2d8VcdNV1gi/JL
4X+rI1yzDtkZGWJTG+0Cv2J1TGvb2XJhD3wp5jiPj0qrqJARM9Nv3rDocXDL6O/1
vAZnjbv+Nahk43Nd3Frw8icUEViQjuYQBbef6JjsRq5hXWtW5ylam+PEpdNX2aNt
xBunrUER1yxiQ2ZD9Omc+PwNsLeC7+4hPjFTLgzYGTWhq9kdBli0Pvvw/5vljyOd
TZZIAfOWmlE2lgxCJ73AfACBPfI052/zgm8yMzgOtPWuG6tDhA5N3bGtqKr7xgsx
R14GO/JyxLvhNHYLTXaocRdFW0oP0WGO1xfhop7z2CwqPk7NBBkOWeVZWYlHUZrQ
Y5huzIs+knn92eIwEkU2FUtmddlYIRSotSF5aPKA4oYkhFcUTBfEyHCKjL5XGIYM
0pOXDSgNl0MWKHTdVwfl
=/SO7
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--
