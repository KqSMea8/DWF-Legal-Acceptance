Delivered-To: kurt@seifried.org
Received: by 10.176.3.232 with SMTP id 95csp2265859uau;
        Sun, 9 Jul 2017 04:32:15 -0700 (PDT)
X-Received: by 10.28.1.81 with SMTP id 78mr4542104wmb.100.1499599935041;
        Sun, 09 Jul 2017 04:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1499599935; cv=none;
        d=google.com; s=arc-20160816;
        b=O0fgJ5KBRfQqLPnXMAZDvkbgZbeyLby8R1z3UWY0ZQusmIa2XuPaWrusEn6/kLgnI5
         NHvuiu0rZzo8Yw/h9nH0i4MidZQIXigzbhAGBLwukGNBGDe+tkvC9lltreLf2FPbuOUs
         CE3WUWbzT1YIr4VqPz0LXCJpeuu0uduAMHA/HtwCJ2RSHJqRDAMqBUg1bWXUtI5fntdR
         cvEYkGx09sfzAqEES5rUO5G3xjZKdo8iPAWhl+pUSbALgyZlnq0FHKqUVPL605+AsAXG
         S3x4NZxKltDUgYMATQPfklURH662g/tcnIY3f6S62OGld0ELdF7tbsrjmSyrE432lASa
         Aveg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:dkim-signature
         :arc-authentication-results;
        bh=B1/INo82dJTGXlw+vcq4bX6YqXAZtqHrsTtkBBsmi/E=;
        b=IpTx1H9BE8xFELAIOg80irfwPT8Z6CKU5jjYpuRuwZBNoybChY4utF8908dMN4xKEG
         efpCrMor7AQ9QS0ercjcp5VdYD5KPaPCQupX09kXWyJjdsL4nT0nThAuXMUgsqPeMD4+
         zWPumPOoyv0RPvw0mNJo0E2qWOyE94Om9XEBheI4WiUpthqZpBAzJS2LJJ+jT9ivmVp+
         Fn3zcOvxTpNP+52zEyg9L6+VmpL1pyehFwCO8O+/EHqwflU8uxQe3L8O8oP9Gw0Qr7Qm
         ImOxtJQQ5DZcUU+u99eWouWosIXSlzzOEYjtiw2lzgX8y7ZhobAmUEBvU6Pp5UtJVcqR
         R3yw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.b=GoJqGCbd;
       spf=pass (google.com: domain of jacksonfylle@gmail.com designates 2a00:1450:400c:c0c::231 as permitted sender) smtp.mailfrom=jacksonfylle@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <jacksonfylle@gmail.com>
Received: from mail-wr0-x231.google.com (mail-wr0-x231.google.com. [2a00:1450:400c:c0c::231])
        by mx.google.com with ESMTPS id u62si5776045wrc.312.2017.07.09.04.32.14
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Jul 2017 04:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jacksonfylle@gmail.com designates 2a00:1450:400c:c0c::231 as permitted sender) client-ip=2a00:1450:400c:c0c::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.b=GoJqGCbd;
       spf=pass (google.com: domain of jacksonfylle@gmail.com designates 2a00:1450:400c:c0c::231 as permitted sender) smtp.mailfrom=jacksonfylle@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x231.google.com with SMTP id 77so102506627wrb.1
        for <kurt@seifried.org>; Sun, 09 Jul 2017 04:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=B1/INo82dJTGXlw+vcq4bX6YqXAZtqHrsTtkBBsmi/E=;
        b=GoJqGCbdg/R48n3ym1eLOUwFSoxtJxE0y14qqiiYizgopxzSonpWEO7SopbUT+edKs
         uQT5cj2iaRGcoDCLfoppqeA49DMeTFxJshMkAASzYQWBvfiRtkrXjdO1L5V1ge7xSmbx
         lcV8VpX8ILR04qJ4LMp501cX5ku6feErSUgoBuDmG7maXLFhByP9DE7LP0dEsmhkk4cH
         OE3cGQbff/xuOkT+T1WPSg4qtPiiZbl7C6+PGrsOc5uQb3/xmh/tSXftwCQ6syIzhV7O
         YlgUCHDqg/LuixsYijmQhL3ZA+hwQ5R4F8l3QcyXbrjYXQbK4P8rdaHiXd6SuFbXbBSy
         RJHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=B1/INo82dJTGXlw+vcq4bX6YqXAZtqHrsTtkBBsmi/E=;
        b=CE9uSqMMqHRO1ij+pdsSEV5h9MrI4irAIzH1t+k9QlP4QuhBdIRccw+PCFfIPfHqS5
         FAYTHpWfPnigh7pMVSl4skdftuMk0WnV/9Sk4nuaLzc1kK6QmswgD21oClo3mIExcZ7m
         sGvOsoLX8BCF5Llws0wP6eXyX+EBIY/DgpV/KeXBbPTX6f6vZ73bo7R8TbkQF2q5LVFa
         HdG3s252DjVR16CgB6JVWMuyE51Lj3g5iETyXnC1TrYBNJHUnHy1raE/gqv2NCwOd944
         Mb1ijXB8PdrE8H/1SzFQX5JJlKEdndd/8a629iKTZit6eE8WintgZtWLSUk8rfMCy2Uk
         M17w==
X-Gm-Message-State: AIVw111mkIZLF5F/+9DYNRxta2j+zehxcGsaj5J+CKjvRPymIUyA9h8s
	XOAqA+OnFoC+PsuKFaU=
X-Received: by 10.28.150.139 with SMTP id y133mr4587814wmd.61.1499599934381;
        Sun, 09 Jul 2017 04:32:14 -0700 (PDT)
Return-Path: <jacksonfylle@gmail.com>
Received: from ?IPv6:2a01:e35:8b67:df70:4c08:2c83:1c10:9452? ([2a01:e35:8b67:df70:4c08:2c83:1c10:9452])
        by smtp.gmail.com with ESMTPSA id o6sm7587527wrc.48.2017.07.09.04.32.13
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Jul 2017 04:32:13 -0700 (PDT)
From: Jacksonfylle Dubois <jacksonfylle@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 jacksonfylle@gmail.com
Date: Sun, 9 Jul 2017 13:32:12 +0200
References: <20170709032420.2470.65006@shiny-2.local>
To: kurt@seifried.org
In-Reply-To: <20170709032420.2470.65006@shiny-2.local>
Message-Id: <F4DAC24E-0C28-4EB1-9001-7F7349B16DE6@gmail.com>
X-Mailer: Apple Mail (2.3273)

I accept

> Le 9 juil. 2017 =C3=A0 05:24, kurt@seifried.org a =C3=A9crit :
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
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Term=
sOfUse.md
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org =
manually with your question/concerns/etc.=20
>=20

