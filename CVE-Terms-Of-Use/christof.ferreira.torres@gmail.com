Delivered-To: kurt@seifried.org
Received: by 2002:a4f:65c4:0:0:0:0:0 with SMTP id z187-v6csp1195511ivb;
        Wed, 20 Jun 2018 12:47:46 -0700 (PDT)
X-Received: by 2002:a50:aada:: with SMTP id r26-v6mr19524541edc.124.1529524066719;
        Wed, 20 Jun 2018 12:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1529524066; cv=none;
        d=google.com; s=arc-20160816;
        b=LMkF3/6RKw2AdaqP27VsHYUbKp/udBNG5OXthKpPemVl5KKURqORq+RvvzNNPJv94Q
         s03CelX+bnU1QZCKuGEJjWnxAOuVm+gW+JkPzs79OpXpqsWk53PG4JIKfB/qWbU1GaGm
         AIoVlQio3DA63pytqHIFHW24n+OMfGeuzd+/QLmevBBv/MNNhQQZ24Ge274RpRWP+Ar1
         nZD0Z2Y3+CafkECASi/K7q+ycPrjDDZg6KSwXHeJxcX8uTX6EU6VoncpR3+UBNsJ9IME
         5QkntIApHcRibSQ41N4sUlR8Pq8ek552viy7YrzpYs3KkGTUgA56ODHQIVa6FaHBUSiM
         4nMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :dkim-signature:arc-authentication-results;
        bh=x4+pnxoBC8uMEj/DzCN/i6n/lP9QPTYjmCByG85gPSM=;
        b=iu0IVGLTF3GoYOjTaeAwh9N5oM+Xy3e4z3luB1fc7EaEzkkJDNoJax/8yT7TtddsYS
         RNiHzLJEfhc1AXgOQI7fDJfGpfbG3T7RVYSibuapRqXhAO8NPw4W95iIdpvvWepKYJ3C
         ZK4VEYRZ7SYSsMmMDpg4BqUkXA4WkXyRkZZ9GaIJ7xWSaTWn7sWb2BbpEX2oizqcJkb0
         NWYSYQytsVg5//QcEQSJBErqz+4H6m+MNTSN5FKooKYsTEWgjfpVXLjOwB6eoCdJCQ7Z
         yIEmqCXufbM1cMONCqDkCVj4v9F6FS1MNseEIeQfGYf3yExPSQ3E26AvvRhxwTInjaA/
         F9/Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tV/vfkmH";
       spf=pass (google.com: domain of christof.ferreira.torres@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=christof.ferreira.torres@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <christof.ferreira.torres@gmail.com>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a8-v6sor1537335edr.5.2018.06.20.12.47.46
        for <kurt@seifried.org>
        (Google Transport Security);
        Wed, 20 Jun 2018 12:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of christof.ferreira.torres@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tV/vfkmH";
       spf=pass (google.com: domain of christof.ferreira.torres@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=christof.ferreira.torres@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id;
        bh=x4+pnxoBC8uMEj/DzCN/i6n/lP9QPTYjmCByG85gPSM=;
        b=tV/vfkmHtD2iGPz2QbdKRZbKXf84ox8wudeuzt4/PNCWaQs97cH/FSbzJLz3KKbSuE
         TvPYKC2aO20C/fo0PjLa9FI/Aeul4MgoFWKuqNRiZ1yn1ih+yPDcr0w5ey6ypQHo9zna
         6wRTlXThxtRsOx0MvZZwAL+Z6EKXhP8TmrUkHHxvPVRZBmjH29fhiHOWydG2KmBl1SLD
         wBWuJhGdro0bfcEkyLgQuIM6koNUNcWVVE9tTT2YFtyx6pJXw93QeV62i1Rc2KvHsu7P
         W8LrNNVhC6dW/Im5DCA6WHN1zNzMcfWLRL7l8EgOcgl+JpuqVsxnNvlbkz8x3lrnXAJF
         +FZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:date:references:to
         :in-reply-to:message-id;
        bh=x4+pnxoBC8uMEj/DzCN/i6n/lP9QPTYjmCByG85gPSM=;
        b=mo2l5GyTqUHyVWjlq93i9wKbm3Bo1F6gK7gOgiczVFIyDutoUaUhSMIIwh1cy1nPA9
         l2BHbPg4C6dJ0UgulGZ4SX9PbnRE1rMO6ud4icki6W+oU6XI4UmUVtrcGV+uu7hJ4VEu
         gKOoFZFw42zOzbV84ozrVnTXl+cq5hrl0JlTdAefZheOdjaOJyP0tWkE7qPgG3wtjD5U
         jGuQx+GyWRGVM64oU6jlmi6QQk0y5BtxDWlLmgfDJvpfGmtcH0F2lTSawj7u5z9TXOkH
         gVdPyWer8DKZYViIcJhgBHVGu34cj/RC4kR2tfhshb8T5bNsbfuH/bgO7nFAyB7PjQ5t
         W14w==
X-Gm-Message-State: APt69E1UCzDDBTiUc4lcrEdu1yfwiqBhmQQhOb0AzdgF7P6TdSXFt/Fo
	ZR4wezW9NP+NmU6cOYaDXtDoldio
X-Google-Smtp-Source: ADUXVKJ8O0fTzHFVm2aXQgRNKt/Jkv1ZgfGgmNr5cOMgez79StnxCbwes9UFqMsYF6a7f2ZbDR1JNQ==
X-Received: by 2002:a50:ae02:: with SMTP id c2-v6mr19299390edd.137.1529524066162;
        Wed, 20 Jun 2018 12:47:46 -0700 (PDT)
Return-Path: <christof.ferreira.torres@gmail.com>
Received: from mp0025.lan ([94.252.19.198])
        by smtp.gmail.com with ESMTPSA id x11-v6sm1880838edb.39.2018.06.20.12.47.45
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jun 2018 12:47:45 -0700 (PDT)
From: Christof Torres <christof.ferreira.torres@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FBBCE79C-D401-4154-9178-95C324018ECC"
Mime-Version: 1.0 (Mac OS X Mail 11.3 \(3445.6.18\))
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 christof.ferreira.torres@gmail.com
Date: Wed, 20 Jun 2018 21:47:44 +0200
References: <20180620194446.10662.95917@shiny-2.local>
To: kurt@seifried.org
In-Reply-To: <20180620194446.10662.95917@shiny-2.local>
Message-Id: <E60D9734-5271-43DC-BE16-EB35913C39B5@gmail.com>
X-Mailer: Apple Mail (2.3445.6.18)


--Apple-Mail=_FBBCE79C-D401-4154-9178-95C324018ECC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I accept

> On 20 Jun 2018, at 21:44, kurt@seifried.org wrote:
>=20
> This is a confirmation email sent from CVE request form at =
https://iwantacve.org/ <https://iwantacve.org/> asking you to accept the =
MITRE CVE Terms of Use (assuming you filled out the CVE form and want =
one, we can't use the data until you accept the MITRE CVE Terms of Use).=20=

>=20
> Simply quote the email and reply with "I accept" at the top if you =
agree to the MITRE CVE Terms of Use and we will add a copy of the email =
to the DWF MITRE CVE Terms of Use acceptance data at =
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/mas=
ter/Terms-Of-Use =
<https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/ma=
ster/Terms-Of-Use>
>=20
> The reason we use a complete copy of the email is that it provides an =
artifact showing that the email address accepted the Terms of Use, when =
they were accepted and so on.=20
>=20
> If you did not submit a CVE request to the DWF you can safely ignore =
this message, however we may resend it at some point in the future, if =
you don't want any future emails simply reply with "unsubscribe" or =
"DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to =
the block list so we don't spam you with these, please note that this =
will prevent you from being able to accept the MITRE CVE Terms of Use =
via the DWF automatically in future (you'll have to manually ask). But =
again, if you have no idea what a CVE is then you can ignore this/ask to =
be added to the block list with no problems.=20
>=20
> MITRE CVE Terms of Use
>=20
> LICENSE
>=20
> Submissions: For all materials you submit to the Common =
Vulnerabilities and Exposures (CVE=C2=AE), you hereby grant to The MITRE =
Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a =
perpetual, worldwide, non-exclusive, no-charge, royalty-free, =
irrevocable copyright license to reproduce, prepare derivative works of, =
publicly display, publicly perform, sublicense, and distribute such =
materials and derivative works. Unless required by applicable law or =
agreed to in writing, you provide such materials on an "AS IS" BASIS, =
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, =
including, without limitation, any warranties or conditions of TITLE, =
NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
>=20
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, =
non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly =
perform, sublicense, and distribute Common Vulnerabilities and Exposures =
(CVE=C2=AE). Any copy you make for such purposes is authorized provided =
that you reproduce MITRE's copyright designation and this license in any =
such copy.
>=20
> DISCLAIMERS
>=20
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE =
ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION =
HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, =
ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL =
WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY =
WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY =
RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A =
PARTICULAR PURPOSE.
>=20
> A copy is available at =
https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/mas=
ter/Terms-Of-Use.md =
<https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/blob/ma=
ster/Terms-Of-Use.md>
>=20
> To contact the DWF either hit reply, or email kurt@seifried.org =
<mailto:kurt@seifried.org> manually with your question/concerns/etc.


--Apple-Mail=_FBBCE79C-D401-4154-9178-95C324018ECC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">I =
accept<br class=3D""><div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">On 20 Jun 2018, at 21:44, <a =
href=3D"mailto:kurt@seifried.org" class=3D"">kurt@seifried.org</a> =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">This is a confirmation email =
sent from CVE request form at<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://iwantacve.org/" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://iwantacve.org/</a><span style=3D"caret-color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D""><span class=3D"Apple-converted-space">&nbsp;</span>asking you =
to accept the MITRE CVE Terms of Use (assuming you filled out the CVE =
form and want one, we can't use the data until you accept the MITRE CVE =
Terms of Use).<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Simply quote the email and reply =
with "I accept" at the top if you agree to the MITRE CVE Terms of Use =
and we will add a copy of the email to the DWF MITRE CVE Terms of Use =
acceptance data at<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/=
tree/master/Terms-Of-Use" style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptan=
ce/tree/master/Terms-Of-Use</a><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">The reason we use a complete copy of the email is that it =
provides an artifact showing that the email address accepted the Terms =
of Use, when they were accepted and so on.<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">If you did not submit a CVE =
request to the DWF you can safely ignore this message, however we may =
resend it at some point in the future, if you don't want any future =
emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER =
AGAIN" and I'll add your email address to the block list so we don't =
spam you with these, please note that this will prevent you from being =
able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea =
what a CVE is then you can ignore this/ask to be added to the block list =
with no problems.<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">MITRE CVE Terms of Use</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">LICENSE</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Submissions: For all materials =
you submit to the Common Vulnerabilities and Exposures (CVE=C2=AE), you =
hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering =
Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, =
royalty-free, irrevocable copyright license to reproduce, prepare =
derivative works of, publicly display, publicly perform, sublicense, and =
distribute such materials and derivative works. Unless required by =
applicable law or agreed to in writing, you provide such materials on an =
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either =
express or implied, including, without limitation, any warranties or =
conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A =
PARTICULAR PURPOSE.</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">CVE Usage: MITRE hereby grants you a perpetual, worldwide, =
non-exclusive, no-charge, royalty-free, irrevocable copyright license to =
reproduce, prepare derivative works of, publicly display, publicly =
perform, sublicense, and distribute Common Vulnerabilities and Exposures =
(CVE=C2=AE). Any copy you make for such purposes is authorized provided =
that you reproduce MITRE's copyright designation and this license in any =
such copy.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" =
class=3D"">DISCLAIMERS</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED =
BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE =
ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE =
CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, =
DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED =
TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT =
INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR =
FITNESS FOR A PARTICULAR PURPOSE.</span><br style=3D"caret-color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">A copy is available at<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/=
blob/master/Terms-Of-Use.md" style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://github.com/distributedweaknessfiling/DWF-Legal-Acceptan=
ce/blob/master/Terms-Of-Use.md</a><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">To contact the DWF either hit reply, or email<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"mailto:kurt@seifried.org" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D"">kurt@seifried.org</a><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>manually with your =
question/concerns/etc.</span></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_FBBCE79C-D401-4154-9178-95C324018ECC--
