Delivered-To: kurt@seifried.org
Received: by 10.31.3.33 with SMTP id 33csp236731vkd;
        Mon, 31 Oct 2016 12:12:56 -0700 (PDT)
X-Received: by 10.129.156.2 with SMTP id t2mr7574145ywg.325.1477941176791;
        Mon, 31 Oct 2016 12:12:56 -0700 (PDT)
Return-Path: <elarlang@gmail.com>
Received: from mail-yw0-x235.google.com (mail-yw0-x235.google.com. [2607:f8b0:4002:c05::235])
        by mx.google.com with ESMTPS id h145si3065838ywc.425.2016.10.31.12.12.56
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Oct 2016 12:12:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of elarlang@gmail.com designates 2607:f8b0:4002:c05::235 as permitted sender) client-ip=2607:f8b0:4002:c05::235;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elarlang@gmail.com designates 2607:f8b0:4002:c05::235 as permitted sender) smtp.mailfrom=elarlang@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x235.google.com with SMTP id l124so12732682ywb.3
        for <kurt@seifried.org>; Mon, 31 Oct 2016 12:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=MaqPVo3iiw80+I/4j+pvUrL0Ml+WJUREn7wJonfBZzw=;
        b=cLubU/KHdTf6XgQ82DYwzuy859QbSLFW7WUu/GZjFo31LXd8EWcY3ZsPdmMwIW5+Fu
         eLChLL8s/y9O/QrP4HbYkcSxr2vYJSggIjH6DZsPHx4dEJUA25RpJ0whBdjzHG40M3oR
         KKcwvHDFQT1cSekbrd9OqA2qA/wNKA4P02KXx9deG0lrLkb8A8ivJvXZT3JF1fipAvUM
         P7lCk1npXUlgJmLsOTGaFDFx5E+C07GHNaMjLG/s2bVXoobXTwC/6r2H+TXpZSehd/RI
         QJnnw37/elSZ1jCTYblRj10+Y4aGwWdH4l+4OgB9yZ7sUi8JvklC0O1/+Uc8dp6fXBA7
         bdUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=MaqPVo3iiw80+I/4j+pvUrL0Ml+WJUREn7wJonfBZzw=;
        b=STNCsJDtYt90ryZyJDKD/UBPVDwTofmn3S3Dxm5CTgqIao7XmpuFra/PTbPQiuKkpE
         TotH5JFMFHZuxdDMQs5kAxTZVONLkzi/ujjsCgHAk4dafAje55mFAy2+kB4oitRxe1+/
         IQpJXtfWhVIEm1IHdWl8KPA8UwNwcN1auSQZYja4WvseCEF3GyHiL6XQNQ/pnGovY2PJ
         4CGCHZBqCFaYxSI/duBEf51iHuvhyOdWxjXswv1ZYc71y4efBXHtUmhQF59t8jygQF0V
         PELoNPjtddCC4n5u4tO2CVHvDMjpfOzsB6YCb/RbaL51fq+eiCefi6pJ72VOMkvNGcs5
         3gxQ==
X-Gm-Message-State: ABUngvfWaBGrj/yRM6fH/5KejwHnfYMB/tG7gFkBTpXbEn4uwUrs1RKnJ2DHtrSMB4rUxNvBwjRlzrxxkReiHQ==
X-Received: by 10.129.162.85 with SMTP id z82mr25076408ywg.289.1477941176470;
 Mon, 31 Oct 2016 12:12:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.217.133 with HTTP; Mon, 31 Oct 2016 12:12:56 -0700 (PDT)
In-Reply-To: <CABqVa3_6oYbsZD7soVdHxdYhTLrHwKcwyUiJHEFeiAGdu7VRTA@mail.gmail.com>
References: <CABqVa3_6oYbsZD7soVdHxdYhTLrHwKcwyUiJHEFeiAGdu7VRTA@mail.gmail.com>
From: Elar Lang <elarlang@gmail.com>
Date: Mon, 31 Oct 2016 21:12:56 +0200
Message-ID: <CAKzwKJ-JRCM02AeE9ivJfiR7codsUdaPJpEBzso7QyvL=9wGeA@mail.gmail.com>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE Assignment
To: Kurt Seifried <kurt@seifried.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I accept
https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Terms=
OfUse.md

Elar

On Mon, Oct 31, 2016 at 8:41 PM, Kurt Seifried <kurt@seifried.org> wrote:
> Hi, I need to confirm that you have accepted the MITRE Terms of Use for
> CVE, available at:
>
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> and quoted below, please reply with "I accept" and I'll be able to proces=
s
> your CVE request. Thanks!
>
> Terms of Use:
>
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md#license
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
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
> <https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Te=
rmsOfUse.md#disclaimers>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
>
> --
> Kurt Seifried
> kurt@seifried.org
