Delivered-To: kurt@seifried.org
Received: by 10.79.79.71 with SMTP id d68csp8495315ivb;
        Wed, 27 Dec 2017 21:14:26 -0800 (PST)
X-Received: by 10.55.123.134 with SMTP id w128mr7661772qkc.5.1514438066497;
        Wed, 27 Dec 2017 21:14:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1514438066; cv=none;
        d=google.com; s=arc-20160816;
        b=dAGtYJCd5RLYib1+/WDBotRvdWcvgWxx2VHqv5kWyOvpq3QfaOvtWzlbD5pFdu2EU+
         vz4oztMXkjSGKdc0J2jTyZiKqXno22J/p4Ek3n9QDYzqJKeiItitdmpV97boWW952U/i
         IV+iPY4nAyHTHkjga083viAM3+Fgff8bA6b2+g5RDT44CIQ1tixOQXR4WWduca1yAw25
         LuozbO5SNpKBOHBGXDVEK6w8aGlQQsZ9S241pwSo/r7WxW6S8XqZeyTkzjfHfa9jQJbf
         qUKye3EUpK65nmrXrHLLFnWvnZoSP1IqDJnmlms14dAQ7wnrdrb60pWYGjoqNkKahhwz
         /S5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:date:message-id:subject:references:in-reply-to:to:from
         :arc-authentication-results;
        bh=SiPXHuPk+chC2tNAcmY/haFoEikd0AMdNPYeCuwbYDE=;
        b=UBCSgw0r/o06Lp6jNdZVg7Um+vgx1td+jhgaGvJ2/YdmjgykW2Vh8tF4sKxLH1Z5bL
         +xf+SSNdrC29Zz//uq9FkZRD081c9NZF0Ovpg3NuLdGFQfwU5rMsFTqieOMpzab/3GLL
         HmXSuLhKMGsmiqw4D3jvqR3ZjHatPn41iumfZQ/67a3eZmSItTcrGrOJMfipbN/2haKV
         mVFsgWdpnsfc8G0PNTwiMBOI4+TubDWAOG3t9YYgj4edCF25okzi+GwXraHhN3GBDW7N
         nYBw3Jvo6AK2OVDiwiuYAIcJ5RwfD1GwBOi33xHiZh0CM5II7Xpf160L2MrqepUrkUP/
         4MOg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of alan@hartless.codes designates 209.85.220.41 as permitted sender) smtp.mailfrom=alan@hartless.codes
