Delivered-To: kurt@seifried.org
Received: by 10.176.3.232 with SMTP id 95csp2182707uau;
        Sun, 9 Jul 2017 02:30:03 -0700 (PDT)
X-Received: by 10.28.32.70 with SMTP id g67mr4296044wmg.101.1499592603663;
        Sun, 09 Jul 2017 02:30:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1499592603; cv=none;
        d=google.com; s=arc-20160816;
        b=LJixLRPWEvAiscZsszeTfGvRiIJbKvHbc6ctoEstvWZY5/6l2wyfme4HKVDSKqbaDn
         txSLnGDoK5NtqaJA98KSOcsWjdma63Q2KfEVwYEsFonTuXwTGcBbsbwbU/NNVQoJKIFx
         sFPYMkqMDh6NEXESBYsmv3vh4KV6j3BC2oMF2Ne/1Sm7QrffrYWF6s9hn5eKshWduiWY
         T3IqP4nF2A8O/GDMv7nMlEDmQPzP+Yqvu9HyXV5ePFQqYHjyjUFIPO8E3X6y9X06PRa3
         r+eiIKoiH2GY7MnMpFy4OGpnIH7k8Y5GA+yhcZXZZhMJeaon//pZ+Xl+M7J/K1y06RUm
         OsHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=cQ6MJtNklJvHlmN9RLVZ6F/dhCi80DW5hGq7DeNzlUg=;
        b=u8zetpa9msbe1affh4yIabQcbpYntdxqGYsjQS3BLe7kF8yShnp2+ai+KyfVdGslCR
         rXWRiFewDiMiyfLQDyvpoxkSjAY8eSmjs4EJWmyF5A65JW21vbR2HgncyAQLhVRAjSlJ
         ikRFMh5+HyP2tguYXoghJaAwB4Om8iBasIZXIvmDvxTnnYI43hc46fczRB05KjJi9ghp
         GtwCPMQqOfdUmVB79uIttgBhzuEGAQfENBp3Wev0JtIkeWyRkomVWBdrOSYwB/KoNnvn
         xLtjG8dHWaXpcFwtmV4c+PyTVKMSB6UQlsGu7+tHx3MYRLkC5rPKO8K0Q6V1rgwxK9Gb
         EgCA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@enalean-com.20150623.gappssmtp.com header.b=tX3Vs0B9;
       spf=pass (google.com: domain of thomas.gerbet@enalean.com designates 2a00:1450:400c:c0c::229 as permitted sender) smtp.mailfrom=thomas.gerbet@enalean.com
Return-Path: <thomas.gerbet@enalean.com>
Received: from mail-wr0-x229.google.com (mail-wr0-x229.google.com. [2a00:1450:400c:c0c::229])
        by mx.google.com with ESMTPS id k129si3698953wmf.136.2017.07.09.02.30.03
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Jul 2017 02:30:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of thomas.gerbet@enalean.com designates 2a00:1450:400c:c0c::229 as permitted sender) client-ip=2a00:1450:400c:c0c::229;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@enalean-com.20150623.gappssmtp.com header.b=tX3Vs0B9;
       spf=pass (google.com: domain of thomas.gerbet@enalean.com designates 2a00:1450:400c:c0c::229 as permitted sender) smtp.mailfrom=thomas.gerbet@enalean.com
