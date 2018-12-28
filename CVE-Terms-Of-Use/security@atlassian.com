Delivered-To: kurt@seifried.org
Received: by 10.157.1.148 with SMTP id e20csp38996ote;
        Wed, 13 Sep 2017 16:06:36 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb6eNfmTaKesqCNcjkoIrlwryN8YZROCRo5Vsi3JEF9gTLFdBDbSaqFYUTrlNBG+hl9Wsaq7
X-Received: by 10.159.198.1 with SMTP id f1mr22776745plo.370.1505343996486;
        Wed, 13 Sep 2017 16:06:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505343996; cv=none;
        d=google.com; s=arc-20160816;
        b=Zh95PNRfUnRDZYkqEJVG852NOdelgxcpimOJtsBLaTdsABg0y8nNxox6IejBdy5OO4
         86xreNURow1MTqx2tDDKGk5HG2/LNWxTIh6RwPhIoXzsx94mrsGN9Ui0iR/uIb6q39bz
         I31N/tgJq4MUp/m0FCTRveZiZdY69x7dxgTIcrlzYcIAHOTYmq3zSHNW/7blvItBkPZ4
         KEHmy6CVhLg8MlgJQlcgr/x8TlXS9AwOOeJSjSyjVQVtLBpnyD6Q8mqTvqY8HlbpRYom
         WfGQxzd+x4OvclhA+2utS9fgM0IyHd0NNdraeuvZgKegg8sZP/ECdAzEMOPXntYYwSk2
         SI/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=precedence:auto-submitted:mime-version:subject:references
         :in-reply-to:message-id:to:reply-to:from:date:dkim-signature
         :arc-authentication-results;
        bh=JFocpQ8NOyR5T1OJekboefUOJKdCo4SWGfoSqD48CYs=;
        b=pVKOSICQTdoEUEjUsAQKcMY8xuRNZazoe8mySbi79XNVX173FQKBWyztAyZzlKA/1Q
         LcBEddsfuII/6RiIVWNzoNeJ3BrSM2BqjLDOWK4g1bDo3OmkzWTv6lZF7Z9ZfHmcmzTO
         5q1c9k2UVmVHQkg7R52H3jf6qtNnz7esMn+ug4MKlxg+UsHQhepTQn5guCv5z4DJnJoF
         mhLUFGeiXM3bk0OlZfi8Jg++oId930IxhV2utLca3uk1jF7c3KSM0yZ+U0zjb+KkQM1A
         golWuU0YpgCZ88E44byi2yMWplN+mo3wohyOU2H9ozLfFhYZI4mpgafYqM6OlkstRaKc
         A7IQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@atlassian.net header.s=s1 header.b=b1fjRS93;
       spf=pass (google.com: domain of bounces+4043402-38dc-kurt=seifried.org@201701confluence.atlassian.net designates 168.245.31.131 as permitted sender) smtp.mailfrom=bounces+4043402-38dc-kurt=seifried.org@201701confluence.atlassian.net
Return-Path: <bounces+4043402-38dc-kurt=seifried.org@201701confluence.atlassian.net>
Received: from o16824531x131.outbound-mail.sendgrid.net (o16824531x131.outbound-mail.sendgrid.net. [168.245.31.131])
        by mx.google.com with ESMTPS id r63si2410491plb.511.2017.09.13.16.06.36
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 16:06:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounces+4043402-38dc-kurt=seifried.org@201701confluence.atlassian.net designates 168.245.31.131 as permitted sender) client-ip=168.245.31.131;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@atlassian.net header.s=s1 header.b=b1fjRS93;
       spf=pass (google.com: domain of bounces+4043402-38dc-kurt=seifried.org@201701confluence.atlassian.net designates 168.245.31.131 as permitted sender) smtp.mailfrom=bounces+4043402-38dc-kurt=seifried.org@201701confluence.atlassian.net
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=atlassian.net; 
	h=from:reply-to:to:in-reply-to:references:subject:mime-version:content-type; 
	s=s1; bh=qz0Y5a0EkRPkc0n4Pt9BunlFHyw=; b=b1fjRS93fi6Tf2nwJ0AyG9c
	lDAYE4YuN5RfeA9ljdI+krBUQQisjytH5ZfjH+Vzk4Di2BCq3wh+2Sx003w8FO7p
	Mtr6wwwuHUS6buvkyEgUf/CjcwagczgAqcaIWzFHsfjgfvT+CQo+96Qimp6MS+Nw
	6dbBqmvQYApgDtiY2XWg=
Received: by filter0458p1las1.sendgrid.net with SMTP id filter0458p1las1-12273-59B9B9FB-6
        2017-09-13 23:06:35.096392775 +0000 UTC