Return-Path: <alan@hartless.codes>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id k38sor23983392qta.82.2017.12.27.21.14.26
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 27 Dec 2017 21:14:26 -0800 (PST)
Received-SPF: pass (google.com: domain of alan@hartless.codes designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       spf=pass (google.com: domain of alan@hartless.codes designates 209.85.220.41 as permitted sender) smtp.mailfrom=alan@hartless.codes
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:in-reply-to:references:subject
         :message-id:date:mime-version;
        bh=SiPXHuPk+chC2tNAcmY/haFoEikd0AMdNPYeCuwbYDE=;
        b=E9oiHYriTIuYKY1yZATFKQzPSX1O2HqjelTPGz4NGiy6ZcvctZF8X+3QFe9EqyUO57
         p9BE44YZw6nn3x05dmfjnXWJx4m4VFHoVUJjv2CwJcJNMTWz+ij+JCzJyZLZtAu5/ena
         M9aJQmjJtugoy6KBaTe6ebR70tcGrS7oOMTD7eVufRiiqe8F/EQJ4+2Tc3E7eEowlsq8
         jfsNct/MBMlY5cLTVX/vhmNK/S3jg3yBmMSyEcuN4sIAdB47UoauBfKY8Jzz4e6KI9Zk
         XNChjIhMmXiUfDv0R7LHYt0hxYzsSdKz+tsxNBWo+sKzCfcxuyvV21sIgrsAXv58/qJ+
         Ck6Q==
X-Gm-Message-State: AKGB3mIQi8GTjYZJxNHuOfM1OABjpIpfsEETd7NyXzw8uDFZ0aZhNEK3
	l796cO7TSySH9qhWygOEP2S/rKsUlvQ=
X-Google-Smtp-Source: ACJfBov/oEroWgTuV9i8TSLlQ1jYj4nBLXEa9utLXtKqCG0WD4b+ENKM5ngYZmGr8jq+TiWZHjh1Tw==
X-Received: by 10.237.42.230 with SMTP id t93mr21154773qtd.50.1514438065511;
        Wed, 27 Dec 2017 21:14:25 -0800 (PST)
Return-Path: <alan@hartless.codes>
Received: from [127.0.0.1] (ec2-54-210-254-214.compute-1.amazonaws.com. [54.210.254.214])
        by smtp.gmail.com with ESMTPSA id k68sm6978917qkk.95.2017.12.27.21.14.25
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Dec 2017 21:14:25 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="----sinikael-?=_1-15144380649430.326037232298404"
From: Alan Hartless <alan.hartless@mautic.com>
To: kurt@seifried.org
In-Reply-To: <20171227193458.3645.47956@slab.local>
References: <20171227193458.3645.47956@slab.local>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 alan.hartless@mautic.com
Message-Id: <c7969787-308b-4a68-98cf-818e026a31e6@mautic.com>
Date: Wed, 27 Dec 2017 23:14:08 -0600
X-Cm-Message-Id:
 1514438048952201b36fadb1dfe4d43ec4e72447bfd2a1185a447da0e8838394619633
X-Cm-Draft-Id: WyJhIiwyLCJkcmFmdF9pZCIsIjE1MTQ0MzgwNDg3NDYiLCJ2IiwxXQ==
X-Cm-Tracking-Code:
 2.0/1514438048/63d896d514be52209070ba25e83eca55/2/0da6e57ad419612892e263cc74d8904e/95aa7f5ae276448e4f3cc207ff541685/8b588344181b6098f508e9741ac36e0e
X-Mailer: Newton
MIME-Version: 1.0

------sinikael-?=_1-15144380649430.326037232298404
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I agree.

=E2=80=94
Alan Hartless , Lead Software Engineer, Mautic
832.387.4233 | alan.hartless@mautic.com | www.mautic.com

On Wed, Dec 27, 2017 at 1:34 PM, kurt@seifried.org <kurt@seifried.org> =
wrote:
This is a confirmation email sent from CVE request form at =
https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use =
(assuming you filled out the CVE form and want one, we can't use the data =
until you accept the MITRE CVE Terms of Use).

Simply quote the email and =
reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use=
 and we will add a copy of the email to the DWF MITRE CVE Terms of Use =
acceptance data at https://github.com/distributedweaknessfiling/DWF-Legal-A=
cceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of =
the email is that it provides an artifact showing that the email address =
accepted the Terms of Use, when they were accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this =
message, however we may resend it at some point in the future, if you don't=
 want any future emails simply reply with "unsubscribe" or "DON'T SEND ME =
THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so=
 we don't spam you with these, please note that this will prevent you from =
being able to accept the MITRE CVE Terms of Use via the DWF automatically =
in future (you'll have to manually ask). But again, if you have no idea =
what a CVE is then you can ignore this/ask to be added to the block list =
with no problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) =
and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, =
non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly perform,=
 sublicense, and distribute such materials and derivative works. Unless =
required by applicable law or agreed to in writing, you provide such =
materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND=
, either express or implied, including, without limitation, any warranties =
or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A=
 PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, =
worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright =
license to reproduce, prepare derivative works of, publicly display, =
publicly perform, sublicense, and distribute Common Vulnerabilities and =
Exposures (CVE=C2=AE). Any copy you make for such purposes is authorized =
provided that you reproduce MITRE's copyright designation and this license =
in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED=
 THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE =
CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY)=
, THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND =
EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT =
LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT =
INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS=
 FOR A PARTICULAR PURPOSE.

A copy is available at https://github.=
com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use=
.md

