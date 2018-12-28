Delivered-To: kurt@seifried.org
Received: by 2002:ac9:1c4b:0:0:0:0:0 with SMTP id x11-v6csp3361863ocg;
        Fri, 19 Oct 2018 07:52:46 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63ToANmrSMWHuTxgJweWs3r/GqoX0Zh/Uq0TYBIPSnba3hxiOKEm3sT6UlJ+N85JEwGleCO
X-Received: by 2002:a37:1ba8:: with SMTP id m40-v6mr11815998qkh.12.1539960766425;
        Fri, 19 Oct 2018 07:52:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539960766; cv=none;
        d=google.com; s=arc-20160816;
        b=wJjvE0onrY9Ng1muSEHoc+vxUNiUuZ9xYE/jW+V6uVHlSRON+qdH8Oxp3HhBkfb8GG
         3KjmSEeLTJNnjKTRXMixV42xwdsjs6Jc8gFSCimWpo1LTwaCwNIrS4SPDLKHUQ1BBX+G
         Q9AMycYGySlqqe2x2Kgs3hAIXlcIH23iudagfqs1A9fW4CZHWS6wbmtMNzQpfKql2M3z
         7FAX/LWSZ+R8P0LKANLUk5BBjAHXSPgWycA7NJ4Pe6Dlr7xDhXEj66qMELt9xmfLKPRq
         ehcuGmLzOaK9Yy0zLozyffqbwS20EueTfInB71JrI4/7KLIoYGqcHzOMmA6v7eurXp/V
         A0Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:date:subject:to:from:message-id:user-agent
         :content-transfer-encoding;
        bh=pUIyJLkOZyqET3jHjD+aYU3Imr2T3nJYT6ZEgSutNd0=;
        b=nenwH6+qRlKmZ/WV5GYTOgANmaAgLxz31PQfRiYGX7imiR4odupolqdXcNhzRB9EOD
         tbYlXPudkJNfO9hKrxjCdPNEUjl0LuJJbZBW+ieLGNVfDtgvvv2zfTSeM9KiZOFwK0k7
         HNoip3Wf4e35TdfxCGBajNcj5oZW81MOCIm8bfGELSJ5UisWsJ5MuH12wR40EgeXVOhv
         EjsL7CkqNXmE8qsafEY4lhKHlkWGxxgDcjonmj6TbjULq22jVe6RTmElQVP2fR+aBW6H
         FQ446GivA+W1zlTBzvJx/wyFUP8jV/PBrScPAZwBsX332JwEU/RyuZj+Gi+HT1IPHuRn
         JdCg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 72.167.218.87 is neither permitted nor denied by best guess record for domain of socket_0x03@teraexe.com) smtp.mailfrom=socket_0x03@teraexe.com
Return-Path: <socket_0x03@teraexe.com>
Received: from p3plwbeout01-03.prod.phx3.secureserver.net (p3plsmtp01-03-2.prod.phx3.secureserver.net. [72.167.218.87])
        by mx.google.com with ESMTPS id g186-v6si19463623qkf.215.2018.10.19.07.52.46
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Oct 2018 07:52:46 -0700 (PDT)
Received-SPF: neutral (google.com: 72.167.218.87 is neither permitted nor denied by best guess record for domain of socket_0x03@teraexe.com) client-ip=72.167.218.87;
Authentication-Results: mx.google.com;
       spf=neutral (google.com: 72.167.218.87 is neither permitted nor denied by best guess record for domain of socket_0x03@teraexe.com) smtp.mailfrom=socket_0x03@teraexe.com
Received: from p3plgemwbe01-03.prod.phx3.secureserver.net ([72.167.218.3])
	by :WBEOUT: with SMTP
	id DW8NgHcffugvaDW8NgrUKD; Fri, 19 Oct 2018 07:52:15 -0700
X-SID: DW8NgHcffugva
Received: (qmail 32465 invoked by uid 99); 19 Oct 2018 14:52:15 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"
X-Originating-IP: 73.84.101.178
User-Agent: Workspace Webmail 6.9.49
Message-Id: <20181019075214.cb4d70574c5c1c19832af8140c69aa1b.624ab687de.wbe@email01.secureserver.net>
From: <socket_0x03@teraexe.com>
To: kurt@seifried.org
Subject: RE: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 =?UTF-8?Q?Socket=5F=30x=30=33=40teraexe=2Ecom?=
Date: Fri, 19 Oct 2018 07:52:14 -0700
Mime-Version: 1.0
X-CMAE-Envelope: MS4wfLpWtr6XK8vPPqeDldSQ3n3TVoGoQJrwwbuozMbotyLYy21Akxs1ZIlVLr00XLVGEPbMxiSvJZ9zWhQCVXLy0UkW6TG9dtGPlKndXM4iJ66kSwnRNiTm
 FPw7r9GlcAjOZn2cOIsmzl07nclPZAtiUVoknIaVCWkpFJp7RlqJwR8Ht/7xPC/yKByI5N/aOvK0KQ/2UFdqzpwaOC8XL/INX1k=

