Delivered-To: kurt@seifried.org
Received: by 10.79.152.203 with SMTP id z72csp857939ivg;
        Tue, 13 Mar 2018 20:42:36 -0700 (PDT)
X-Received: by 2002:a17:902:7f0c:: with SMTP id d12-v6mr2619019plm.350.1520998956742;
        Tue, 13 Mar 2018 20:42:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520998956; cv=none;
        d=google.com; s=arc-20160816;
        b=Mt2m/eEUPZdiDgKejIy2pvvFgN7GP8tmKmC0P/x1wpY1rZY/0lQSZEe3eagck4fImz
         qdzKVmMb+wfywM+3bEZcmYPO5xqdkaMPbG617QWNHKNhg625UEf3Z7ypfPjUuWTDdHle
         zIbA4BceNt8lAPZX7IYMYyWuAhcjJtnEs/jfTHn69s1/DoRcX1AD8/rLBH9O3gx8Pw6F
         /VUIglckybw+2X8yVqX8zd7bla8Rqge/Gj8pW9YPWGcguz/zlsy/6zwKrlpCj/udHn+c
         nM5zxZCVBhrMa9nKH7UJYfEWWE9owMXE6AykacwjiKYURPVvAWO+XE2xjiz8fhYkErBy
         Oo4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:dkim-signature
         :arc-authentication-results;
        bh=nI6JWTxx4NFFaZwtubyYPve3lmY1OBDTFzBu2DJNOiQ=;
        b=lzCAvh9XPO4rVdk40TVMnHlU6uskcA7Twl+A7m6DCkGDdXF+u+H4wI5kHaisOT2QTJ
         kQHrFlndQzz2A96vHrIK/oRS33y/M9g1oR8KLyUD7TicyiXgXOFFV4Fo38e116onL4tI
         tWU4owbNHEGm/8uGansHBzBzbXfvRIZZW8MaaFwnZpMkqAM1OW155COOycGqeWz5LsIC
         9ObT+6kiWO18QFRN5eTwvdtduzCWU5jkMLVocwbODAik7Cf7cMKMUnJGtstQk0iBfuff
         nu72C9Z5BNSvQxiFFTACw5MQzttVdLcoRQ0geVm8T6wbZGteojNY9Q38mek2fBMnG8J8
         vk6w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f4WI/GPk;
       spf=pass (google.com: domain of stanis.shkel@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=stanis.shkel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <stanis.shkel@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id f11sor435592pgt.162.2018.03.13.20.42.36
        for <kurt@seifried.org>
        (Google Transport Security);
        Tue, 13 Mar 2018 20:42:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of stanis.shkel@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f4WI/GPk;
       spf=pass (google.com: domain of stanis.shkel@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=stanis.shkel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=nI6JWTxx4NFFaZwtubyYPve3lmY1OBDTFzBu2DJNOiQ=;
        b=f4WI/GPkATxBfk8pVfYCI6+Oe2iYctr7hzBl+/+Z6gg/+AI/sox9TX4nWSBy3+GMWf
         Xv94IRcraDBbEg5LVgLlEUWbQSro8bIkQnJL0AEpF0I/PlhWvCCHm4IFEtF2RIpZg32T
         CnZ/f4FH1YfkiZbpOiPDB18r1W4kLPfcPpMur9hLl+odOVKFkF9zDTytm6lDt5O69TBS
         GN35GVyBSVZ7uH0994ukgi//KjHrHpMRPR459hf1/tWfri/8MnSDnDvPBAelwmxWGbdj
         0E0WvYqDCvj3AyRcvKadL5+clMQo+YI3uMhtJqeZ8aNx5WfNBVTxKi959MefQo6UmmbM
         5Snw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=nI6JWTxx4NFFaZwtubyYPve3lmY1OBDTFzBu2DJNOiQ=;
        b=UEEKkKsAT/G+IVxmQ2RrxXMt20ZitVcR9JxDENsToSY7L19anRAo7KroYjg89O5OOk
         q0+VHHJXesXWpHoMo2Rk0S/MzU3ym2flM8sgmUZt4jlECN1Y1bbqxChCDhyQkwXXEP7H
         s+KZsSD/4a+04Hd6TBlWlparJIy7EYu/KQvqXtKzC5GcJ4mcWqjgsOBEJEEN+1fXEdcZ
         a5cN2OXnaGRoafqQmabADonUfygi4JjjpU1s6vPKzVvostChPCAmc1v0IblAY3kfnLsc
         TrTyv9X1FbKD+YqzS1Y0KMq+Ye5wmUx3L/ijk57P3vDDIkvFf7/LY9RjBHi3vUCciVVF
         nP1g==
X-Gm-Message-State: AElRT7H343JuN7yIq0Qp5FMAGjRHv4gX19Tqiw07ZZNqRy5K8I2Y2wop
	Mn9zqtnBKcNKCAgBJmp9Iwkcf0ee
X-Google-Smtp-Source: AG47ELsnCHOXo6AsbQC6TYK7SuBWGsumFXga8+clyB2HRx9tt6VMSS1xQ/LDob6XdEcg+CvmoGnJJQ==
X-Received: by 10.101.65.5 with SMTP id w5mr2435009pgp.214.1520998955994;
        Tue, 13 Mar 2018 20:42:35 -0700 (PDT)
Return-Path: <stanis.shkel@gmail.com>
Received: from [10.1.243.63] ([49.255.222.30])
        by smtp.gmail.com with ESMTPSA id w24sm2674188pfl.14.2018.03.13.20.42.33
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Mar 2018 20:42:34 -0700 (PDT)
From: Stanis Shkel <stanis.shkel@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 stanis.shkel@gmail.com
Date: Wed, 14 Mar 2018 14:42:31 +1100
References: <20180312195804.29467.23664@slab.local>
To: kurt@seifried.org
In-Reply-To: <20180312195804.29467.23664@slab.local>
Message-Id: <EF43CC91-E04E-4753-A7B4-467842C766E8@gmail.com>
X-Mailer: Apple Mail (2.3273)

I accept
> On 13 Mar 2018, at 6:58 am, kurt@seifried.org wrote:
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

