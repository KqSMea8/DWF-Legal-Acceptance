Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp981652ivl;
        Thu, 5 Apr 2018 02:24:31 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+CPWHnr4dxQ/3jDXOsAkY6wospeZctrqfHAZNoVs1SVtfRLhw6ny9eylc6zf5X7C86nHfh
X-Received: by 10.55.164.201 with SMTP id n192mr5948401qke.230.1522920271422;
        Thu, 05 Apr 2018 02:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522920271; cv=none;
        d=google.com; s=arc-20160816;
        b=RY0oDHzNTy1/JKFXbgYY8WcrgDAiY4qH8B+UUWRE2FykR5gLtjTT9RP9ZNkTP+uhpg
         FYjid4PUsVHM5RQXJeC92Q0veoc6N+vsHtpZM1DYCkmuX3SUit8A7poKW6r3SWQ3lP70
         Qs8q9LWAS8aHsa6Bn1lcSCb9SZTgl8lHY9fLGkliYU7fmRmZg5aLCHfjyfSnUzJsUkm2
         EUS+7nTOsV5b/GvG9J2kNrfUqzn6FR1ABQtD1FvfdfQHqik2qwYmv5W/mE8XsCOyDeSj
         PASSZEy3idi142dFXPSrHTVUrPJizcGOyN4Gt7/uH+b468XHnGeme5EWM1Q0CyOiBuHe
         Ek2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:arc-authentication-results;
        bh=lugHAj7e0ja40JKj6XhAbdrgevakgy6b6lh+WmAGmuQ=;
        b=SeO+JxReemnhbfDgYacopdOHhHOJOgtJ7ULbuumMmaxKHSy0rA6Uu3FqELJqRIt6cH
         /8HQd/E6qOsiuO8IYsMa+EJPwNlPGLSHfEqklSjE1xAxJwV/0aZrhgFPDyhz25SpTE1y
         W9wOD3SixeXpPuiExXgMyQpfy74+al+2XQ8JCf3+lqE5RvRpPobQ7cqOiVPGOqDF1mVj
         ndplR7+MWZM/B80KQueHmLESI3+vyS2G5/cffpZOv+oDU43S0n7Y5lmZ40TOVGk6W7hd
         tc35WLAV/vaFvS0J/A6NI9JreWuBQppcV2NlzLqIoNkpov4DuHR25Dfmkgncsookj4Lh
         rqlA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of hkario@redhat.com designates 66.187.233.73 as permitted sender) smtp.mailfrom=hkario@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <hkario@redhat.com>
Received: from mx1.redhat.com (mx3-rdu2.redhat.com. [66.187.233.73])
        by mx.google.com with ESMTPS id f96si7099975qkh.219.2018.04.05.02.24.31
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Apr 2018 02:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of hkario@redhat.com designates 66.187.233.73 as permitted sender) client-ip=66.187.233.73;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of hkario@redhat.com designates 66.187.233.73 as permitted sender) smtp.mailfrom=hkario@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1A2E540201A4
	for <kurt@seifried.org>; Thu,  5 Apr 2018 09:24:31 +0000 (UTC)
Received: from pintsize.usersys.redhat.com (ovpn-200-17.brq.redhat.com [10.40.200.17])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 91FD3A9F4B
	for <kurt@seifried.org>; Thu,  5 Apr 2018 09:24:30 +0000 (UTC)
From: Hubert Kario <hkario@redhat.com>
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for hkario@redhat.com
Date: Thu, 05 Apr 2018 11:24:25 +0200
Message-ID: <2379818.oVFKit6l6g@pintsize.usersys.redhat.com>
In-Reply-To: <20180405090631.26722.28696@slab.local>
References: <20180405090631.26722.28696@slab.local>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.6]); Thu, 05 Apr 2018 09:24:31 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.6]); Thu, 05 Apr 2018 09:24:31 +0000 (UTC) for IP:'10.11.54.5' DOMAIN:'int-mx05.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'hkario@redhat.com' RCPT:''

I accept

On Thursday, 5 April 2018 11:06:31 CEST kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>=20
> Simply quote the email and reply with "I accept" at the top if you agree =
to
> the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
> MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
st
> er/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically
> in future (you'll have to manually ask). But again, if you have no idea
> what a CVE is then you can ignore this/ask to be added to the block list
> with no problems.
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd
> Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) =
and all
> CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>=20
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
st
> er/Terms-Of-Use.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.


=2D-=20
Regards,
Hubert Kario
Senior Quality Engineer, QE BaseOS Security team
Web: www.cz.redhat.com
Red Hat Czech s.r.o., Purky=C5=88ova 115, 612 00  Brno, Czech Republic