Received: from 21551f497344 (unknown [104.192.138.232])
	by ismtpd0004p1sjc2.sendgrid.net (SG) with ESMTP id WCq3MNftRDGhDwpZYtG0Dw
	for <kurt@seifried.org>; Wed, 13 Sep 2017 23:06:35.031 +0000 (UTC)
Date: Wed, 13 Sep 2017 23:06:35 +0000 (UTC)
From: David Black <jira@securitysd.atlassian.net>
Reply-To: securitysd@atlassian.com
To: kurt@seifried.org
Message-ID: <JIRA.36713.1505335133000.cca3ba12-fa93-4ca9-be74-905fbcd51480.1505343994602@Atlassian.JIRA>
In-Reply-To: <JIRA.36713.1505335133000@Atlassian.JIRA>
References: <JIRA.36713.1505335133000@Atlassian.JIRA> <JIRA.36713.1505335133970@21551f497344>
Subject: SEC-1732 DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 security@atlassian.com
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_95404_1529358741.1505343994602"
X-JIRA-FingerPrint: 3d8d037ee072182d2a199910821ff734
Auto-Submitted: auto-generated
Precedence: bulk
X-SG-EID: XLtf0FYGcX7+7LOlYrvAF0Z3epSjKouttFf5MZwuoYkR/SQRfy4plhQxbK/cLcTjRimIzpim7E1d8L
 RlISx0c9Z9ga86WSCxAg/uqhtzfarPSmqgxXPyHQaPNfRXBSp7hTBnRa93m4DChE0pm+ACDoD5uCA0
 S5jNuhCdYm7fejaIzkJZHxiC/qY5TjWRssuTTGoVTjotcc9PhPNoW1EeQ/0llAAaHUc7Je1iGnPoei
 U=

------=_Part_95404_1529358741.1505343994602
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=E2=80=94-=E2=80=94-=E2=80=94-=E2=80=94

Reply above this line.



David Black commented:

This is a confirmation email sent from CVE request form at [1]https://iwant=
acve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you fil=
led out the CVE form and want one, we can't use the data until you accept t=
he MITRE CVE Terms of Use).

Simply quote the email and reply with "I accept" at the top if you agree to=
 the MITRE CVE Terms of Use and we will add a copy of the email to the DWF =
MITRE CVE Terms of Use acceptance data at [2]https://github.com/distributed=
weaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use

The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.

