Delivered-To: kurt@seifried.org
Received: by 10.176.82.15 with SMTP id i15csp844142uaa;
        Thu, 6 Apr 2017 13:04:46 -0700 (PDT)
X-Received: by 10.98.103.146 with SMTP id t18mr37553972pfj.135.1491509086206;
        Thu, 06 Apr 2017 13:04:46 -0700 (PDT)
Return-Path: <summermontreal@gmail.com>
Received: from mail-pg0-x233.google.com (mail-pg0-x233.google.com. [2607:f8b0:400e:c05::233])
        by mx.google.com with ESMTPS id m37si2585601pla.232.2017.04.06.13.04.46
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 13:04:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of summermontreal@gmail.com designates 2607:f8b0:400e:c05::233 as permitted sender) client-ip=2607:f8b0:400e:c05::233;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of summermontreal@gmail.com designates 2607:f8b0:400e:c05::233 as permitted sender) smtp.mailfrom=summermontreal@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x233.google.com with SMTP id 81so45134237pgh.2
        for <kurt@seifried.org>; Thu, 06 Apr 2017 13:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=RJMHbNvTAUxschAs33yFzAQGZWmi4ALOjIH6OfW2pH8=;
        b=P8B5mP+ihs/3WhPVlctIs50kVagMqS8AF8BFmYO412FYB//6/HNaeHBpcUdi/t8pK0
         LhrYMvb+HrlA9uuJhrb4cTMuUqrbofefrf0I+WQbZYRH7IpGB90DYIVmvhbB0U6fdIuf
         WU/R9yFK1D/3dAeAaeKt09VgfQr5aEKytxZpv/HShgD1EOElkF/1RWEmA4GFmdloK/JV
         QK7gMwzCRERjIymYY6mGUWthLggim1S63/Nlu7x6srapxWZ7zB3Bw97oTpnsNiJcUdzX
         xmmzpdlnU6Xi5Myv8KdKHx2pEfV1T/y87keNHTeXn7pxvJw1I3AMW+8rUpM9M9gKgAAW
         uSIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=RJMHbNvTAUxschAs33yFzAQGZWmi4ALOjIH6OfW2pH8=;
        b=SPSv8uyJaLhGfAmS/90fJYAD6kLnAUYPom8bwTv3MAu0Wf9ZAoCUE0poGA5bQ22hOu
         5GDdn6jXTHt2wRykscgbyJQXiXH1B8ayXoDb+Dszph2o8Db9pjf+z+cJXGTR6oAF1LL8
         pRUFW2gJMMdI3o1654MbhA7viV22GayHXlIegCK1uTUkg+XrIMP9gByohxbS0hRJtI08
         tMHDaQX2Urbrn5IWDRE9d9BhxQ51Df/tF3SG42SPrPPHMkECvciqTsPp16xGZrf8gGBx
         yd9T9iZcQdbQqHlOn5yc7ww6hMyC8KJLNqrTn7Ks4ajZggltfAOuMDA00X4uAXlY97wZ
         Pbiw==
X-Gm-Message-State: AFeK/H2tREQyfGljTQoXNicBEUxN1OKeHjkUjPXPv4KivouoCH8iIzA+HCJxvUKfXDpnFJbkF/D1DnhpPFi5vg==
X-Received: by 10.84.204.8 with SMTP id a8mr44965829ple.4.1491509085749; Thu,
 06 Apr 2017 13:04:45 -0700 (PDT)
MIME-Version: 1.0
References: <20170406200009.4090.95122@shiny-2.local>
In-Reply-To: <20170406200009.4090.95122@shiny-2.local>
From: Chaoyi Zha <summermontreal@gmail.com>
Date: Thu, 06 Apr 2017 20:04:34 +0000
Message-ID: <CACQBSGMDK3091Z_62w2tQLHi64phmRbDjeL261JtU7_nOgA13Q@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for me@cydrobolt.com
To: kurt@seifried.org, me@cydrobolt.com
Content-Type: multipart/alternative; boundary=94eb2c14896c3c4964054c85050c

--94eb2c14896c3c4964054c85050c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I accept.

On Thu, Apr 6, 2017, 4:00 PM <kurt@seifried.org> wrote:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add it to the DWF MITRE CVE Ter=
ms
> of Use acceptance data at
> https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use
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
> https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Ter=
msOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--94eb2c14896c3c4964054c85050c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I accept. </p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Apr 6, 2017, 4:00 P=
M  &lt;<a href=3D"mailto:kurt@seifried.org">kurt@seifried.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sent=
 from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"norefer=
rer" class=3D"gmail_msg" target=3D"_blank">https://iwantacve.org/</a> askin=
g you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE=
 form and want one, we can&#39;t use the data until you accept the MITRE CV=
E Terms of Use).<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add it to the DWF MITRE C=
VE Terms of Use acceptance data at <a href=3D"https://github.com/distribute=
dweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use" rel=3D"noref=
errer" class=3D"gmail_msg" target=3D"_blank">https://github.com/distributed=
weaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br class=
=3D"gmail_msg">
<br class=3D"gmail_msg">
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
MITRE CVE Terms of Use<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
LICENSE<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
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
PURPOSE.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br class=3D"gmail_=
msg">
<br class=3D"gmail_msg">
DISCLAIMERS<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br class=
=3D"gmail_msg">
<br class=3D"gmail_msg">
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" class=3D"gma=
il_msg" target=3D"_blank">https://github.com/distributedweaknessfiling/DWF-=
Database/blob/master/TermsOfUse.md</a><br class=3D"gmail_msg">
<br class=3D"gmail_msg">
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org" class=3D"gmail_msg" target=3D"_blank">kurt@seifried.org</a> manuall=
y with your question/concerns/etc.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
</blockquote></div>

--94eb2c14896c3c4964054c85050c--
