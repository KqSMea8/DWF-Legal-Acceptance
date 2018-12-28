Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp3698497ivl;
        Mon, 2 Oct 2017 06:57:15 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC9dWN2FxGjr5oJ3+OpkAo6JTZbGROSyhsSh8019O+kB+V2W1IclBjwf2DrmeZAj4oOjvi6
X-Received: by 10.223.134.25 with SMTP id 25mr15614104wrv.186.1506952635736;
        Mon, 02 Oct 2017 06:57:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506952635; cv=none;
        d=google.com; s=arc-20160816;
        b=LidQ87fsvHt5o6cBg53cfJKenTJlvdQwIqRdN68QERS1MjCus5knDzfQStupC5hWY7
         aaZb2jZSGi3ZLxIYnEtJF3+AijkkGder5ghdNRPP551QQhBFcZ6hwnciXG7lyenLnd6k
         b+irMlqO4Orkur6H8p5jVlcCEdtHUmium89Qrg1yn7jZ/oMLO5fmalJXm9xykqA0/Z8t
         tiYghE9izPOpFZ5Z7357SfrLlaQQynWrlm+0VGHSuDTOvONFgTBpRQvFQj//y5OoUzyl
         7ECYFJzJ3Bpr1wi8Cirv4nx4jLlnnR5WFqkggzQWcaW+QKf9zYsIe7oQFV4jWAbcD2Uj
         lXkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:dkim-signature
         :arc-authentication-results;
        bh=EinunLPP6qgJuMLfvNDaMXTaI7ktaiOU+psa1boLtzY=;
        b=flft1Ygs/vd60BxvDwsf+Duk4/pTOz8WWlmiqHbx9NBU085vNZ6VXRZQGv9qYYUtz5
         YpclPJYzjHURTQoJaWnq9u1l6bQkAprE8tZmLd+h1kVFRGpJFMvwg3tIY7FL+gqjO4or
         USf2qoHKjcaecJYKvHVC2LN3v9tNfQ9jfSoNwxYsuYyKjIT6KDOMapq3AeALpmdw1P98
         tiSQoaZ5Oa4z5KBgBt3NLbfLr3H+qeyoGBr8obSL+vYqUHsyFyiny+LyjZDxMkvM4wPe
         zg5BijgV8oawFmJNzL9m1UjHlpjZo6wvEONi12o3vTYFu38UYNUcVtNpYf0DxF6yFJ56
         BTqw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@dxw.com header.s=harold header.b=WOy8tnHA;
       spf=pass (google.com: domain of security@dxw.com designates 2001:41c9:1:422::58 as permitted sender) smtp.mailfrom=security@dxw.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=dxw.com
Return-Path: <security@dxw.com>
Received: from farl.dxw.net (farl.dxw.net. [2001:41c9:1:422::58])
        by mx.google.com with ESMTPS id 2si7631854wma.28.2017.10.02.06.57.15
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 06:57:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of security@dxw.com designates 2001:41c9:1:422::58 as permitted sender) client-ip=2001:41c9:1:422::58;
Authentication-Results: mx.google.com;
       dkim=pass (test mode) header.i=@dxw.com header.s=harold header.b=WOy8tnHA;
       spf=pass (google.com: domain of security@dxw.com designates 2001:41c9:1:422::58 as permitted sender) smtp.mailfrom=security@dxw.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=dxw.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dxw.com;
	s=harold; h=Message-Id:In-Reply-To:To:References:Date:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From;
	bh=EinunLPP6qgJuMLfvNDaMXTaI7ktaiOU+psa1boLtzY=; b=WOy8tnHAwOD9GQEU+dAahkf0UA
	dq+F45Bz6Zm2i832kJXY2KFNNMcvxLyUnbIpDNehaVR7KISDfYSGIgbrjW3HpTJTg3VdhgmjPvqqO
	dGhpyOSgbOkKlCuQypOWy/tveNDiI12vvidIGJma5Wi2rPMhMwsgU9Rqd1GLw6nA/EOQ=;
Received: from submission.local ([fd0f:62b0:48c8::42])
	by farl.dxw.net (Exim)
	with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1dz1Df-0004By-5T
	for kurt@seifried.org; Mon, 02 Oct 2017 14:57:15 +0100
From: Tom <security@dxw.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.0 \(3445.1.6\))
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 security@dxw.com
Date: Mon, 2 Oct 2017 09:57:13 -0400
References: <20170930014033.3437.67140@222.2.168.192.in-addr.arpa>
To: kurt@seifried.org
In-Reply-To: <20170930014033.3437.67140@222.2.168.192.in-addr.arpa>
Message-Id: <92E6D3FC-8C14-4E65-BFDA-A8C919F22B79@dxw.com>
X-Mailer: Apple Mail (2.3445.1.6)

I accept

> On 29 Sep 2017, at 21:40, kurt@seifried.org wrote:
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

--=20
Tom Adams
Developer, dxw
Web: http://dxw.com/
Twitter: @tom_dxw