Received: by mail-wr0-x229.google.com with SMTP id k67so100005287wrc.2
        for <kurt@seifried.org>; Sun, 09 Jul 2017 02:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=enalean-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=cQ6MJtNklJvHlmN9RLVZ6F/dhCi80DW5hGq7DeNzlUg=;
        b=tX3Vs0B93KC2gBmutxnkwrjzQ8OiH+RQoZjS93h/tZAeLKJmbdoGfPDXjIcSsvHE39
         O34glIQjtRQd+IXy7qE4yLkQTFled3tZrEB+DO65LbJYiXuORAIhahGR6vhV9cswoUI6
         R/nsvG7q4O7Ju243656t53nsKaDEg5AmKQP6sdqUTDKlIue9ZY9+7bDv0gCYCtHQWmGs
         rpBsX3TwlCQHEbZjT8ZA1lFNabgxVWH7UWqVvpOghj7UnTRRv8sHF6Ej1S2Lw6hvhnxg
         jVFrRuCJKEjp+N2MYXs3UwAfu1NosIChAQp9Oc9bCcsb+r9zBlGlHDI9Ay9ZohDwsQN3
         272g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=cQ6MJtNklJvHlmN9RLVZ6F/dhCi80DW5hGq7DeNzlUg=;
        b=nu58ni0eFhCDQZVHgj2x8zou9y83/Tyu5cnWysmxeCbojN/Syf0hjDb+h6Wu+NuP9s
         GdB4WhYJorEASeIO9DlCah6XkkoRnM5fd7VmMhgPFToDsZ0ZcBrIQa3T48V1tU6bobUU
         t48S7leutfVie1cVV0+A6hp+Uak8nFwpmCGJmNSrRhHSHmVEuSJ4xX24RuQ4ictxKYoD
         pcGGr4sc+Xi8NfroT40n/oOiL7Ybz37ZBw4zh+6ENs26G9bYe+vT+mYBjEM6VwcpNivg
         kKsq1RR6wN6gox+WloN+x1pBad+u5siYF9TPPaTGeI2j4iLltaM+ttsbF+dLEQxiJJ4t
         SZJA==
X-Gm-Message-State: AIVw111AADQl9Ly4hu2IwLpJKy8ICmdEgoaV74n+TdqkWPuOclX12Er6
	H/W5Wv489NOVq02i52dWjiK8Htji+5QFMDE=
X-Received: by 10.223.161.149 with SMTP id u21mr5232922wru.70.1499592602998;
 Sun, 09 Jul 2017 02:30:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.5.11 with HTTP; Sun, 9 Jul 2017 02:30:01 -0700 (PDT)
Received: by 10.28.5.11 with HTTP; Sun, 9 Jul 2017 02:30:01 -0700 (PDT)
In-Reply-To: <20170709032104.2470.34313@shiny-2.local>
References: <20170709032104.2470.34313@shiny-2.local>
From: Thomas Gerbet <thomas.gerbet@enalean.com>
Date: Sun, 9 Jul 2017 11:30:01 +0200
Message-ID: <CA+XZgEBAcqrio0Veta+-iQ2pJ+Z1vP68jbZoeKByO=xZbvM3-g@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for thomas.gerbet@enalean.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="f403045f17ee68f6b70553df1c1b"

--f403045f17ee68f6b70553df1c1b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept.

Le 9 juil. 2017 05:21, <kurt@seifried.org> a =C3=A9crit :

This is a confirmation email sent from CVE request form at
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
(assuming you filled out the CVE form and want one, we can't use the data
until you accept the MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to
the MITRE CVE Terms of Use and we will add a copy of the email to the DWF
MITRE CVE Terms of Use acceptance data at https://github.com/
distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an
artifact showing that the email address accepted the Terms of Use, when
they were accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this
message, however we may resend it at some point in the future, if you don't
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so
we don't spam you with these, please note that this will prevent you from
being able to accept the MITRE CVE Terms of Use via the DWF automatically
in future (you'll have to manually ask). But again, if you have no idea
what a CVE is then you can ignore this/ask to be added to the block list
with no problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and
Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) an=
d all
CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute such materials and derivative works. Unless
required by applicable law or agreed to in writing, you provide such
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied, including, without limitation, any
warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
no-charge, royalty-free, irrevocable copyright license to reproduce,
prepare derivative works of, publicly display, publicly perform,
sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=AE)=
. Any
copy you make for such purposes is authorized provided that you reproduce
MITRE's copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF
TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at https://github.com/distributedweaknessfiling/DWF-
Database/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.

--f403045f17ee68f6b70553df1c1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept.<br><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">Le=C2=A09 juil. 2017 05:21,  &lt;<a href=3D"mailto:kurt@=
seifried.org">kurt@seifried.org</a>&gt; a =C3=A9crit=C2=A0:<br type=3D"attr=
ibution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">This is a confirmation email sent from CV=
E request form at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" tar=
get=3D"_blank">https://iwantacve.org/</a> asking you to accept the MITRE CV=
E Terms of Use (assuming you filled out the CVE form and want one, we can&#=
39;t use the data until you accept the MITRE CVE Terms of Use).<br>
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
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div></div></div>

--f403045f17ee68f6b70553df1c1b--
