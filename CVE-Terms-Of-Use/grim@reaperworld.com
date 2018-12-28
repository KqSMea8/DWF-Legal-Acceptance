Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp228184vkh;
        Wed, 5 Oct 2016 09:45:41 -0700 (PDT)
X-Received: by 10.157.43.11 with SMTP id o11mr6654738otb.58.1475685941906;
        Wed, 05 Oct 2016 09:45:41 -0700 (PDT)
Return-Path: <grim@reaperworld.com>
Received: from mail-oi0-x231.google.com (mail-oi0-x231.google.com. [2607:f8b0:4003:c06::231])
        by mx.google.com with ESMTPS id g5si10227971otb.184.2016.10.05.09.45.41
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 09:45:41 -0700 (PDT)
Received-SPF: permerror (google.com: permanent error in processing during lookup of grim@reaperworld.com: guifications.org not found) client-ip=2607:f8b0:4003:c06::231;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@reaperworld.com;
       spf=permerror (google.com: permanent error in processing during lookup of grim@reaperworld.com: guifications.org not found) smtp.mailfrom=grim@reaperworld.com
Received: by mail-oi0-x231.google.com with SMTP id m72so108960226oik.3
        for <kurt@seifried.org>; Wed, 05 Oct 2016 09:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reaperworld.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=um21ofdZve13n6SWTRA3ZuGhKroXn55u3IGNxQarKyI=;
        b=kJuYyKJd5MjykSNhRusggS6qIn9Zbz0c7o0vzBtePUxEtSUvSmH9lt1LJKvvFkuCJ/
         o/IvzX6Hm/3FTpEMDs6fh7afbeAakQNK1FjbQzWJ8uf3jS0VasSVsW0EE7nuUg4sg+Kn
         e+8hJNVcNBj2y5vd98orx9OkINn+KrdIPH7Vk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=um21ofdZve13n6SWTRA3ZuGhKroXn55u3IGNxQarKyI=;
        b=UhXAfNXriRTejDR5zsr21oBiDoaG7NghgayzwKjl0PMo3L93uAkLQjgT1mhYTzap0G
         BPQpmuaook5PGGhlhudHrZoT/+RwfwKhmQHKvKQvZGIkFhFhOOGmaMOxlqQbk76NoMNq
         9yBiqa/trxaj05T26nae948pFyj1AliiI9KWT2QLogtZCmsAoTThcL0aexr5F1K7C1+A
         aXpe0agsH4dE/ClQQ4ajKYzpYc/8JX6z0OPkAhTSC0RQBZcSGsx5JuVoDHxqdalntrSL
         EKKbX60ppJnzuDps0szEgYij8EoYWDG1SL5z0NkmpvGict8O0+ezxe8mGxVsSx2wksQ9
         2aAQ==
X-Gm-Message-State: AA6/9RllZSMUCqUwFodJ2uzUizWHBBTyJvEh/1HA8V3dCoERJ3d6raBrbiGbcrX27O6Ogce52epyvdbyIdQWaA==
X-Received: by 10.157.42.39 with SMTP id t36mr6087897ota.14.1475685941271;
 Wed, 05 Oct 2016 09:45:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.105.8 with HTTP; Wed, 5 Oct 2016 09:45:40 -0700 (PDT)
X-Originating-IP: [2620:10f:e020:20:9e3d:f25b:efdf:4437]
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Gary Kramlich <grim@reaperworld.com>
Date: Wed, 5 Oct 2016 11:45:40 -0500
Message-ID: <CAGA0GwDwEGBAE5o9CaB8zqDLM68C9O2+HmDb=MG-TiumzyvuSA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept

On Wed, Oct 5, 2016 at 11:41 AM, Kurt Seifried <kurt@seifried.org> wrote:
> Hi, I need to confirm that you have accepted the MITRE Terms of Use for C=
VE,
> available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> and quoted below, please reply with "I accept" and I'll be able to proces=
s
> your CVE request. Thanks!
>
> Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities a=
nd
> Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) =
and all
> CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are
> derivative works of, publicly display, publicly perform, sublicense, and
> distribute such materials and derivative works. Unless required by
> applicable law or agreed to in writing, you provide such materials on an =
"AS
> IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express o=
r
> implied, including, without limitation, any warranties or conditions of
> TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR
> PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce, prep=
are
> derivative works of, publicly display, publicly perform, sublicense, and
> distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you=
 make
> for such purposes is authorized provided that you reproduce MITRE's
> copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIE=
S
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
>
> --
> Kurt Seifried
> kurt@seifried.org



--=20
Thanks,

--
Gary Kramlich <grim@reaperworld.com>
