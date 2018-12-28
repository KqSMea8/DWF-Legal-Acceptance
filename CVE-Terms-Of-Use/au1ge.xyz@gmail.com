Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp1428984ivl;
        Fri, 29 Sep 2017 20:58:25 -0700 (PDT)
X-Received: by 10.159.195.3 with SMTP id bd3mr4030527plb.430.1506743905115;
        Fri, 29 Sep 2017 20:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506743905; cv=none;
        d=google.com; s=arc-20160816;
        b=rGU6TdRzyrVMsqV9MCOU3LM7S+FNhOGW1DkJPMZ68LXTtNJpYoYP6tkSxvWio27E5X
         3MTUcXj0/mgLio+Y3LbBabpTpWrYBZJAOuKFYubm+YYbqTE1j/vw+Xbq+QDkS4pOItk5
         bM0YJ2OG9WV02SUfxbO3FiKt14GJgvAMCU9C0xfYb+YxrNFYQ9ZnPEs7zN8ivM0WhXQ4
         4jYDaSrv6PXr96lSwRo3VzudHT/ATo3fR+7QNCsQ4aiUE2Wk3DYzDdAEx61H3On3+TYn
         195eSIhxfoQVfLBWEatkuwDMntLzICWgYubxAOptoKLUDpvhixlYd2W8UkIgAGTI+pnq
         hlgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:dkim-signature
         :arc-authentication-results;
        bh=JC9Deasu8HVOymo7SJNucQKvAE1KX+gdtOSJz5SU0bE=;
        b=EoQIXEGaflS7wypeIsHJ6IsdiplBPSddKrOTxRMV0W+A6xWs3px9ShcoOnxbo7ibgV
         lbPkP5fRM1bH5+mVB0YhZJ6k06FEpSEEXCRY9dkGoM62yMM7FuPgUo3hhj3jjR/m8E32
         iAo0wrPQCl7+K/DAJyzjvjenT3JfgNp4wLb4oAG7PPF6KTaSGeCI9sSPAv1qdVgE5lDR
         IT/KDV9Znc/7d1YVPA2Z3zaam+esJQzRy4/1fLpOQ+AGi4RbFSB7jKvbLXM6rn8az1i9
         3pHi3fd52pVbVxIC2K6EUlKP7kZys6TDgemR5kF3QEtzxdGTWwVz9j+DNnTiJcFS6mI1
         TWZA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eq74+ojh;
       spf=pass (google.com: domain of au1ge.xyz@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=au1ge.xyz@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <au1ge.xyz@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t22sor1119535pfi.39.2017.09.29.20.58.25
        for <kurt@seifried.org>
        (Google Transport Security);
        Fri, 29 Sep 2017 20:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of au1ge.xyz@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eq74+ojh;
       spf=pass (google.com: domain of au1ge.xyz@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=au1ge.xyz@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=JC9Deasu8HVOymo7SJNucQKvAE1KX+gdtOSJz5SU0bE=;
        b=eq74+ojhTLOCbNnWBII39qjQQtypwPQ4U0M/xsJATr2s1kmC+iQGOCERjsj9L2TQ+n
         GZn+AuLdKeUi5upERkYb9jWpmMBGXdtJlSIvn3GtnMnRrm5zB2exfMBVMnhWfvWacZoF
         w3QayH5qUYPohBj4rCMViseOoAfq3OUIsFddCYFGNpe3lD7JwwtJzq3frt5XMy4YZDBl
         fdRkzgKRaFZ4j0bX94zZ5f7us0V9UUh5yt4CwQtiKn6++0WVR7+ODIjTIoJVjp0CxnQA
         7XNcLuirXVQcXof3ZV+d/w7/vLvZK6/xrz2Dek25J664cfI43S6Lam7WyiBZxfIlNF7j
         4ZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=JC9Deasu8HVOymo7SJNucQKvAE1KX+gdtOSJz5SU0bE=;
        b=MCcPXQt933JhpDBHdTr8oaWQWGVDYJrlK/Y8dIOkI71VAKx2YAHsPETVXrvvIytdGg
         1qoBsMSiuoA1sY2BELpiy8lqORgieA+w4z6gYa7OXqKEL1WX23yS6aRRyfACT8XcZJEd
         M4z8WnxMNZapmtG5rZnU1/avny6kMZFr4KK183KbcEepkif5Hz6/K74NQAspc+w19sbT
         TL/35Jn6XHXB7gmfxMj7amHgJGIA4EdTuS0CeRyC8VHVkm8zZEvicpXyDVXOvxZ9UFB5
         2b7NA10jwiRBnUmVsN2PD6lQX/VazRvX3YktnWvpRzhGBBMCwKFF0vIjDIwKj6y/XvRw
         uqXw==
X-Gm-Message-State: AHPjjUhs2YT+Ke8a+lvMHFXggf7iMWXiLjZmYPQrt4c9ZtdIMTlSAdBk
	cdCwPVMW0YmmL89lwsz88IEHqMtq
X-Google-Smtp-Source: AOwi7QDLR0LBMEkjPTMkLl31b+keymCNfRDlrJGnOXe684Bs5r493iQQqd7bn0TzTGEuvJEzZHRuiQ==
X-Received: by 10.98.82.71 with SMTP id g68mr9509140pfb.125.1506743904622;
        Fri, 29 Sep 2017 20:58:24 -0700 (PDT)
Return-Path: <au1ge.xyz@gmail.com>
Received: from cernet2.net ([2001:da8:ab:130:11d9:2477:42b:307c])
        by smtp.gmail.com with ESMTPSA id m1sm832940pfh.13.2017.09.29.20.58.23
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 20:58:24 -0700 (PDT)
From: hello au1ge <au1ge.xyz@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 au1ge.xyz@gmail.com
Date: Sat, 30 Sep 2017 11:58:20 +0800
References: <20170930014112.3437.75520@222.2.168.192.in-addr.arpa>
To: kurt@seifried.org
In-Reply-To: <20170930014112.3437.75520@222.2.168.192.in-addr.arpa>
Message-Id: <7BD02BA4-4AE6-4553-9187-DA3E3377BB12@gmail.com>
X-Mailer: Apple Mail (2.3273)

I accept
> =E5=9C=A8 2017=E5=B9=B49=E6=9C=8830=E6=97=A5=EF=BC=8C=E4=B8=8A=E5=8D=889=
:41=EF=BC=8Ckurt@seifried.org =E5=86=99=E9=81=93=EF=BC=9A
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