If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don't =
want any future emails simply reply with "unsubscribe" or "DON'T SEND ME TH=
IS EMAIL EVER AGAIN" and I'll add your email address to the block list so w=
e don't spam you with these, please note that this will prevent you from be=
ing able to accept the MITRE CVE Terms of Use via the DWF automatically in =
future (you'll have to manually ask). But again, if you have no idea what a=
 CVE is then you can ignore this/ask to be added to the block list with no =
problems.

MITRE CVE Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corporation (MI=
TRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-e=
xclusive, no-charge, royalty-free, irrevocable copyright license to reprodu=
ce, prepare derivative works of, publicly display, publicly perform, sublic=
ense, and distribute such materials and derivative works. Unless required b=
y applicable law or agreed to in writing, you provide such materials on an =
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express=
 or implied, including, without limitation, any warranties or conditions of=
 TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURP=
OSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). Any copy =
you make for such purposes is authorized provided that you reproduce MITRE'=
s copyright designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE I=
NFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=
F MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

A copy is available at [3]https://github.com/distributedweaknessfiling/DWF-=
Database/blob/master/TermsOfUse.md

To contact the DWF either hit reply, or email kurt@seifried.org manually wi=
th your question/concerns/etc.

I accept.
---------------------------------------------------------------------------=
-------------
[1] https://iwantacve.org/
[2] https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/=
master/Terms-Of-Use
[3] https://github.com/distributedweaknessfiling/DWF-Database/blob/master/T=
ermsOfUse.md

__________________________


David Black resolved this as Answered.



View request: https://securitysd.atlassian.net/servicedesk/customer/portal/=
2/SEC-1732?token=3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJxc2giOiIyN2UxZDE=
5MmY0MGFjMzNjYThiNzNmZDA3NDNhMDU1ZTQzMzM5Y2IxZDNlNmJhYmY2ZTQzMjFkYmJjMjkxMT=
BjIiwiaXNzIjoic2VydmljZWRlc2stand0LXRva2VuLWlzc3VlciIsImNvbnRleHQiOnsidXNlc=
iI6IjM1NjMzIiwiaXNzdWUiOiJTRUMtMTczMiJ9LCJleHAiOjE1MDc3NjMxOTQsImlhdCI6MTUw=
NTM0Mzk5NH0.Jw90XOzdZtcTe_dAuPguWGHPJK412-UrrQUT7lSL0Io&sda_source=3Dnotifi=
cation-email

Turn off this request's notifications: https://securitysd.atlassian.net/ser=
vicedesk/customer/portal/2/SEC-1732/unsubscribe?jwt=3DeyJ0eXAiOiJKV1QiLCJhb=
GciOiJIUzI1NiJ9.eyJxc2giOiIwZjZjMzUyMTM4NDgyNzM2MWQ5ZjFjNDc4OGVkZTg0YWZhZWY=
1NjJkMGJjNDc2ODIwNGM2NWQyMTNlMjE0MjI0IiwiaXNzIjoic2VydmljZWRlc2stand0LXRva2=
VuLWlzc3VlciIsImNvbnRleHQiOnsidXNlciI6Imt1cnRAc2VpZnJpZWQub3JnIiwiaXNzdWUiO=
iJTRUMtMTczMiJ9LCJleHAiOjE1MDc3NjMxOTQsImlhdCI6MTUwNTM0Mzk5NH0.6H3NYRLsoazc=
Tt17GiOXVuth0KbvZV7RJhzA7xnB4WA

This is shared with kurt@seifried.org

------------------------------
Powered by JIRA Service Desk
https://www.atlassian.com/software/jira/service-desk?utm_medium=3Djira-in-p=
roduct&utm_source=3Djira_service_desk_email_footer

------=_Part_95404_1529358741.1505343994602
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org=
/TR/xhtml1/DTD/xhtml1-strict.dtd"><html xmlns=3D"http://www.w3.org/1999/xht=
ml"><head>=20
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">=
=20
  <meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1.0">=20
  <base href=3D"https://securitysd.atlassian.net">=20
 </head>=20
 <body style=3D"color: #333333; font-family: Arial, sans-serif; font-size: =
14px; line-height: 1.400">=20
  <div class=3D"jsd-reply-marker" style=3D"color: #999999">
    =E2=80=94-=E2=80=94-=E2=80=94-=E2=80=94=20
  </div>=20
  <div class=3D"jsd-reply-marker-hint" style=3D"color: #999999; margin-bott=
om: 30px">
    Reply above this line.=20
  </div>=20
  <div class=3D"jsd-message-content" style=3D"margin-bottom: 30px">=20
   <div class=3D"jsd-activity-item-content">=20
    <p>David Black commented:</p>=20
    <blockquote style=3D"border-left: 1px solid #cccccc; margin-left: 20px;=
 padding: 10px 20px">=20
     <p>This is a confirmation email sent from CVE request form at <a href=
=3D"https://iwantacve.org/" class=3D"external-link" rel=3D"nofollow">https:=
//iwantacve.org/</a> asking you to accept the MITRE CVE Terms of Use (assum=
ing you filled out the CVE form and want one, we can't use the data until y=
ou accept the MITRE CVE Terms of Use). </p>=20
     <p>Simply quote the email and reply with "I accept" at the top if you =
agree to the MITRE CVE Terms of Use and we will add a copy of the email to =
the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://github=
.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Us=
e" class=3D"external-link" rel=3D"nofollow">https://github.com/distributedw=
eaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use</a></p>=20
     <p>The reason we use a complete copy of the email is that it provides =
an artifact showing that the email address accepted the Terms of Use, when =
they were accepted and so on. </p>=20
     <p>If you did not submit a CVE request to the DWF you can safely ignor=
e this message, however we may resend it at some point in the future, if yo=
u don't want any future emails simply reply with "unsubscribe" or "DON'T SE=
ND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block l=
ist so we don't spam you with these, please note that this will prevent you=
 from being able to accept the MITRE CVE Terms of Use via the DWF automatic=