<html><body><span style=3D"font-family:Verdana; color:#000000; font-size:10=
pt;"><div><br>I accept<br></div>=0A<blockquote id=3D"replyBlockquote" webma=
il=3D"1" style=3D"border-left: 2px solid blue; margin-left: 8px; padding-le=
ft: 8px; font-size:10pt; color:black; font-family:verdana;">=0A<div id=3D"w=
mQuoteWrapper">=0A-------- Original Message --------<br>=0ASubject: DWF/CVE=
 - Acceptance of MITRE Terms of Use for CVE for<br>=0A<a href=3D"mailto:Soc=
ket_0x03@teraexe.com">Socket_0x03@teraexe.com</a><br>=0AFrom: <a href=3D"ma=
ilto:kurt@seifried.org">kurt@seifried.org</a><br>=0ADate: Fri, October 19, =
2018 7:25 am<br>=0ATo: <a href=3D"mailto:Socket_0x03@teraexe.com">Socket_0x=
03@teraexe.com</a><br>=0A<br>=0AThis is a confirmation email sent from CVE =
request form at <a href=3D"https://iwantacve.org">https://iwantacve.org</a>=
/ asking you to accept the MITRE CVE Terms of Use (assuming you filled out =
the CVE form and want one, we can't use the data until you accept the MITRE=
 CVE Terms of Use). <br>=0A<br>=0ASimply quote the email and reply with "I =
accept" at the top if you agree to the MITRE CVE Terms of Use and we will a=
dd a copy of the email to the DWF MITRE CVE Terms of Use acceptance data at=
 <a href=3D"https://github.com/distributedweaknessfiling/DWF-Legal-Acceptan=
ce/tree/master/Terms-Of-Use">https://github.com/distributedweaknessfiling/D=
WF-Legal-Acceptance/tree/master/Terms-Of-Use</a><br>=0A<br>=0AThe reason we=
 use a complete copy of the email is that it provides an artifact showing t=
hat the email address accepted the Terms of Use, when they were accepted an=
d so on. <br>=0A<br>=0AIf you did not submit a CVE request to the DWF you c=
an safely ignore this message, however we may resend it at some point in th=
e future, if you don't want any future emails simply reply with "unsubscrib=
e" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address=
 to the block list so we don't spam you with these, please note that this w=
ill prevent you from being able to accept the MITRE CVE Terms of Use via th=
e DWF automatically in future (you'll have to manually ask). But again, if =
you have no idea what a CVE is then you can ignore this/ask to be added to =
the block list with no problems. <br>=0A<br>=0AMITRE CVE Terms of Use<br>=
=0A<br>=0ALICENSE<br>=0A<br>=0ASubmissions: For all materials you submit to=
 the Common Vulnerabilities and Exposures (CVE=C3=82=C2=AE), you hereby gra=
nt to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs=
) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocab=
le copyright license to reproduce, prepare derivative works of, publicly di=
splay, publicly perform, sublicense, and distribute such materials and deri=
vative works. Unless required by applicable law or agreed to in writing, yo=
u provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITI=
ONS OF ANY KIND, either express or implied, including, without limitation, =
any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, o=
r FITNESS FOR A PARTICULAR PURPOSE.<br>=0A<br>=0ACVE Usage: MITRE hereby gr=
ants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, ir=
revocable copyright license to reproduce, prepare derivative works of, publ=
icly display, publicly perform, sublicense, and distribute Common Vulnerabi=
lities and Exposures (CVE=C3=82=C2=AE). Any copy you make for such purposes=
 is authorized provided that you reproduce MITRE's copyright designation an=
d this license in any such copy.<br>=0A<br>=0ADISCLAIMERS<br>=0A<br>=0AALL =
DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVI=
DED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRES=
ENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUST=
EES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR I=
MPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFOR=
MATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF ME=
RCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>=0A<br>=0AA copy is a=
vailable at <a href=3D"https://github.com/distributedweaknessfiling/DWF-Leg=
al-Acceptance/blob/master/Terms-Of-Use.md">https://github.com/distributedwe=
aknessfiling/DWF-Legal-Acceptance/blob/master/Terms-Of-Use.md</a><br>=0A<br=
>=0ATo contact the DWF either hit reply, or email <a href=3D"mailto:kurt@se=
ifried.org">kurt@seifried.org</a> manually with your question/concerns/etc.=
 <br>=0A<br>=0A=0A</div>=0A</blockquote></span></body></html>
