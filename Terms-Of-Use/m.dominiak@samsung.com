Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp3063182otd;
        Fri, 3 Aug 2018 00:25:04 -0700 (PDT)
X-Google-Smtp-Source: AAOMgpdU3eExjqgjZ7VlgEgjO7WALOOCvDFw91GX2+jhjzRwXpTSXfH92m42NZMh57tQ41Eyk1e9
X-Received: by 2002:a63:5d58:: with SMTP id o24-v6mr2550348pgm.349.1533281104285;
        Fri, 03 Aug 2018 00:25:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1533281104; cv=none;
        d=google.com; s=arc-20160816;
        b=u+RB04CwLwAlZN0qG6EqgUVdVfaPMBhz1gpoZeCZFXGm/0M0Jzx+C9NRO5HpGfCByy
         7A3FmHvTLbLlt6D7p5wG8PQPUr56XnwViCVN/7ioIUmrQ2SUhv6LyrLwBE+5ltb65zPD
         fZJ0BCWOVeEbiMs3lQHYsgvvQb6/owxnB7Btd6WsajqZuAw9pqLziTCpRs0B+tXM1i7n
         EddUXzDc3dqBg82c6I2b0chtHrdCuFRb8Q/XTmwETR76Pw3s5Rk+nMYA7eatx7LiJLTV
         pil/beLDgLrI9MSqPLQ9MhZqQQSmIlL0v/Exh15cQCzfC/5/HA9r6XKOUbmry4jnW9Mc
         ECiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:cms-type:message-id:thread-index:content-language
         :content-transfer-encoding:mime-version:date:subject:in-reply-to:to
         :from:dkim-signature:dkim-filter:arc-authentication-results;
        bh=JJwVChp5o6ttYWvQz5ZI1WMVJM9jmHglapK8JfVq7AU=;
        b=B1qULV7fKrAznf3xxsPPUWL0GcQAMn0iMjzHRED2YlBk4VY+R7BVjdWxVEQUeG2VIY
         xJuJLYcPmTPd6wTdLgvt0y7fI0Uhx2PY7crsXqAA+Vj7ukYM5PrVPs/Zk9hvdmIzf1VJ
         wZ9er03yhbGj0S3feaMs7/DCGQJkKS5sxd1XxTZWipHccTJUvr4k/vRHtzEfEXZ1Lk72
         0MqTpwFJSvptnueMTZynGtqNGzLuUd9IFCesoLrx90t/hUnIFNgRpOgV++rHi0kUgCA5
         /LC3AXMGQBKlPycJyFR+5CfKeTjUgfN/d0iqDBNkvzm8CnWxUATfgkJeyH49LXtGBxje
         G8Kw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=cKI1K3Vo;
       spf=pass (google.com: domain of m.dominiak@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.dominiak@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Return-Path: <m.dominiak@samsung.com>
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com. [210.118.77.12])
        by mx.google.com with ESMTPS id k187-v6si3592519pga.539.2018.08.03.00.25.03
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Aug 2018 00:25:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.dominiak@samsung.com designates 210.118.77.12 as permitted sender) client-ip=210.118.77.12;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=cKI1K3Vo;
       spf=pass (google.com: domain of m.dominiak@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.dominiak@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20180803072500euoutp02465c9d56fefaed5a61b80eba70163eec~HTwl-HLU40303403034euoutp025
	for <kurt@seifried.org>; Fri,  3 Aug 2018 07:25:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20180803072500euoutp02465c9d56fefaed5a61b80eba70163eec~HTwl-HLU40303403034euoutp025
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1533281100;
	bh=JJwVChp5o6ttYWvQz5ZI1WMVJM9jmHglapK8JfVq7AU=;
	h=From:To:In-Reply-To:Subject:Date:References:From;
	b=cKI1K3VoRkNEIm8etWKtD0oCdAmbL9Oa3ZY717UsI41YRSD4r39wW3PDA3GosK5L0
	 Mqj/5Z5Vx99SSm8kTxJJVamB8yaUuml+GxYu05s1IOlh3DeZcAOyQ2kzbBkEniTfls
	 3gRNwVSgI/HSrNJmIV2rLLQFUPnpNwGFQn5XxFsA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTP id
	20180803072459eucas1p14a1e2af4975b841556ee10a93472e902~HTwlpBX-Y0901209012eucas1p1m
	for <kurt@seifried.org>; Fri,  3 Aug 2018 07:24:59 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
	eusmges1new.samsung.com (EUCPMTA) with SMTP id 8F.62.04627.B43046B5; Fri,  3
	Aug 2018 08:24:59 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20180803072458eucas1p21a4a6139c5bc14b69b1afbdfa4615e2f~HTwkr0B_n0387603876eucas1p29
	for <kurt@seifried.org>; Fri,  3 Aug 2018 07:24:58 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20180803072458eusmtrp289d470c34739694361f0ab656f544a2e~HTwkdzYdG2013120131eusmtrp26
	for <kurt@seifried.org>; Fri,  3 Aug 2018 07:24:58 +0000 (GMT)
X-AuditID: cbfec7f2-0d3ff70000021213-81-5b64034b4781
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id C7.56.04183.A43046B5; Fri,  3
	Aug 2018 08:24:58 +0100 (BST)
Received: from AMDN3331 (unknown [106.120.50.21]) by eusmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20180803072458eusmtip223da9b30a09a90b8ce4cad335cad11e8~HTwkT_xBo2556925569eusmtip2I
	for <kurt@seifried.org>; Fri,  3 Aug 2018 07:24:58 +0000 (GMT)
From: "Marcin Dominiak" <m.dominiak@samsung.com>
To: <kurt@seifried.org>
In-Reply-To: <20180802205454.25315.79989@shiny-2.local>
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 m.dominiak@samsung.com
Date: Fri, 3 Aug 2018 09:24:57 +0200
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 14.0
Content-language: en-us
Thread-index: AQKCgMSJovdzefAJo8bdrpuYKrImowK4d5nVozswvSA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsWy7djPc7rezCnRBmuOSFs0b1zL4sDo8eC1
	TgBjFJdNSmpOZllqkb5dAlfGhbftbAXtMhWzZ2o2ME4W72Lk5JAQMJE4t+clSxcjF4eQwApG
	ifnvd7FDOD1MEgv7DzNDON1MEi9nz2eCabl65TcbRGI5o8Tf9n1MEM4/RonW8w8ZQarYBAwk
	XrSfBbNFBMQlPvzeBDSKg4NTwFxi+SQnkLCwQIzEpo7r7CA2i4CKxLmrq1hBbF4BQYmTM5+w
	gNjMAvIS29/OYYZYrCCx4+xrRoi4uMSkBw/ZIcZbSSzf8gnsIAmBx2wSN3ruMEEMKpPo7T7M
	BtHsInGmdxuULSzx6vgWdghbRuL/zvlMEM39jBL7Jz9mh3BmMEq8+HUMqspaYt/PdywgHzAL
	aEqs36UPEXaUmPW7mwkkLCHAJ3HjrSDEcXwSk7ZNZ4YI80p0tAlBVKtILJv7DeoXKYmrrzuZ
	JjAqzULy8iwkL89C8uYshL0LGFlWMYqnlhbnpqcWG+allusVJ+YWl+al6yXn525iBKaH0/+O
	f9rB+PVS0iFGAQ5GJR7eC6rJ0UKsiWXFlbmHGCU4mJVEeN92AoV4UxIrq1KL8uOLSnNSiw8x
	SnOwKInz3umPixYSSE8sSc1OTS1ILYLJMnFwSjUwOouGMdyxmB3/38IqLvNrnvv2Fed5Tlpe
	aLwZwnlEW8mWMfo8o9vtMvbvjD4nWThlLy28ULfw2ZeyE6I+7yzvrU55Lbyb89+Ny7LerDLT
	/waoTb8WNsngTfn1bt6ZfRKG3D4zYyZ8N5Qo+XlU+AmPNNurplsZE9YG/kzmX17heSaAzSkm
	hiFAiaU4I9FQi7moOBEAAn1pbQsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4PV0v5pRog61PtSyaN65lcWD0ePBa
	J4AxSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUnsyy1SN8uQS/j
	wtt2toJ2mYrZMzUbGCeLdzFyckgImEhcvfKbrYuRi0NIYCmjxPIPtxghElISj5pWs0DYwhJ/
	rnVBFf1hlDj2fBNYEZuAgcSL9rNgtoiAuMSH35uYIYo6GCVOnlvL3sXIwcEpYC6xfJITSI2w
	QJTEjukv2UBsFgEViXNXV7GC2LwClhLzn8LYghInZz5hAWllFtCTaNsINp5ZQF5i+9s5zBD3
	KEjsOPsaKi4uMenBQ3aIE6wklm/5xDaBUWgWkkmzECbNQjJpFpLuBYwsqxhFUkuLc9Nzi430
	ihNzi0vz0vWS83M3MQJjYduxn1t2MHa9Cz7EKMDBqMTDe0E1OVqINbGsuDL3EKMEB7OSCO/b
	TqAQb0piZVVqUX58UWlOavEhRlOgNycyS4km5wPjNK8k3tDU0NzC0tDc2NzYzEJJnPe8QWWU
	kEB6YklqdmpqQWoRTB8TB6dUA+OKCacKZqibvmzi7SjNbUrYy2e540bhJK5ZXzjOck6dMH3H
	moaZkfMld3dM6F0gvUFJt3GHw/Kg7c88F3q3F+crFcw7+6aY9fqXw/vrhfpKtvNq+2ZNmPVv
	29d5UWo77c8F23z8w//7usiNiX++ms5eIXfv4ZnW3Cn6bHVtj1o2W7Vdzdpg+neLEktxRqKh
	FnNRcSIA9ah/9psCAAA=
Message-Id: <20180803072458eucas1p21a4a6139c5bc14b69b1afbdfa4615e2f~HTwkr0B_n0387603876eucas1p29@eucas1p2.samsung.com>
X-CMS-MailID: 20180803072458eucas1p21a4a6139c5bc14b69b1afbdfa4615e2f
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20180802205457epcas2p43894dde07ffe51d45453f42c5e5efd66
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20180802205457epcas2p43894dde07ffe51d45453f42c5e5efd66
References: <CGME20180802205457epcas2p43894dde07ffe51d45453f42c5e5efd66@epcas2p4.samsung.com>
	<20180802205454.25315.79989@shiny-2.local>

I accept

-----Original Message-----
From: kurt@seifried.org [mailto:kurt@seifried.org] 
Sent: Thursday, August 02, 2018 22:55
To: m.dominiak@samsung.com
Subject: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
m.dominiak@samsung.com

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use). 

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/maste
r/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when they
were accepted and so on. 

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically in
future (you'll have to manually ask). But again, if you have no idea what a
CVE is then you can ignore this/ask to be added to the block list with no
problems. 

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVEB.), you hereby grant to The MITRE Corporation (MITRE) and all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute such materials and derivative works. Unless required by
applicable law or agreed to in writing, you provide such materials on an "AS
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied, including, without limitation, any warranties or conditions of
TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR
PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce, prepare
derivative works of, publicly display, publicly perform, sublicense, and
distribute Common Vulnerabilities and Exposures (CVEB.). Any copy you make
for such purposes is authorized provided that you reproduce MITRE's
copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/maste
r/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc. 


