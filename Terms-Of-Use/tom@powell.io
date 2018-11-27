Delivered-To: kurt@seifried.org
Received: by 2002:a9d:3a09:0:0:0:0:0 with SMTP id j9csp99645otc;
        Tue, 27 Nov 2018 10:04:32 -0800 (PST)
X-Google-Smtp-Source: AJdET5c5VztPxHe2UAL2rlhYTQbQeBdO9AixWF6wysm0FkueoX1Sn/8wB1eKZCsdSrjdPni+CmDW
X-Received: by 2002:ac8:76c3:: with SMTP id q3mr31808814qtr.48.1543341872266;
        Tue, 27 Nov 2018 10:04:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1543341872; cv=none;
        d=google.com; s=arc-20160816;
        b=xpOKuwrGiOp3kSr49gx0OIoZ1XsSQur6jYxVKp3Ox/tieDv+rbv8PU4zf6GL8n7T5k
         9WY+KuMAqjY2jUmIzUXLIAO3c76HhlHJRqwW/7ff2x89fj7gzUxBitILR/DJA3U42brw
         2K9cmnjzHVLFUrjkZz0rvoyRBq6zm8sxgFTFykiszAf+kgMhGScFlS5nH4qwlbtcl+af
         rEJhjEycLUINQzcNncn/PzF1azdcHVu88M/0qx29TB7KQFUhphagcbyZN8yhdUyfA5i0
         kqzLLdO51HWot30sVAakEWwbczkHSSuo8NDb1141IiPwCobLwAgALq3IoAdCmBguoHTm
         m+hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:subject:in-reply-to:date:content-transfer-encoding
         :mime-version:to:from:message-id:dkim-signature:dkim-signature;
        bh=WzwtXjaOsROLw29I340IsNIY4Cw738bZ8spJlME7SYk=;
        b=HNbucC6UmXgrtZsTpgcRs+T5AEoBIiqbfxSD31Z9wO50oXhTNphPbUSv51QwtetJ/V
         OsoR5IxQ21J35bIGyKrxMGkWLUTEbeMzv/R0gj5j5dICi5nlkaGHRO72FJjem5UFug3/
         xlLArzsk/jdikfxmX/3YRVv2Kyc7ALkLZ1oOPOaxLWbmq56e1Pgk9wVRDA5Fma0U3Ro+
         c2abutACjgL5vh6imzQ/gtY9Py2HunxoMjEa00TTpqS0EtixNgqPghvUhfTznruwQmv+
         kSrPIvN9b9e+aiV6M76fMZng/VbMdwI9GN0nWyR9qYvVGZjrio+fC+ThXP0cIFoM1aAG
         SfFQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@powell.io header.s=fm1 header.b=iiMMY3Dr;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=QTOy5cre;
       spf=pass (google.com: domain of tom@powell.io designates 64.147.123.25 as permitted sender) smtp.mailfrom=tom@powell.io;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=powell.io
Return-Path: <tom@powell.io>
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com. [64.147.123.25])
        by mx.google.com with ESMTPS id g184si3827232qkg.47.2018.11.27.10.04.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Nov 2018 10:04:32 -0800 (PST)
Received-SPF: pass (google.com: domain of tom@powell.io designates 64.147.123.25 as permitted sender) client-ip=64.147.123.25;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@powell.io header.s=fm1 header.b=iiMMY3Dr;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=QTOy5cre;
       spf=pass (google.com: domain of tom@powell.io designates 64.147.123.25 as permitted sender) smtp.mailfrom=tom@powell.io;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=powell.io
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 8C9C9E18
	for <kurt@seifried.org>; Tue, 27 Nov 2018 13:04:30 -0500 (EST)
Received: from web6 ([10.202.2.216])
  by compute5.internal (MEProxy); Tue, 27 Nov 2018 13:04:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=powell.io; h=
	message-id:from:to:mime-version:content-transfer-encoding
	:content-type:date:in-reply-to:subject:references; s=fm1; bh=Wzw
	tXjaOsROLw29I340IsNIY4Cw738bZ8spJlME7SYk=; b=iiMMY3DrmMHRql8E7RC
	L+daDaXb4dvuPbAYqew0KD0gK48LgrScJF+S1F2zgnFOXQfqsQoNnyHPNHJUCiFm
	dkLgPnz7IfgUGWqMACid0qtrUrZGYMOhqMzfxGabTmsOUB56W9JkG8wvF2uN452+
	Zw2Cp7sdpLuyUmTGHbYc3qXSuAE3KD236/l6DAMDPvK0vPjJR6p45dCJk7BIDUvu
	f2LX3mBqQdbUcLMDqnjt6RcVHjatbwnny4TfiunDOirLz6TIEAhzhbF2m/4FHpqZ
	dy5RHGYVrdZd6uZIqQlCQ2VgCLf1bQ4SHZ4cfdbIAv2PURCqYg0Fk/r/D/liYzoq
	EPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; bh=WzwtXjaOsROLw29I340IsNIY4Cw738bZ8spJlME7S
	Yk=; b=QTOy5crePOguES0Jd4gfgYGGSQOXYzqA7JF16Im0vu04Ibw/v8FNSdlPG
	O+F29/nE+e7K6g1gG48VHB2OPkR7d1W3mdAk1egYDyRJ+Hfpq7fpMi2qtgRqdKYd
	SzPvlXsMd4gK2OicUh2LC/uYkBsfKdq+RGoyeSmjsAo7n0e6WeAdo4hI2P8cbVfd
	T3XHYRQ3jRa2TIvuzUMwFyfpKynnR/afvJpllDiEddbZetArHqSHFWkQbB9gc/Fu
	TpjKJB6SiDKTh6V9sABZAzLazzEaMwHHfvcjTV4TBvJU7HuVroQ5uqbCAAa58XTL
	LJx/uYskjmmhBnA+elKVCG/F1uUaQ==
