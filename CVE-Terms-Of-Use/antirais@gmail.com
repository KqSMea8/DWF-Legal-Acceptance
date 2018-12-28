Delivered-To: kurt@seifried.org
Received: by 10.103.27.130 with SMTP id b124csp1101930vsb;
        Fri, 18 Aug 2017 12:33:04 -0700 (PDT)
X-Received: by 10.46.21.20 with SMTP id s20mr3609891ljd.146.1503084784872;
        Fri, 18 Aug 2017 12:33:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503084784; cv=none;
        d=google.com; s=arc-20160816;
        b=L3GfIvSx02E3C/l85qg0VHzZPKnubX+cC3hmVDewhqVOm5o79Vzu2fVAkt0p4N8tw6
         RvoLDURGIkByFhuokxJyfymUbuzNp612eG6NQTrQodh26d6MZIdESuO5AoaljS6Zk+3u
         QHpGAlefIA3/1t6MGmpCOMcikJ9tTWjiaszyxZRyXgEIxP6IRuIT8/Q7eZEFz6nVDVFm
         BICb/3QrO++7vFgDPPsvVTUnrPzPwo4LowfCpUmBJCZQll/JPUpSbJAORHg31uLxIWTk
         CuT4lw1Sgeon0WuOnrNgkMx1/+tGAaZHbMO6QC2puoRPFEKafawjEYKbB7iC5+TCipnf
         cBWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:references
         :subject:to:from:dkim-signature:arc-authentication-results;
        bh=FjbIZf3ejjph5eKNChL3RY+MGc9GkkNobzoHXO6Slz4=;
        b=q2Wklw5GEhiHHFCr/g+oHb050UwNwUYRNjy1MLwA1fLvusPsKb5SOeDvRmzny5Ngn4
         mO3+Ikcc4p1Uo7ICz9rVNO6ioMbl08hQpDonIeNBkUbFpyumyluV/MSOItoN9J35jllo
         DLwktZxLOktPqpvpPxcACNIaZxknGH+oHjfej0kajtB/DVJwYZ3k9n7ePwWlZlo8AlaR
         oB9IQwBUGs5QwqC1OHZH2zz9I6HHps0IVhnVXTef5ljksPa1eaUn81bTqzk+f8xdrMpu
         wv3ubBNAmWB5X7z9wIGFJ8bcWHFc0pjkEmx1PWJD0KaDCjXYH4ovcvgwJ1J0BHMFvh8K
         EdaQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kzovnD2n;
       spf=pass (google.com: domain of antirais@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) smtp.mailfrom=antirais@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <antirais@gmail.com>
Received: from mail-lf0-x234.google.com (mail-lf0-x234.google.com. [2a00:1450:4010:c07::234])
        by mx.google.com with ESMTPS id w24si2614460ljd.99.2017.08.18.12.33.04
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Aug 2017 12:33:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of antirais@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) client-ip=2a00:1450:4010:c07::234;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kzovnD2n;
       spf=pass (google.com: domain of antirais@gmail.com designates 2a00:1450:4010:c07::234 as permitted sender) smtp.mailfrom=antirais@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x234.google.com with SMTP id t128so46808130lff.2
        for <kurt@seifried.org>; Fri, 18 Aug 2017 12:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:references:message-id:date:user-agent:mime-version
         :in-reply-to;
        bh=FjbIZf3ejjph5eKNChL3RY+MGc9GkkNobzoHXO6Slz4=;
        b=kzovnD2nBJQ7QYUDDmSsE/OCL6KEyx6zAw51CJ8Lz+Qx6tSSHQFGZRGbXOq4HjUaMg
         B9AY0Uc8du7mOkkIExqRo8IUZK/mNmzJW1U0pJD7sWZg/5oB9Bq8ZY9vk2nmzR3rE5U8
         UpgUr8AlJUiSbpvncqkn8N6yU15BkS3igPRyWU2S19DfHJq6dLyRhDnu5heWO6V47g50
         joUT9xZccnnLZh1DzKLc4wdIBtCga0EuKV+CpJbw3N/3TSLSFYiiwTysh4wPa1i0pe4k
         poXM5UzX21UFj1l/1zt163qir2a/tRQgECtQUfI3RBnvyfZcjelCHNsz9eql70IjSHW4
         6ylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:references:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=FjbIZf3ejjph5eKNChL3RY+MGc9GkkNobzoHXO6Slz4=;
        b=uBOb2ojOQXZKJxfMRMpzZ5EvOQyaoJy5UsqXQWUCi66fug4dQ0/fhrrpk+z7AIdQYu
         9Sw52h5A1yb8GJrx5Gse7fhWDICfdS8uXQ56S6w7kAM1IhcUxLKBF0P+e4UxLza/1fF9
         avfSNUPNFzVPp9cS5vH9c2MezGb0Rdgwa/aEKSDV+xr6UH6BMziMLEkrjMBHkj0Z6fQN
         OwMxOVM2fk0OuOaPMzWfK4l2Sy8WumEzUpefsc2+60cP1pQIJwdpw8Jo3MlRZj0fFViK
         kDKk1j5hI7LDp5C/oTkC7EIX600OOuI6yGJZL69IN2tmSSPRGfJrO5HLDYbn2U05DuY4
         RCgg==
X-Gm-Message-State: AHYfb5gLTwlkXjkgpJBZQExydU57kezD+tlc+ohdeYagrNM3NzkwI0ZO
	ptnACWBb8b7Yy/PyrAA=
