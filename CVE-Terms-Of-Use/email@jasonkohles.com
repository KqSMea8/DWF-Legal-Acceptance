Delivered-To: kurt@seifried.org
Received: by 10.79.201.12 with SMTP id n12csp960669ivk;
        Fri, 16 Feb 2018 10:25:24 -0800 (PST)
X-Google-Smtp-Source: AH8x226cIB7dIWlqbvE/c979CLOZny79jw7M2WDhMQsSWGKM6ZfmHL5QGvheRgHTUy0/ZTbbpoSk
X-Received: by 10.237.32.74 with SMTP id 68mr11622477qta.129.1518805524876;
        Fri, 16 Feb 2018 10:25:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518805524; cv=none;
        d=google.com; s=arc-20160816;
        b=DmbxGSOp59muc5wSKerKYEsTLy9RJBlTD/RCn4gucOS/rYCBexKj0mqSz+zhZ4MVjA
         E1OE8u59n27kWkVP88GtBZpvcLbJpoaSZafrOlRuBgteyM7YLwWK6bEwodxRj+zAi242
         +GcSiFtSkIHDicdk6tDGnz6/iG7prhRn4LueHI2tZ8G8876yLWHKDajT9Ou8bfOgwH/h
         thqtt7FDB4a9LF8FbUPhWPtZIthgTv4K0yD1ueCbPz5+cmcEbglxpD/LpJU1j+cBJQbR
         epDJJsXQDtRMm3sjvCve4dH3JMHybbvkOIVZE+RGnkzbyyNwL+2MHFoPjXwR8YI1xpSf
         H3wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:arc-authentication-results;
        bh=/uGZ4zLIzr5jfOmkfRuc+gufzorSWbjPVuTn69wVZsg=;
        b=1Es1tsr2/gIud23iqPHuMyFbupT4TmGuVzTvt2Vpm8EdPfT2iP8BV3s/ZhbxeAqNF1
         ALmi0LoupHUEArDwK/yK0DRuIsbpSC+xyitcBWBlNkLV47rXDs/EZ4LcAe9x2Cv2mRj0
         rGW+j1GAoVvrPJmDupzdankvs1fB70VqDO/jbX2eSuioBcRjM1g2fjMDPqncJrDZMrwE
         H6HILTKbpPqBBXV9BIwvlotuCoSL+OknmFHIHQv7zcd98vGKHxsN6dPAOMLk4SXl7h0Y
         GKXaExyDTeTbcawsduf6IejLklu8BsCX9wePSRr0RA4B5Z6DN9QL7qJlQIV5ha2XmHsa
         RnYQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 2600:3c03::f03c:91ff:fe89:7acf is neither permitted nor denied by best guess record for domain of email@jasonkohles.com) smtp.mailfrom=email@jasonkohles.com
Return-Path: <email@jasonkohles.com>
Received: from mail.mindwell.com (mail.mindwell.com. [2600:3c03::f03c:91ff:fe89:7acf])
        by mx.google.com with ESMTPS id r3si2105700qkb.318.2018.02.16.10.25.24
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 10:25:24 -0800 (PST)
Received-SPF: neutral (google.com: 2600:3c03::f03c:91ff:fe89:7acf is neither permitted nor denied by best guess record for domain of email@jasonkohles.com) client-ip=2600:3c03::f03c:91ff:fe89:7acf;
Authentication-Results: mx.google.com;
       spf=neutral (google.com: 2600:3c03::f03c:91ff:fe89:7acf is neither permitted nor denied by best guess record for domain of email@jasonkohles.com) smtp.mailfrom=email@jasonkohles.com
Received: from localhost (localhost [127.0.0.1])
	by mail.mindwell.com (Postfix) with ESMTP id 3B67E115A1E
	for <kurt@seifried.org>; Fri, 16 Feb 2018 18:25:24 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mindwell.com
Received: from mail.mindwell.com ([127.0.0.1])
	by localhost (mail.mindwell.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zGYoHhuA69rE for <kurt@seifried.org>;
	Fri, 16 Feb 2018 18:25:23 +0000 (UTC)
Received: from c02t7051h03y.users.bah.com (corp.bah.com [128.229.4.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mindwell.com (Postfix) with ESMTPSA id 2D022115A1C
	for <kurt@seifried.org>; Fri, 16 Feb 2018 18:25:23 +0000 (UTC)
From: Jason Kohles <email@jasonkohles.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 email@jasonkohles.com
Date: Fri, 16 Feb 2018 13:25:22 -0500
References: <20180215221331.81550.24976@slab.local>
To: kurt@seifried.org
In-Reply-To: <20180215221331.81550.24976@slab.local>
Message-Id: <1B1CB732-20CE-4C87-B333-8252B997A399@jasonkohles.com>
X-Mailer: Apple Mail (2.3273)

I accept

> On Feb 15, 2018, at 5:13 PM, kurt@seifried.org wrote:
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

