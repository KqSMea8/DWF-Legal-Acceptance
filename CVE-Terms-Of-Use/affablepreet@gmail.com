Delivered-To: kurt@seifried.org
Received: by 2002:a4f:b47:0:0:0:0:0 with SMTP id 68-v6csp2723222ivl;
        Sun, 3 Jun 2018 01:01:14 -0700 (PDT)
X-Received: by 2002:a0c:d442:: with SMTP id r2-v6mr16311180qvh.77.1528012874436;
        Sun, 03 Jun 2018 01:01:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1528012874; cv=none;
        d=google.com; s=arc-20160816;
        b=aHclxqO4T8XSL+LiSMuNH2xdIExqM1i9oseQuHgXDnODzJHKv7RsNnb/23UP672moI
         7BVb5T5Ud6EA7bQxnD6MEGFr8dC91IVqC7u83wqjXsoJBGtz4K08rVxu0xMmfayUCe7g
         NH1ChtlZQSfnfeBjzmzs2P9fnP8gWWhmfSnVt6To+c6iaAzwaCMkS5r69kiNLjLFyoI3
         P5hKjNia1CkPucbTew5mPi1DU1V0y+UHNMrQWyh9P9ejXMgKOTfr26qs9hN6arHj0a+P
         2odwEbu/kGuUpBYJc2ro29EJh1rIRUtroZNGeBG3AOYifjvwF7li+f1SbYqEH6hivj37
         kZ4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature:arc-authentication-results;
        bh=UsSjb7zJN3ckH5i9wib5HHhxVW/m3Omg4IsJrT2cljs=;
        b=xVCMnrbpoGHHP0ZQVoT3cZ/rsWUVCcyZ377CRp91nLNaD5sUqqm9JCsOQ3qTjjXBVA
         yFIPFCZczdSkWbZqMe8T8qQkaUu0IXkjwXClqkuIZHfhoZG+6hQJmw9ufifkXRbt5Dp6
         7wiBAm4MQl3iutxDY/Dhg8s4OI4fOnXmW44rmTUM0x67FnfdqH1MscmcdEfiEZQq7kAD
         YT6N0CGBUqbR1f3PqhjZzHFTWcmYhfDiEW9J5Cf6OkEoiu7BRugNcgoq7szK2jvM6x/i
         GXvyNY2f9d+VGcXr86cPSymXCW0UFLiQP6pBbl4gCjjJdrSjt0BjPKTg791TWmOCBVF3
         q/EA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SS3utH7z;
       spf=pass (google.com: domain of affablepreet@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=affablepreet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <affablepreet@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id y26-v6sor7502046qkj.59.2018.06.03.01.01.14
        for <kurt@seifried.org>
        (Google Transport Security);
        Sun, 03 Jun 2018 01:01:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of affablepreet@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SS3utH7z;
       spf=pass (google.com: domain of affablepreet@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=affablepreet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=UsSjb7zJN3ckH5i9wib5HHhxVW/m3Omg4IsJrT2cljs=;
        b=SS3utH7zUFWfcnOQi+dtoAo9+Af6INeZ5wNMsrDpx3A2AvgPifq7VLxfByAu+iL+0p
         of26TqfWWNcAo8XEO6adpyzbFOTgyQbafjL7OHS4xXHOhnxUMZQWtZTXbQiLwl8Vpzwn
         meifH1a/cnT/3YAT4XLQdpqGslMiaMv4o16QUA4hYGek4bf8S8BTCSHxIM5SD0f4lFGs
         q6qXMartntcgfRWJTyY0jwf640WCFeNjr98cFsPKL42rvWR4DTWFM1CA7+TVM7SPG8oK
         7iAx2bDkwk5Jpz/BXGVZEaLyE9geggPgDI2SCJfIDUOXb+3vTAswciQbL83/CIXdHP6b
         4R+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=UsSjb7zJN3ckH5i9wib5HHhxVW/m3Omg4IsJrT2cljs=;
        b=AuDph021+NnTVOHcv1kKVUJ7QRN2Qb//1qB0KO0Tf+DK7u83g9Pz6+6toHZ75Hlinm
         3iC6JqLZ96Bo3NA1KK89NmGjahaLs/dsxEuJZptv+Pzb41vcUUZaYW7E+tKMHCTicje/
         83iVJm7kqSgBh8Cx8/DPWkF5GC1c8EkQi41JHtTbWIy9A8vyOqcFVG8rErXeLnqoz/Wx
         adThchIFwA5BosE6hrreP4KzK/F2Nks9y/33W7DD3izH/STlRggYxacqsnqV7K8qz39K
         PZcC3fnWBfDtAgiMy4FzrVrlBMFU31F2bF4L6aZezbKJkhRMl33LhN3V393GG9BXQzak
         gpXA==
X-Gm-Message-State: APt69E10OEG7Xd5w2sz/TA+Y2EAMN+fHfjg+NgibGro/+MWG4Aj1t/S0
	av3qdisof1aNGbACj1xFCb9a9M6koamTcg1GR8Q=
X-Google-Smtp-Source: ADUXVKI/aysvUlak2tClom4qyDexsbIKijdenCeCz4srRRdCDQaNwVbAbkPjfX273V3BYxmoGrxLbtMYsQ9YlgwYaPI=
X-Received: by 2002:a37:6e05:: with SMTP id j5-v6mr14915427qkc.51.1528012873878;
 Sun, 03 Jun 2018 01:01:13 -0700 (PDT)
MIME-Version: 1.0
References: <20171021205946.19234.37471@shiny-2.local>
In-Reply-To: <20171021205946.19234.37471@shiny-2.local>
From: Gurpreet Ubhi <affablepreet@gmail.com>
Date: Sun, 3 Jun 2018 13:56:12 +0530
Message-ID: <CACBj7SEkh5dUXC3OgWB6hHC=ZkUXWTVUJ89srYs+33ngbpxEVQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for affablepreet@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="0000000000008f531c056db8380f"

--0000000000008f531c056db8380f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i accept


On Sun, 22 Oct 2017, 02:29 , <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>
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
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
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
> A copy is available at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--0000000000008f531c056db8380f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">i accept<div dir=3D"auto"><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Sun, 22 Oct 2017, 02:29 , &lt;<a href=
=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">This is a confirmation email sent from CVE requ=
est form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer noreferrer=
" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the MIT=
RE CVE Terms of Use (assuming you filled out the CVE form and want one, we =
can&#39;t use the data until you accept the MITRE CVE Terms of Use). <br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/dis=
tributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br=
>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on. <br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems. <br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute such materials and derivative works. Unless required by appl=
icable law or agreed to in writing, you provide such materials on an &quot;=
AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either exp=
ress or implied, including, without limitation, any warranties or condition=
s of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF=
-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" target=3D"_blank" rel=3D"noreferrer">kurt@seifried.org</a> manually=
 with your question/concerns/etc. <br>
<br>
</blockquote></div>

--0000000000008f531c056db8380f--