ally in future (you'll have to manually ask). But again, if you have no ide=
a what a CVE is then you can ignore this/ask to be added to the block list =
with no problems. </p>=20
     <p>MITRE CVE Terms of Use</p>=20
     <p>LICENSE</p>=20
     <p>Submissions: For all materials you submit to the Common Vulnerabili=
ties and Exposures (CVE=C3=82=C2=AE), you hereby grant to The MITRE Corpora=
tion (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwid=
e, non-exclusive, no-charge, royalty-free, irrevocable copyright license to=
 reproduce, prepare derivative works of, publicly display, publicly perform=
, sublicense, and distribute such materials and derivative works. Unless re=
quired by applicable law or agreed to in writing, you provide such material=
s on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either=
 express or implied, including, without limitation, any warranties or condi=
tions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICU=
LAR PURPOSE.</p>=20
     <p>CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-excl=
usive, no-charge, royalty-free, irrevocable copyright license to reproduce,=
 prepare derivative works of, publicly display, publicly perform, sublicens=
e, and distribute Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE). A=
ny copy you make for such purposes is authorized provided that you reproduc=
e MITRE's copyright designation and this license in any such copy.</p>=20
     <p>DISCLAIMERS</p>=20
     <p>ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MIT=
RE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION H=
E/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BO=
ARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, =
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE =
OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARR=
ANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</p>=20
     <p>A copy is available at <a href=3D"https://github.com/distributedwea=
knessfiling/DWF-Database/blob/master/TermsOfUse.md" class=3D"external-link"=
 rel=3D"nofollow">https://github.com/distributedweaknessfiling/DWF-Database=
/blob/master/TermsOfUse.md</a></p>=20
     <p>To contact the DWF either hit reply, or email kurt@seifried.org man=
ually with your question/concerns/etc.</p>=20
    </blockquote>=20
    <p>I accept.</p>=20
   </div>=20
   <hr class=3D"jsd-activity-item-separator" style=3D"border: none; border-=
bottom: 1px solid #cccccc">=20
   <p></p>=20
   <div class=3D"jsd-activity-item-content">=20
    <p>David Black resolved this as Answered.</p>=20
   </div>=20
  </div>=20
  <p> <a class=3D"jsd-issue-link" href=3D"https://securitysd.atlassian.net/=
servicedesk/customer/portal/2/SEC-1732?token=3DeyJ0eXAiOiJKV1QiLCJhbGciOiJI=
UzI1NiJ9.eyJxc2giOiIyN2UxZDE5MmY0MGFjMzNjYThiNzNmZDA3NDNhMDU1ZTQzMzM5Y2IxZD=
NlNmJhYmY2ZTQzMjFkYmJjMjkxMTBjIiwiaXNzIjoic2VydmljZWRlc2stand0LXRva2VuLWlzc=
3VlciIsImNvbnRleHQiOnsidXNlciI6IjM1NjMzIiwiaXNzdWUiOiJTRUMtMTczMiJ9LCJleHAi=
OjE1MDc3NjMxOTQsImlhdCI6MTUwNTM0Mzk5NH0.Jw90XOzdZtcTe_dAuPguWGHPJK412-UrrQU=
T7lSL0Io&amp;sda_source=3Dnotification-email" style=3D"color: #3572b0; text=
-decoration: none">View request</a> <span class=3D"jsd-link-separator" styl=
e=3D"padding: 0 10px">=C2=B7</span> <a class=3D"jsd-unsubscribe-link" href=
=3D"https://securitysd.atlassian.net/servicedesk/customer/portal/2/SEC-1732=
/unsubscribe?jwt=3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJxc2giOiIwZjZjMzU=
yMTM4NDgyNzM2MWQ5ZjFjNDc4OGVkZTg0YWZhZWY1NjJkMGJjNDc2ODIwNGM2NWQyMTNlMjE0Mj=
I0IiwiaXNzIjoic2VydmljZWRlc2stand0LXRva2VuLWlzc3VlciIsImNvbnRleHQiOnsidXNlc=
iI6Imt1cnRAc2VpZnJpZWQub3JnIiwiaXNzdWUiOiJTRUMtMTczMiJ9LCJleHAiOjE1MDc3NjMx=
OTQsImlhdCI6MTUwNTM0Mzk5NH0.6H3NYRLsoazcTt17GiOXVuth0KbvZV7RJhzA7xnB4WA" st=
yle=3D"color: #3572b0; text-decoration: none">Turn off this request's notif=
ications</a> </p>=20
  <p class=3D"jsd-request-sharedwith" style=3D"color: #707070; font-size: 1=
2px"> This is shared with kurt@seifried.org. </p>=20
  <p> <a class=3D"jsd-servicedesk-link" href=3D"https://www.atlassian.com/s=
oftware/jira/service-desk?utm_medium=3Djira-in-product&amp;utm_source=3Djir=
a_service_desk_email_footer" style=3D"color: #707070; font-size: 12px; text=
-decoration: none">Powered by JIRA Service Desk</a> </p>=20=20
=20

<img src=3D"https://u4043402.ct.sendgrid.net/wf/open?upn=3DN8is9bv2sN3o209N=
MjFu2IgbqLOKToXcLRWexHX3Kxz8viFHunErvdzTsTDGWCtlb0WN-2FshZ1W3UAx1614EInLjSu=
-2BkLDzkjRZr8sDiRKO1dlZEszQ7a64ZNVgEED-2FTQz-2Fx1oYowPBFfswWt0R4X412xjLXnW1=
V876tiaXckZx5TjNubAGWKf2-2FjY1831cULZUK-2FoVB1O7q1YortxvmUn8yQ4N-2Ff2y8l0rm=
2LPzPqHM-3D" alt=3D"" width=3D"1" height=3D"1" border=3D"0" style=3D"height=
:1px !important;width:1px !important;border-width:0 !important;margin-top:0=
 !important;margin-bottom:0 !important;margin-right:0 !important;margin-lef=
t:0 !important;padding-top:0 !important;padding-bottom:0 !important;padding=
-right:0 !important;padding-left:0 !important;"/>
</body></html>

------=_Part_95404_1529358741.1505343994602--