To contact the DWF either hit reply, or email kurt@seifried.org =
manually with your question/concerns/etc.
------sinikael-?=_1-15144380649430.326037232298404
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<img class=3D"cloudmagic-smart-beacon" src=3D"https://tr.cloudmagic.=
com/h/v6/emailtag/tag/2.0/1514438048/63d896d514be52209070ba25e83eca55/2/0da=
6e57ad419612892e263cc74d8904e/95aa7f5ae276448e4f3cc207ff541685/8b588344181b=
6098f508e9741ac36e0e/newton.gif" style=3D"border:0; width:10px; =
height:10px;" width=3D"10" height=3D"10" align=3D"right"><div =
dir=3D"auto"><span>I agree.<br></span><br><div id=3D"cm_footer" =
class=3D"cm_footer"><div id=3D"cm_signature"><span style=3D"font-size: =
13px; font-family: 'Helvetica', sans-serif;">
    <span style=3D"color: =
#E74C3C">=E2=80=94</span><br>
    <span><strong>Alan Hartless</strong>, =
Lead Software Engineer, Mautic</span><br>
    <span>832.387.4233 | alan.=
hartless@mautic.com | www.mautic.com</span><br>
</span></div></div><span><b=
r></span><div id=3D"cm_replymail_content_wrap"><div class=3D"">On Wed, Dec =
27, 2017 at 1:34 PM, kurt@seifried.org &lt;kurt@seifried.org&gt; =
wrote:<br><div id=3D"cm_replymail_content_1514438028" style=3D"overflow: =
visible;"><blockquote style=3D"margin:0;border-left: #D6D6D6 1px =
solid;padding-left: 10px;">This is a confirmation email sent from CVE =
request form at https://iwantacve.org/ asking you to accept the MITRE CVE =
Terms of Use (assuming you filled out the CVE form and want one, we can't =
use the data until you accept the MITRE CVE Terms of Use). <br><br>Simply =
quote the email and reply with "I accept" at the top if you agree to the =
MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE=
 CVE Terms of Use acceptance data at https://github.=
com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use=
<br><br>The reason we use a complete copy of the email is that it provides =
an artifact showing that the email address accepted the Terms of Use, when =
they were accepted and so on. <br><br>If you did not submit a CVE request =
to the DWF you can safely ignore this message, however we may resend it at =
some point in the future, if you don't want any future emails simply reply =
with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add =
your email address to the block list so we don't spam you with these, =
please note that this will prevent you from being able to accept the MITRE =
CVE Terms of Use via the DWF automatically in future (you'll have to =
manually ask). But again, if you have no idea what a CVE is then you can =
ignore this/ask to be added to the block list with no problems. =
<br><br>MITRE CVE Terms of Use<br><br>LICENSE<br><br>Submissions: For all =
materials you submit to the Common Vulnerabilities and Exposures =
(CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) and all CVE =
Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, =
no-charge, royalty-free, irrevocable copyright license to reproduce, =
prepare derivative works of, publicly display, publicly perform, sublicense=
, and distribute such materials and derivative works. Unless required by =
applicable law or agreed to in writing, you provide such materials on an =
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express=
 or implied, including, without limitation, any warranties or conditions of=
 TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br><br>CVE Usage: MITRE hereby grants you a perpetual, worldwide, =
non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly perform,=
 sublicense, and distribute Common Vulnerabilities and Exposures =
(CVE=C2=AE). Any copy you make for such purposes is authorized provided =
that you reproduce MITRE's copyright designation and this license in any =
such copy.<br><br>DISCLAIMERS<br><br>ALL DOCUMENTS AND THE INFORMATION =
CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND =
THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF =
ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND =
EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT =
LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT =
INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS=
 FOR A PARTICULAR PURPOSE.<br><br>A copy is available at https://github.=
com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use=
.md<br><br>To contact the DWF either hit reply, or email kurt@seifried.org =
manually with your question/concerns/etc. <br><br></blockquote></div></div>=
</div></div>
------sinikael-?=_1-15144380649430.326037232298404--