X-Received: by 10.46.7.2 with SMTP id 2mr3705315ljh.59.1503084784070;
        Fri, 18 Aug 2017 12:33:04 -0700 (PDT)
Return-Path: <antirais@gmail.com>
Received: from ?IPv6:2001:7d0:82f1:bd80:3c6a:83d4:e4ef:11ef? (11ef-e4ef-83d4-3c6a-bd80-82f1-07d0-2001.dyn.estpak.ee. [2001:7d0:82f1:bd80:3c6a:83d4:e4ef:11ef])
        by smtp.googlemail.com with ESMTPSA id c23sm753093lfh.79.2017.08.18.12.33.02
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Aug 2017 12:33:02 -0700 (PDT)
From: =?UTF-8?Q?Anti_R=c3=a4is?= <antirais@gmail.com>
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 antirais@gmail.com
References: <20170818193041.55281.20563@shiny-2.local>
Message-ID: <3b24e134-d8dc-6597-d15a-b99e37b9b456@gmail.com>
Date: Fri, 18 Aug 2017 22:33:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170818193041.55281.20563@shiny-2.local>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="8IOgFk90CqCcoeudxeistGSxkOssTJb8p"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--8IOgFk90CqCcoeudxeistGSxkOssTJb8p
Content-Type: multipart/mixed; boundary="pQ8lqr7sWudtKBBLsTW1uh3v2PC0DNONt";
 protected-headers="v1"
From: =?UTF-8?Q?Anti_R=c3=a4is?= <antirais@gmail.com>
To: kurt@seifried.org
Message-ID: <3b24e134-d8dc-6597-d15a-b99e37b9b456@gmail.com>

--pQ8lqr7sWudtKBBLsTW1uh3v2PC0DNONt
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

On 18.08.2017 22:30, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at https://iwan=
tacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you =
filled out the CVE form and want one, we can't use the data until you acc=
ept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agre=
e to the MITRE CVE Terms of Use and we will add a copy of the email to th=
e DWF MITRE CVE Terms of Use acceptance data at https://github.com/distri=
butedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an a=
rtifact showing that the email address accepted the Terms of Use, when th=
ey were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore th=
is message, however we may resend it at some point in the future, if you =
don't want any future emails simply reply with "unsubscribe" or "DON'T SE=
ND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block=
 list so we don't spam you with these, please note that this will prevent=
 you from being able to accept the MITRE CVE Terms of Use via the DWF aut=
omatically in future (you'll have to manually ask). But again, if you hav=
e no idea what a CVE is then you can ignore this/ask to be added to the b=
lock list with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities=
 and Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporati=
on (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwid=
e, non-exclusive, no-charge, royalty-free, irrevocable copyright license =
to reproduce, prepare derivative works of, publicly display, publicly per=
form, sublicense, and distribute such materials and derivative works. Unl=
ess required by applicable law or agreed to in writing, you provide such =
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KI=
ND, either express or implied, including, without limitation, any warrant=
ies or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS=
 FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicens=
e, and distribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE).=
 Any copy you make for such purposes is authorized provided that you repr=
oduce MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE A=
RE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/=
SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BO=
ARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE =
USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIE=
D WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at https://github.com/distributedweaknessfiling/DWF=
-Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manuall=
y with your question/concerns/etc.
>



--pQ8lqr7sWudtKBBLsTW1uh3v2PC0DNONt--

--8IOgFk90CqCcoeudxeistGSxkOssTJb8p
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJZl0DtAAoJEJi8ghYKH/QMo+EP/1ar2qp0Do0hWO+Qj0Y82DSv
s5WuxKMEQnlV4SnfMj+TspRInAGndNpRWu8go5n8UQs/ypkSl/woDrjNmZSY5AXv
8Q0FpM+DybACewmRe5souEcaSyQUm7hpXHKCLPRDpVeeEsb0+HLoS3gJKj/LrGjo
55MzfUNhFxPvU6y5pqKNoJ8U0/pHLU6pxWn6lIH+ZjVgj39up4MZVQLGr66s7UC9
aE9wKZSE5gIg66nno8YNBanLxQUEP558KFlANLMaSmv2il84wULrKk37G4TUbfhI
WSp/BZUdP+T5FysP9yF3NxaSHPHBtZ+j0vm5mW77ooy5YMX7KwFLakszn01Wtiwq
k/iO9JyEGPNhc24KeXiJ06jdoVBYNqiI3G9y8M+D/g3kDqAzP084n/HauZg67Zzh
3vYx9QELZn+/4531HBjAk5MTvtbTw+3JaaY1gy2ZeEWpEEwunsmwRBUPnvX0Wr1l
l1m/XK0Hzr3IGul5ps95cl8KOHOr3v7cc9i5Vw0vf8kc/tfs0yrlxAoWEO6U5qzM
W5pPsqLTWNjCzHABxsG5+l7uPpatg8BTCRNMsY39AXDypnWGaKLL8Oi1G7tc0xHc
csXk1KZsT6wwxAmVNKTaU1uFwzfQyKh0ioOu5Zg+Awi7KsK8SUB1QKDsMqgVGTcP
bcGBYrGewDL/pv/1zfhL
=lVsu
-----END PGP SIGNATURE-----

--8IOgFk90CqCcoeudxeistGSxkOssTJb8p--
