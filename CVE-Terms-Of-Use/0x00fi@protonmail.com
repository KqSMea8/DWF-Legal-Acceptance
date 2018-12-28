Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1468148ivl;
        Tue, 10 Apr 2018 11:30:49 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+YecJtPW/cs39CExmMuk2o2F+WigfBRMi4Nsg4rV6wIi8huZ37ixvvxbS40LpTPeOhoaKl
X-Received: by 10.223.144.195 with SMTP id i61mr1226025wri.227.1523385048975;
        Tue, 10 Apr 2018 11:30:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523385048; cv=none;
        d=google.com; s=arc-20160816;
        b=nIWPWleTaoa0pMHaCPSkdS1/3FrGAE+Pv239KI3Sx6qEaybxPElkDG/CWMelI8uC4F
         looj2EkJPtc6OBUtmSAxp8NzfcUEDAZZw5hWGQ5oY+SCx4KjU8/kZdcUKyQsfMehK5Zp
         T/TZS0c4MeURvgUj3tvw+YVhkJbjVohsdPM8WAVWOeQMddmvvANQpOTJX2bFLHDLDQXx
         OAXCxI71w3Me6O7MrvIG4TaaXCg4A9k6MOSZkMHJB+sDy9ogzly5lRYFa/z6JfNK/NU5
         /olKmRl78mhJ8dPN5DbpD/DDMPpZQacuGrdgXTaO+w91oyYffE6v8FT9N5sb3HERZ4V/
         iTkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:reply-to:from:to:dkim-signature:date
         :arc-authentication-results;
        bh=99B8YC0W63yGctLLVvt1x+nLdi96KucIYEg4TZnhkJM=;
        b=okZWdoBdFHE/YzP6EZNINxAyogGxQN5b+Nt11o1gAcpY/db6HZnqNuJb+b3mozk122
         P4stH+O+Z3OypBJtmrK8itX5eiVKwKx5thvaZesv1euPvykLv6OftuMyx6yJuORn3mlf
         m7HtbWNstrbZyn7/sNmY7sCABfJIaqoda/zYN7jDBEppW2T+qpiqMv0IteiZUFHR0V46
         Qv+XSkkQRW4iLQjAuKqkn1CkAo5IRAMJecv3+/2Lf5BB/ACX/MUhfca43uaeDLnH0057
         uP5PWVVPcHInicEC8IeuOy7UozHEJSVFyIJpGFdjnljz2hAMutBjlKF3wZ+wsE3DEmdC
         rAvQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@protonmail.com header.s=default header.b=NDFmzpiO;
       spf=pass (google.com: domain of 0x00fi@protonmail.com designates 185.70.40.27 as permitted sender) smtp.mailfrom=0x00fi@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
Return-Path: <0x00fi@protonmail.com>
Received: from mail4.protonmail.ch (mail4.protonmail.ch. [185.70.40.27])
        by mx.google.com with ESMTPS id d58si2214792wrd.467.2018.04.10.11.30.48
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Apr 2018 11:30:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 0x00fi@protonmail.com designates 185.70.40.27 as permitted sender) client-ip=185.70.40.27;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@protonmail.com header.s=default header.b=NDFmzpiO;
       spf=pass (google.com: domain of 0x00fi@protonmail.com designates 185.70.40.27 as permitted sender) smtp.mailfrom=0x00fi@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
Date: Tue, 10 Apr 2018 14:30:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1523385047;
	bh=99B8YC0W63yGctLLVvt1x+nLdi96KucIYEg4TZnhkJM=;
	h=Date:To:From:Reply-To:Subject:In-Reply-To:References:Feedback-ID:
	 From;
	b=NDFmzpiOQ3tLQMwOuqzsBdXqoFdxm0z48BipkUGVgHPxYFGYcuftjqymNTdH3rBp8
	 2KqHWHUVLP7h4XSHfPtdLmsDpnrLS9hTQagU9ajS3jEZDXTrMAp8OMg6B2qpfH1qAy
	 YQocm/jNeBWELPJpopXF31bEJvDyLw1P5mt4W0ys=
To: "kurt@seifried.org" <kurt@seifried.org>
From: 0x00fi <0x00fi@protonmail.com>
Reply-To: 0x00fi <0x00fi@protonmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for 0x00fi@protonmail.com
Message-ID: <xI6Dm1eonj0xJOkXccBfDAS_iLv1u4sY4JrAi1kmchfeD-x27pN15A9w8bFP3CnL2aTTghUcNTYkaqFvxye8Q5B_t9dK7WqQYs8WnFR1ugI=@protonmail.com>
In-Reply-To: <20180410182622.97071.8045@slab.local>
References: <20180410182622.97071.8045@slab.local>
Feedback-ID: zt8as1HGTeZu6757qRSKd5mWwtvpmc8DLrZ2f9-Sw-II-EibJxixi2l2pXXEoq_wVR2oVmpMFrIsQi2rNx1_fQ==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.3 required=5.0 tests=ALL_TRUSTED,BAYES_50,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham
	autolearn_force=no version=3.4.1
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on mail.protonmail.ch

I accept


=E2=80=8BSent with ProtonMail Secure Email.=E2=80=8B

=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original Me=
ssage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90

On 10 April 2018 8:26 PM, <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at https://iwanta=
cve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fill=
ed out the CVE form and want one, we can't use the data until you accept th=
e MITRE CVE Terms of Use).
>=20
> Simply quote the email and reply with "I accept" at the top if you agree =
to the MITRE CVE Terms of Use and we will add a copy of the email to the DW=
F MITRE CVE Terms of Use acceptance data at https://github.com/distributedw=
eaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>=20
> The reason we use a complete copy of the email is that it provides an art=
ifact showing that the email address accepted the Terms of Use, when they w=
ere accepted and so on.
>=20
> If you did not submit a CVE request to the DWF you can safely ignore this=
 message, however we may resend it at some point in the future, if you don'=
t want any future emails simply reply with "unsubscribe" or "DON'T SEND ME =
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so=
 we don't spam you with these, please note that this will prevent you from =
being able to accept the MITRE CVE Terms of Use via the DWF automatically i=
n future (you'll have to manually ask). But again, if you have no idea what=
 a CVE is then you can ignore this/ask to be added to the block list with n=
o problems.
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporation (=
MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non=
-exclusive, no-charge, royalty-free, irrevocable copyright license to repro=
duce, prepare derivative works of, publicly display, publicly perform, subl=
icense, and distribute such materials and derivative works. Unless required=
 by applicable law or agreed to in writing, you provide such materials on a=
n "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expre=
ss or implied, including, without limitation, any warranties or conditions =
of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PU=
RPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any cop=
y you make for such purposes is authorized provided that you reproduce MITR=
E's copyright designation and this license in any such copy.
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
with your question/concerns/etc.