X-ME-Sender: <xms:LYf9WwyC1lYTyPlRh3Irf0Se02oUaqYqDXX0qVbZUut7a7gpzhjqeA>
X-ME-Proxy: <xmx:LYf9W6ctkQ8e3HambnMOQ_I3rGpuhSub2KOiwcA6hCRD-1-xgG3c4A>
    <xmx:LYf9W1f7oZOiIiMC3gpqbFEfYL4SdHiLa9PQ13aGk9ehWxtuBCEY8w>
    <xmx:LYf9Ww3pm9f2YYpNI9kl8R5AhVbenUvDHma7S-HCOMCgFueXwcOVvg>
    <xmx:LYf9W156-M0ZfGhFAHQmlW9Ah1JGUXMpx1TFG1jdGdZyArAb44UGEQ>
    <xmx:LYf9W3JajBXOCtyAaBBwU90gxJPEvSl2zYRQRuB48xioZylW7gYCew>
    <xmx:Lof9W-IVN-tbjVfn32ZJRv63Kt8C6sYJUtxaXEFrwWajKGDR11xDAA>
Received: by mailuser.nyi.internal (Postfix, from userid 99)
	id A8B194384; Tue, 27 Nov 2018 13:04:29 -0500 (EST)
Message-Id: <1543341869.1469169.1590769048.6B4AD1F2@webmail.messagingengine.com>
From: Tom Powell <tom@powell.io>
To: kurt@seifried.org
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-3449945b
Date: Tue, 27 Nov 2018 10:04:29 -0800
In-Reply-To: <20181127154045.36526.29954@bigbox.local>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for tom@powell.io
References: <20181127154045.36526.29954@bigbox.local>

I accept

On Tue, Nov 27, 2018, at 7:40 AM, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at=20
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use=20
> (assuming you filled out the CVE form and want one, we can't use the=20
> data until you accept the MITRE CVE Terms of Use).=20
>=20
> Simply quote the email and reply with "I accept" at the top if you agree=
=20
> to the MITRE CVE Terms of Use and we will add a copy of the email to the=
=20
> DWF MITRE CVE Terms of Use acceptance data at=20
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an=20
> artifact showing that the email address accepted the Terms of Use, when=20
> they were accepted and so on.=20
>=20
> If you did not submit a CVE request to the DWF you can safely ignore=20
> this message, however we may resend it at some point in the future, if=20
> you don't want any future emails simply reply with "unsubscribe" or=20
> "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to=
=20
> the block list so we don't spam you with these, please note that this=20
> will prevent you from being able to accept the MITRE CVE Terms of Use=20
> via the DWF automatically in future (you'll have to manually ask). But=20
> again, if you have no idea what a CVE is then you can ignore this/ask to=
=20
> be added to the block list with no problems.=20
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities=20
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE)=20
> and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-
> exclusive, no-charge, royalty-free, irrevocable copyright license to=20
> reproduce, prepare derivative works of, publicly display, publicly=20
> perform, sublicense, and distribute such materials and derivative works.=
=20
> Unless required by applicable law or agreed to in writing, you provide=20
> such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF=20
> ANY KIND, either express or implied, including, without limitation, any=20
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or=
=20
> FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-
> exclusive, no-charge, royalty-free, irrevocable copyright license to=20
> reproduce, prepare derivative works of, publicly display, publicly=20
> perform, sublicense, and distribute Common Vulnerabilities and Exposures=
=20
> (CVE=C2=AE). Any copy you make for such purposes is authorized provided t=
hat=20
> you reproduce MITRE's copyright designation and this license in any such=
=20
> copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE=20
> ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=20
> HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION,=20
> ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL=20
> WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY=20
> WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY=20
> RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A=20
> PARTICULAR PURPOSE.
>=20
> A copy is available at=20
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually=
=20
> with your question/concerns/etc.=20
>=20
