Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp72595vkh;
        Thu, 6 Oct 2016 13:11:40 -0700 (PDT)
X-Received: by 10.200.44.53 with SMTP id d50mr15461946qta.27.1475784700970;
        Thu, 06 Oct 2016 13:11:40 -0700 (PDT)
Return-Path: <mikeycgto@gmail.com>
Received: from mail-qk0-x232.google.com (mail-qk0-x232.google.com. [2607:f8b0:400d:c09::232])
        by mx.google.com with ESMTPS id t28si8596210qkl.108.2016.10.06.13.11.40
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 13:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of mikeycgto@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) client-ip=2607:f8b0:400d:c09::232;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mikeycgto@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) smtp.mailfrom=mikeycgto@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x232.google.com with SMTP id z190so13551770qkc.2
        for <kurt@seifried.org>; Thu, 06 Oct 2016 13:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=JBzODzxa75/hW4Ion7Dpt+Hd+AE6gL0FauOTJ1rtB7o=;
        b=qgG/DSvjLl/ZELl5FhhWH1JaE1St4y9tEoShkcGt3yAjjbAKdFtrJIfD8UP+JzWpdG
         673SD5Ex8GeWfslDHMX1IS+VrFwMFhcRhRXzGPJAVjhdr6p5ZbXR7T1vQoWoqgQM542P
         1pADOuIuN2x2q+pxXER49d1ez/5FC0E1pwPhvBtvGbB1pOT1dTocOY2l/0ooKETQSGL8
         d+glOM6N7y+8Rh6AZwYi76OUY5TtZ8PhU9tiAxZTxwdjabKHFUi32B9yWkfZvnTv2kf0
         MjBTrTErOglpIb949HT/v6NN/Rb13St11wuD90VtzRVaydADx2vN8xzao89c88OZOX3k
         P5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=JBzODzxa75/hW4Ion7Dpt+Hd+AE6gL0FauOTJ1rtB7o=;
        b=Z++A+7d7O+e4FcM67YJqtvlGal6f+GHDgxW6jqHwIpyJNlBdFktIR05OE+566B96n1
         1/I4Y3s7Ri0CuzdI9tJxpdNDmnwfSeTXHKFElpzgm8yFTX3GiwemEvK/5sLdWRVhWU8S
         AGmUsdw5s8wR5MFr5JvzdYgOqzQKJsvsn2mdVuG6BSXL80g9gs8FN+VZiDOVW6sDFugU
         VxjhXK/WZRdwTthrXZ+HgDSEA1oXuHy1PyhuQl+uWwdp/hNEqiPlUAF3lbRKADdk58Vk
         PgLHoMoZT5M0CSiuO67/Ni5IICQBQ6e/uiQEwDj68z9nM7jqTExTSO+4RPvxuqSROZTm
         +Ecw==
X-Gm-Message-State: AA6/9Rnydq+ZF40uNNDCZ1FVlQTxFtDSuDj8GBhd5HQGDnr5Nnx4UTJRi6zxiPIl9q/RYRLxBCDELwdCQjhpfg==
X-Received: by 10.55.116.134 with SMTP id p128mr16010775qkc.38.1475784700578;
 Thu, 06 Oct 2016 13:11:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.33.69 with HTTP; Thu, 6 Oct 2016 13:11:40 -0700 (PDT)
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
From: Michael Coyne <mikeycgto@gmail.com>
Date: Thu, 6 Oct 2016 16:11:40 -0400
Message-ID: <CAE-USMcyNsy4Nj4HUVhcTxsPF1Cc2-dyS0aa6xhNc39Je6CKCA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
To: Kurt Seifried <kurt@seifried.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

PS: I think we use to work together at iSIGHT on the VRT. Hope all is well!

On Wed, Oct 5, 2016 at 12:41 PM, Kurt Seifried <kurt@seifried.org> wrote:
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
http://about.michaeljcoyne.me
