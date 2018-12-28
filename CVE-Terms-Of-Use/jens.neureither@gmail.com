Delivered-To: kurt@seifried.org
Received: by 10.79.67.129 with SMTP id q123csp2726864iva;
        Wed, 10 Jan 2018 11:15:19 -0800 (PST)
X-Received: by 10.157.85.1 with SMTP id l1mr10453343oth.276.1515611719109;
        Wed, 10 Jan 2018 11:15:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1515611719; cv=none;
        d=google.com; s=arc-20160816;
        b=oHbtXZQ725b98jUo+w3GwL4WSXpJSE9fSH8AN/X8Xa3ygsJEvzn4hwRAXWHEDKImIj
         Z/08xiFkyhZtu2PNQNtoPCZNH6GLFvSW8lrhGSwnXRAE6llAaB7APhJ6jSN4rWFKO52U
         VpOI7HFEjwBg12K51aOh83bjShEvLdwE1CJRMR24AXoaF5o+hsQ7XoJtD7uqkyp/uC6J
         1/A3MHPPYbSA/sh3m9mcrJUs2pPPaGXaQpgEkCPfUocCTeXlUK5xj0vDW3JcqTmSMuwR
         tIl9zZcgwknazS87t+0bwlR4xQT3QFEUH4AeWPI13JeeVzHqUPc4Xit4rYDEgJ04WLPd
         oj2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=W8tfoNZk083ZOL8GF2erQXeIU5CvOKemS7Nou8QBRUU=;
        b=wyQON9BwyhbKEGYI7ryHJ5tbsNELkTCYYyYor4HJOPwbwFLMAzKpvptHvp7xxegA/F
         ae59ZJ4TgL+vEEIFA8QDKQgju72L9STlF/TWzt63J77GvN3+T6J9Dv9LeXerR9nNZcj6
         djtkS2TUBAE34U0lvVSZpDt9j7j+SKHQxCEbgfzFhgZyCX9zO3TIvhquovLbxAf8MkYI
         E9yK9CH/FPc0k5fEgg/ikKrPggr76rhZR6hVcZ6ssjvGCDzdG0l+XZXiWr16M0QKxGr1
         WumIyMP8FRrF8o39zV1L/sObmG/PghhxVPsK6MBx/J6xVleF49lGzpEyXIOXoQB9uOjr
         pkpg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j1QHCT2t;
       spf=pass (google.com: domain of jens.neureither@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=jens.neureither@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <jens.neureither@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id o67sor5847952oih.308.2018.01.10.11.15.19
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 10 Jan 2018 11:15:19 -0800 (PST)
Received-SPF: pass (google.com: domain of jens.neureither@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j1QHCT2t;
       spf=pass (google.com: domain of jens.neureither@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=jens.neureither@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=W8tfoNZk083ZOL8GF2erQXeIU5CvOKemS7Nou8QBRUU=;
        b=j1QHCT2tafjsYVPPed0spCoG98obCpp3etOWkFzgn1kGEvbogciLALcKqVNcxznYpr
         zSc6YH7rCWH/2SFHKyoUWD73a17uh2ijsbKDV9eIKZ8Kf7fRi808IR6twxqe0VJJFxph
         AmVDBeubYFkRzt0bl02RDHDLAaa8ow9+5fQ8XpKwNJV1oK863ooKGvVwZ3YFjFU+kEwO
         UuDrTKxYaxFDbO93fYlFKdx1JUn397yaTwDMDsAhyPJmNtyi5wAqLr7jHYruebemzfwj
         mVTiKXhBE7pB0ra8CR4k05PHv7sAuuSmyr4cKq5Io5Vgn/DkiX8Hjvlzx4a/J0/ZLgod
         xEWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=W8tfoNZk083ZOL8GF2erQXeIU5CvOKemS7Nou8QBRUU=;
        b=lu4+QCoHX+YkT/3AJzsS8d3qNknLpmLVqPVcoON4k545QSoqsLEbSbuUXDHRCy7/W5
         SX21bNB1ltq955NEDqzY3TKvxczWWDVPS04RzP+j+TdX+JuQrBTSBIZxv8oRSAjmvD91
         CDpR9H7UQ3FEEanhvbkFUpf4pMQuDAzHrF0zaca/KHDC1N6oQ5v7iQYz1z7YAVu9XhS7
         dYPkEbwChK2P8vybxfvR/S+UCgrClZt/p7uhJjio248h7ifc1eqeoZepLgZ5Ic0RkvBf
         LVId+XiJJ1aWVn2CYbSMeX3G/7O/QjcfMlaCD5pADjphOAdwKUSRnnSIIiQSjmO7SxNE
         +6kA==
X-Gm-Message-State: AKGB3mKdwah4MubTn2KP0Z8T6+4Hd2bB0LPTSPd3eyDPvi5rhWBjXEFL
	HuzyLy8NNHV1+OS2/D4Z1DznE9Qqu1/PPlucbU8=
X-Google-Smtp-Source: ACJfBovkg/VyBt4XR9gSoRAPy3a4/oQAzlc5jIWlIBVPoPTIlcWpv/U2HQHE7+tM5CO8rtgB4xKW859XaMLywomEBqs=
X-Received: by 10.202.224.131 with SMTP id x125mr9541751oig.179.1515611718665;
 Wed, 10 Jan 2018 11:15:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.87.205 with HTTP; Wed, 10 Jan 2018 11:15:18 -0800 (PST)
Received: by 10.157.87.205 with HTTP; Wed, 10 Jan 2018 11:15:18 -0800 (PST)
In-Reply-To: <20180110191223.72975.7036@slab.local>
References: <20180110191223.72975.7036@slab.local>
From: Jens Neureither <jens.neureither@gmail.com>
Date: Wed, 10 Jan 2018 20:15:18 +0100
Message-ID: <CANorkh8Y6mcHprKJbg7W77+3tOG72gB_CwwtE3ZsMXq7A+PamQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for jens.neureither@gmail.com
To: kurt@seifried.org
Content-Type: multipart/alternative; boundary="001a113d38141bd069056270da0c"

--001a113d38141bd069056270da0c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I accept

Am 10.01.2018 8:12 nachm. schrieb <kurt@seifried.org>:

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
Legal-Acceptance/blob/master/Terms-Of-Use.md

To contact the DWF either hit reply, or email kurt@seifried.org manually
with your question/concerns/etc.

--001a113d38141bd069056270da0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I accept<br><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">Am 10.01.2018 8:12 nachm. schrieb  &lt;<a href=3D"mailto:=
kurt@seifried.org">kurt@seifried.org</a>&gt;:<br type=3D"attribution"><bloc=
kquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">This is a confirmation email sent from CVE request form=
 at <a href=3D"https://iwantacve.org/" rel=3D"noreferrer" target=3D"_blank"=
>https://iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use=
 (assuming you filled out the CVE form and want one, we can&#39;t use the d=
ata until you accept the MITRE CVE Terms of Use).<br>
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
</blockquote></div><br></div></div></div>

--001a113d38141bd069056270da0c--
