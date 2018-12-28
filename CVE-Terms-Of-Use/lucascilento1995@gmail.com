Delivered-To: kurt@seifried.org
Received: by 10.79.202.129 with SMTP id n1csp1528286ivl;
        Thu, 5 Apr 2018 11:26:57 -0700 (PDT)
X-Received: by 2002:aca:5d46:: with SMTP id r67-v6mr8853748oib.257.1522952817026;
        Thu, 05 Apr 2018 11:26:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522952816; cv=none;
        d=google.com; s=arc-20160816;
        b=tAtXSbzbtZ3oPgsDRRyamXvP+f9dRUhzXpoK3ku2zdnLP5hhO9xzA6jZqhtEbC6mek
         2HacsvFxUkayvEUsv2ew3wf51gHtpK4KY1Eg8RQSYhRJtYdOuooMqxj5ZdxeITGGGNyM
         FMZzkcLfHaD7bwYorj/U9T7Q3CS9u2juMv/cMLi64SnaIfsU8oCrIebEvRnlGaLmibeM
         Vpt4X0ZivAZ4U847rrgawHzYMqCDnEGo+qzoVDfV16I6hnaLKUQrOuyoibKJho0IYch8
         BFBhsrR2TGsDwNTuof294G9x3ozWBAzMI1vkEuEtCbj6NtmxbCrGDY8KWr2I8Qupp3fd
         A7dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=eHYmwYf6f9JF/p6oSUw354O7qKFh/V6b2xVtbWF5p+8=;
        b=V2OPEg+Eh1y1MFzSd+hv+1yCrFvvRtM24fwiFScweQyE6bRjrFyCMJYwUxZo2lg6PZ
         TQB5nXyF9CbWxdeB7IVIe1RROisR61MlUycejUwW6VM8a0qpgTFHEdihxxEU3msv7I56
         9+cdAPoF70QMKz7hKHAN7JdiorhhQD21Pl/H9fyYG6c8HPFdEW5Nc8IudUiQsvIBOzvy
         Pf1q0+I1tTxYEtXofugBsG9yOqlP0TfCDugGM5XOiSs6h99jBSVJSfIi8fChqRV6JENI
         VeKSDQWZ0Mc6vyk8xOh/DaMdNoCyjrIZ2u+BsFFZCWs3Yz+KYNmx5H53Ohv6pvGG9DQs
         drRA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=krbQyYir;
       spf=pass (google.com: domain of lucascilento1995@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=lucascilento1995@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <lucascilento1995@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 24-v6sor3468630oin.245.2018.04.05.11.26.56
        for <kurt@seifried.org>
        (Google Transport Security);
        Thu, 05 Apr 2018 11:26:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lucascilento1995@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=krbQyYir;
       spf=pass (google.com: domain of lucascilento1995@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=lucascilento1995@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=eHYmwYf6f9JF/p6oSUw354O7qKFh/V6b2xVtbWF5p+8=;
        b=krbQyYirVo4Ua+BBkN6K+iF5tejhAQD4+YpYme5t2fge8MM157asUm51nJsGEOqYTc
         wvuGzWkrvOrQUl9tFtELhgefcGbDYoFj38EDsLp2x5yjap6BVM5fgrRng869opzk4ehf
         xkvRH3OlWIMUh3AH5S/9jNNop0XqnE7LYeEdAFvaJH8fG/uN9FJYtvQDwlC6rE9tqUSk
         EHWjsoa5XdgYeH2Cnk+oPKPUNUQvjVuP79pwCfE2FMqHhV0XtSeGbGa6WEUOkaQrvKL8
         stiQdoHmKBGGpi0WAzfELxZ/SO6awK0jrprIYPpmdqpSX7dFLvWaVLHJfRpSeyZLvKVK
         JkFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=eHYmwYf6f9JF/p6oSUw354O7qKFh/V6b2xVtbWF5p+8=;
        b=OW4WAxTCZyhY8Go3+N1fJuLUS6/UZ/fWw5v4hKnucIFn3YL7Jvu6WStGSoNNA9Byee
         KN0cGx1ntdTWGI9mu0P3nFHRYTeGfHJbVMY9r7AqAOnTIeJCdGNK3qlGq0paVUjMfecr
         9OPAXaV4fkkdwCx60/7vZEW1Rpu6GcppRCABUzvoEKRDAUybxIj3ZaC7CdS44y75r7kp
         x1jTS/nV6YmPCX7d+JHpe5t1lrP1ThqO9qe1deBKsRXsFQnyl2uF6gbbpxwB8WYfnPdn
         IZpzktUm2G+mopmaMh9cQsVWo9LBkWMOyT2G2+ux9WlHh1z6WfzMv7/qmZ8gEbGZM+cd
         GHgA==
X-Gm-Message-State: ALQs6tCKw2fOMZEogvsJlLHt2d0Ho8OAVi3lX2cCQ1HZiL1AONNUDvr1
	fZukV+wZfW2mzRleguM7nDWYs+S7ibGCxmoDIXiRkQ==
X-Google-Smtp-Source: AIpwx49azwjMkvj1hARq2KOEDHWuN4kIacJzetcRtL372Pu7MqYDcVxnNJYdHsVSxhg9udnohJDzBhOMOpynaBoJZD0=
X-Received: by 2002:aca:4d0a:: with SMTP id a10-v6mr12525659oib.160.1522952816596;
 Thu, 05 Apr 2018 11:26:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.7.73 with HTTP; Thu, 5 Apr 2018 11:26:56 -0700 (PDT)
In-Reply-To: <20180405090720.26722.6101@slab.local>
References: <20180405090720.26722.6101@slab.local>
From: lucas cilento <lucascilento1995@gmail.com>
Date: Thu, 5 Apr 2018 15:26:56 -0300
Message-ID: <CAH3vefhic1HYTG4d68GF7=haHrEtfTanZRW-a9W14CBRk+Ukwg@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for lucascilento1995@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="000000000000a49c5805691e158b"

--000000000000a49c5805691e158b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> I accept
>
> 2018-04-05 6:07 GMT-03:00 <kurt@seifried.org>:
>
>> This is a confirmation email sent from CVE request form at
>> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
>> (assuming you filled out the CVE form and want one, we can't use the dat=
a
>> until you accept the MITRE CVE Terms of Use).
>>
>> Simply quote the email and reply with "I accept" at the top if you agree
>> to the MITRE CVE Terms of Use and we will add a copy of the email to the
>> DWF MITRE CVE Terms of Use acceptance data at https://github.com/
>> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>>
>> The reason we use a complete copy of the email is that it provides an
>> artifact showing that the email address accepted the Terms of Use, when
>> they were accepted and so on.
>>
>> If you did not submit a CVE request to the DWF you can safely ignore thi=
s
>> message, however we may resend it at some point in the future, if you do=
n't
>> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
>> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list=
 so
>> we don't spam you with these, please note that this will prevent you fro=
m
>> being able to accept the MITRE CVE Terms of Use via the DWF automaticall=
y
>> in future (you'll have to manually ask). But again, if you have no idea
>> what a CVE is then you can ignore this/ask to be added to the block list
>> with no problems.
>>
>> MITRE CVE Terms of Use
>>
>> LICENSE
>>
>> Submissions: For all materials you submit to the Common Vulnerabilities
>> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MI=
TRE) and
>> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve,
>> no-charge, royalty-free, irrevocable copyright license to reproduce,
>> prepare derivative works of, publicly display, publicly perform,
>> sublicense, and distribute such materials and derivative works. Unless
>> required by applicable law or agreed to in writing, you provide such
>> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
>> KIND, either express or implied, including, without limitation, any
>> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
>> FITNESS FOR A PARTICULAR PURPOSE.
>>
>> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive=
,
>> no-charge, royalty-free, irrevocable copyright license to reproduce,
>> prepare derivative works of, publicly display, publicly perform,
>> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
>> copy you make for such purposes is authorized provided that you reproduc=
e
>> MITRE's copyright designation and this license in any such copy.
>>
>> DISCLAIMERS
>>
>> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE AR=
E
>> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SH=
E
>> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD=
 OF
>> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPR=
ESS
>> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF TH=
E
>> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTI=
ES
>> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>>
>> A copy is available at https://github.com/distributedweaknessfiling/DWF-
>> Legal-Acceptance/blob/master/Terms-Of-Use.md
>>
>> To contact the DWF either hit reply, or email kurt@seifried.org manually
>> with your question/concerns/etc.
>>
>>
>

--000000000000a49c5805691e158b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
I accept

<br><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-04-05 6:=
07 GMT-03:00  <span dir=3D"ltr">&lt;<a href=3D"mailto:kurt@seifried.org" ta=
rget=3D"_blank">kurt@seifried.org</a>&gt;</span>:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">This is a confirmation email sent from CVE request form at <a href=
=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank">https://iw=
antacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assuming =
you filled out the CVE form and want one, we can&#39;t use the data until y=
ou accept the MITRE CVE Terms of Use).<br>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>distribut=
edweaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a=
><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br>
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
ing/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>=
Legal-Acceptance/blob/master/<wbr>Terms-Of-Use.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></blockquote>












</div>

--000000000000a49c5805691e158b--
