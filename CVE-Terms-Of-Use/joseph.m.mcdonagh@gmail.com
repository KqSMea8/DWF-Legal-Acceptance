Delivered-To: kurt@seifried.org
Received: by 2002:a4f:65c4:0:0:0:0:0 with SMTP id z187-v6csp1197342ivb;
        Wed, 20 Jun 2018 12:49:52 -0700 (PDT)
X-Received: by 2002:a25:8b05:: with SMTP id i5-v6mr11535148ybl.484.1529524192179;
        Wed, 20 Jun 2018 12:49:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1529524192; cv=none;
        d=google.com; s=arc-20160816;
        b=phUQmtS/t3IQwgYxPAOkG7Hf3QdL3qG+bwcsyW+x1HoR60iu1r37GSQYJUSszFj/2+
         Y57bLD5uFrEEFqo+8IDZokDThXVN0pQ8STjDYWxJeM1TG2EtZo9trgltwfAY5hz8uZL3
         S6WgdxhjG0qXgXgpOcHvQG84mbesGbi/cFhAcMHVJOW4dc/pmstvmwL3Bh9ixRrUA+es
         ghxVly/y82SYavkcTlHYhbmE4z+hbIleetpu/qXApvS343mugwhw2qxnpFwh9cZKkulO
         CNwLmGA/eausk/SBQM1R6BrauNURnlNZD0bm95rrI08a+F7CXWl7OObijmKUn1w07YxP
         Y1hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=dw3b+Evt+Mbc4iWmg2ergxd7Bj8JK7text0k5aHZuu8=;
        b=PLEdk8jFBGa8xafiSGMBO4UxdNambeWcg/Jp5aUCcvYnFCuGHDFpHFQ/YbzY6ByxU8
         tenIR+TAHxyudmn6eIR5RbET3NZ8ZhinYhwLymW9sw4TBw8HaCSz4Gl4HLnel7+eGyJA
         31jBK0BlGf+p5EZolDg5ktJs3vP8nQrtuf7H9WA/didYCo+clywOUT1Zg91dnM1Q6KST
         W4z229Q1Qi3rdHYgDdFUmyi5aPa5gnV+MAy0Q8wUyU9vxqlC1/3MK2wV/b8GpWlwYHy3
         JqAUsczAtgrfbk1OdGTPdY9AEOUsBZCEM6pe7zP8IYdNLFkG1lLizIUKjlFF1O5pqBgj
         V90Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gN3LiG0m;
       spf=pass (google.com: domain of joseph.m.mcdonagh@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=joseph.m.mcdonagh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <joseph.m.mcdonagh@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id e62-v6sor755141ybh.157.2018.06.20.12.49.52
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 20 Jun 2018 12:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of joseph.m.mcdonagh@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gN3LiG0m;
       spf=pass (google.com: domain of joseph.m.mcdonagh@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=joseph.m.mcdonagh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=dw3b+Evt+Mbc4iWmg2ergxd7Bj8JK7text0k5aHZuu8=;
        b=gN3LiG0mwTijDU4ScdVYXyPSV5BVoU7gpB2w1B779RPeU9cDOJqKo839Aoru29+o2S
         gxrNW5B/Twx9V6XEl9S0X5c/1++snLi+geFTG1QORK5zQzwSCaPobup7KEfFeROso6zs
         zrdRFmtEza4nTW7+w72JFr3y9EpXsU/VNqITrZF7pD+OhIj75gxCVn0d5KVI/jju/wBt
         7ODD6nL+XHXFNhJClxJLB28EfUMteP3M/w6qrEkkb386Ck0NuVo2eQcv2hmNFkwTP1KI
         3BdatVbyXTTexEZ2tRlue3g+WluPPDUgirPxUSEY4HK04lrVNxUswbFUXFfzRlGQMlnB
         qx7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=dw3b+Evt+Mbc4iWmg2ergxd7Bj8JK7text0k5aHZuu8=;
        b=gZRtZldHiG4ZM4XlJokzCYZLV1r9Gks6ECevk5+lDi2ny9vTXyvoRV9VQpW20WqcED
         NTAdBMykAAUqyOOfJITSlQ6O3URWByQaR0KpsrQpPr6d0zQM9lF6Evv2rcsijyNQocB+
         A3T7DF0DfLqqe4ZW/bIfxrFxPTayaDdoXxejPe7q1U1ugMdYpnxQxOZT1LUqH3RS+nBQ
         D2Zgd3j43FzCd+YRwbOSjqDe9X5HqVanzU2bxAQ3la2bcDl6JwjRjbw+nmsGHBakIYkN
         X3WOT0Bp4gUcDVYvbqdn06KT5yqX0Zd2Kvd9zGCgLIbJFktmS8zHZDb1+r6oAhTgpej4
         ul1g==
X-Gm-Message-State: APt69E1z2fS50jKuqXdrGut/Z6MhQgfb/fMfr/kREgmndpN1VzZKADuu
	LipGcH4Jg35zLLPo3YTmG8q62KjU4Vo3U9ytTYZa/Q==
X-Google-Smtp-Source: ADUXVKLoiF04yeixA9btc0oi2uityPlC3r7fPAO2LIjqN5DJqElw3/a8AK8fHDa/nxqGxxK8uhxUDVNe1mJXsrXzzVM=
X-Received: by 2002:a25:4ac5:: with SMTP id x188-v6mr9168793yba.106.1529524191504;
 Wed, 20 Jun 2018 12:49:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:c0cd:0:0:0:0:0 with HTTP; Wed, 20 Jun 2018 12:49:50
 -0700 (PDT)
Received: by 2002:a25:c0cd:0:0:0:0:0 with HTTP; Wed, 20 Jun 2018 12:49:50
 -0700 (PDT)
In-Reply-To: <20180620194602.10662.48381@shiny-2.local>
References: <20180620194602.10662.48381@shiny-2.local>
From: Joseph McDonagh <joseph.m.mcdonagh@gmail.com>
Date: Wed, 20 Jun 2018 12:49:50 -0700
Message-ID: <CAPXEUdqQ1kv91kfCP_ErgHSZpEujij3YErUON8q6_qtcPXy59Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for joseph.m.mcdonagh@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000001c2cba056f181ac4"

--0000000000001c2cba056f181ac4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

On Jun 20, 2018 12:46 PM, <kurt@seifried.org> wrote:
>
> This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
to the MITRE CVE Terms of Use and we will add a copy of the email to the
DWF MITRE CVE Terms of Use acceptance data at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mast=
er/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when
they were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically
in future (you'll have to manually ask). But again, if you have no idea
what a CVE is then you can ignore this/ask to be added to the block list
with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE=
) and
all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mast=
er/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.
>

--0000000000001c2cba056f181ac4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I accept.</p>
<p dir=3D"ltr">On Jun 20, 2018 12:46 PM, &lt;<a href=3D"mailto:kurt@seifrie=
d.org">kurt@seifried.org</a>&gt; wrote:<br>
&gt;<br>
&gt; This is a confirmation email sent from CVE request form at <a href=3D"=
https://iwantacve.org/">https://iwantacve.org/</a> asking you to accept the=
 MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,=
 we can&#39;t use the data until you accept the MITRE CVE Terms of Use). <b=
r>
&gt;<br>
&gt; Simply quote the email and reply with &quot;I accept&quot; at the top =
if you agree to the MITRE CVE Terms of Use and we will add a copy of the em=
ail to the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https:/=
/github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Term=
s-Of-Use">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance=
/tree/master/Terms-Of-Use</a><br>
&gt;<br>
&gt; The reason we use a complete copy of the email is that it provides an =
artifact showing that the email address accepted the Terms of Use, when the=
y were accepted and so on. <br>
&gt;<br>
&gt; If you did not submit a CVE request to the DWF you can safely ignore t=
his message, however we may resend it at some point in the future, if you d=
on&#39;t want any future emails simply reply with &quot;unsubscribe&quot; o=
r &quot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your=
 email address to the block list so we don&#39;t spam you with these, pleas=
e note that this will prevent you from being able to accept the MITRE CVE T=
erms of Use via the DWF automatically in future (you&#39;ll have to manuall=
y ask). But again, if you have no idea what a CVE is then you can ignore th=
is/ask to be added to the block list with no problems. <br>
&gt;<br>
&gt; MITRE CVE Terms of Use<br>
&gt;<br>
&gt; LICENSE<br>
&gt;<br>
&gt; Submissions: For all materials you submit to the Common Vulnerabilitie=
s and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-ex=
clusive, no-charge, royalty-free, irrevocable copyright license to reproduc=
e, prepare derivative works of, publicly display, publicly perform, sublice=
nse, and distribute such materials and derivative works. Unless required by=
 applicable law or agreed to in writing, you provide such materials on an &=
quot;AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, eithe=
r express or implied, including, without limitation, any warranties or cond=
itions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTIC=
ULAR PURPOSE.<br>
&gt;<br>
&gt; CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy y=
ou make for such purposes is authorized provided that you reproduce MITRE&#=
39;s copyright designation and this license in any such copy.<br>
&gt;<br>
&gt; DISCLAIMERS<br>
&gt;<br>
&gt; ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE =
ARE PROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZ=
ATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION,=
 ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRA=
NTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT T=
HE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLI=
ED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>
&gt;<br>
&gt; A copy is available at <a href=3D"https://github.com/distributedweakne=
ssfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md">https://github.c=
om/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.=
md</a><br>
&gt;<br>
&gt; To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@s=
eifried.org">kurt@seifried.org</a> manually with your question/concerns/etc=
. <br>
&gt;</p>

--0000000000001c2cba056f181ac4--
