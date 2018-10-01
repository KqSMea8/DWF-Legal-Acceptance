Delivered-To: kurt@seifried.org
Received: by 2002:a9d:2363:0:0:0:0:0 with SMTP id k32-v6csp4802270otd;
        Mon, 17 Sep 2018 18:20:38 -0700 (PDT)
X-Received: by 2002:a63:9e41:: with SMTP id r1-v6mr25142577pgo.362.1537233638537;
        Mon, 17 Sep 2018 18:20:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1537233638; cv=none;
        d=google.com; s=arc-20160816;
        b=wm4k0zXSJ/+0JU8S31PgzvWN9UdenqbgNPSXf9axBZVW8oI0ihv9HxhrNrtAzSRsep
         TQmj5yF/w/CKIvb6JZB1ZC0mGRttsE41e1tLe7boPTTShN6n6BVoCUVCv9C2eHVWGoIL
         dVl5LA8oO54m7m3P0dfH+beUSQhBVKhVY5D02lW8xaC3ofdjLn5wzQt7r0TEBqZXBVbo
         NsTI5ECRWMT/p1xeB1pNH/0/NpMdGdKjn/LHD6rxibhQns/ryryJYH0QDADUrKteAfIS
         Kz+f9ikYFWCq1FMshLsDmVr7+m7TBLwHVoAovSXc9Z8z7/uARhatsg87Nsemoh8Gvq5x
         liJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :dkim-signature;
        bh=nJqSCb2RASLm5LaDRvKv8LOye5z+uY8iGG+3/XhgDFk=;
        b=un29gVlF6QSFDF0cJ7uwpnwEclwaYiwrffzJ4qih1C2ccIXhK09SgvwSUdqKUg5W2c
         bIOkFFUDmTxLM/wvmCcwHp+JDybS34eUuDDfyqnElcz5SkKu5oqxjOALyIOn8G77S14l
         GfeGmCRIzNEmBo7rAggaERPU8pMKCuC27MfhfAM/2+B+k+NP3BJ3pa8jsLglCnu7gwt+
         RrdE0gTP+2B9bXlklNZqicrElxop/JDVoSos2Zs4xts8WrDdD11WDfmebBOa3kiEDVpm
         mggHn9J5ubQxTOYvxhI/4+nRHIWMWoySM/3EqmaSOODVG8E7kg5ZEh8o082CyoeLflfx
         hX+g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@stormeye-io.20150623.gappssmtp.com header.s=20150623 header.b=AZRZDRjt;
       spf=neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of windham.wong@stormeye.io) smtp.mailfrom=windham.wong@stormeye.io
Return-Path: <windham.wong@stormeye.io>
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p3-v6sor1298173pfn.102.2018.09.17.18.20.38
        for <kurt@seifried.org>
        (Google Transport Security);
        Mon, 17 Sep 2018 18:20:38 -0700 (PDT)
Received-SPF: neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of windham.wong@stormeye.io) client-ip=209.85.220.41;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@stormeye-io.20150623.gappssmtp.com header.s=20150623 header.b=AZRZDRjt;
       spf=neutral (google.com: 209.85.220.41 is neither permitted nor denied by best guess record for domain of windham.wong@stormeye.io) smtp.mailfrom=windham.wong@stormeye.io
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=stormeye-io.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version;
        bh=nJqSCb2RASLm5LaDRvKv8LOye5z+uY8iGG+3/XhgDFk=;
        b=AZRZDRjt7bvArezM155JrnNE1zDhBDncaUiu9mDqwfs+xgSAsbesrP7TTc2RdvEljc
         +O3GAUzXarL7HWO5Ilb0vAW+xm5j0Wycy0V+CUlkmEAj+/aiXtlxaP5jp5PIZPtl95Lw
         IQ3BdDmTzi6eUkgulO1HYgQpF/USV6YWXTRtcMfY9L6XvQYpJdrfA4jc93rhtIKZop1P
         oySVrvIWtLVrvWs2nwn2fXq2Uo6/T3/jF3khRQ0kodK0C5t9+8Da8fOshN/CVePoOgmB
         Un7BaE/HN57cxplfiKPJYx9P0QkSY4Uvjphllt+aoPNtqkrk2Tw5iw1Nqr0c18ni+cUN
         0i0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version;
        bh=nJqSCb2RASLm5LaDRvKv8LOye5z+uY8iGG+3/XhgDFk=;
        b=VGH4xlKCkvwtc1bZiMLa98bXQLEjA0mkVWZl1/jUkXG84EtRE+m9OpGmKrf+k4+enQ
         JnRtBaKGa43GF1SjZLTVMDe2T+W0GWqQyvUyQsJRCN0IMJt8gd0i/ld9Rf2YU6QXY1fA
         WtKpDaf5mzp9DPuz/EXxeVSQfFoouRG1ZmIQAzfLnxOsYcNE6xQXZKztGj4L1BL+5WpI
         MOYYMjeKc83sLAkEer5YTEySQ/NHYHHQJxMdu5xkvOCeHkB2qTGTdZQpNnRDKi0RXHgX
         drIkd0nrE52J5g6CwDzvTL9V3sAtdtwa/EP9MBUeDZJ+ypcI3NAJfC70eAcgRJLauxlB
         Uv/A==
X-Gm-Message-State: APzg51A//bVz2R35MPvZVYFqhF6ZXQi1+A0vH9fkXmGRjPEZ9NkMS6mO
	GvUpBog9vyHWO/v6Sh97lDLjeH75gzI=
X-Google-Smtp-Source: ANB0VdY0M7SZLdh1Dwi+7efKvTxh6rf+JYZMj2aTQ1GkfXex1dLRYOVSCoEToYUaJBhlGnt2iaN3TQ==
X-Received: by 2002:a62:198e:: with SMTP id 136-v6mr28359168pfz.103.1537233637656;
        Mon, 17 Sep 2018 18:20:37 -0700 (PDT)
Return-Path: <windham.wong@stormeye.io>
Received: from DESKTOP-KK8K7IL (n119237107143.netvigator.com. [119.237.107.143])
        by smtp.gmail.com with ESMTPSA id p3-v6sm20967959pfo.130.2018.09.17.18.20.36
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Sep 2018 18:20:36 -0700 (PDT)
Date: Tue, 18 Sep 2018 09:20:38 +0800
From: Windham Wong <windham.wong@stormeye.io>
To: "=?utf-8?Q?kurt=40seifried.org?=" <kurt@seifried.org>
Message-ID: <1537233612.local-1703d7da-3ad0-v1.4.2-f587b7b7@getmailspring.com>
In-Reply-To: <20180914001913.1024.67955@shiny-2.local>
References: <20180914001913.1024.67955@shiny-2.local>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 windham.wong@stormeye.io
X-Mailer: Mailspring
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="5ba052e6_0_6f36743"

--5ba052e6_0_6f36743
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


I accept
Sent from Mailspring (https://link.getmailspring.com/link/1537233612.loca=
l-1703d7da-3ad0-v1.4.2-f587b7b7=40getmailspring.com/0=3Fredirect=3Dhttps%=
3A%2=46%2=46getmailspring.com%2=46&recipient=3Da3VydEBzZWlmcmllZC5vcmc%3D=
), the best free email app for work
On 9=E6=9C=88 14 2018, at 8:19 =E6=97=A9=E4=B8=8A, kurt=40seifried.org wr=
ote:
>
> This is a confirmation email sent from CVE request form at https://iwan=
tacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you =
filled out the CVE form and want one, we can't use the data until you acc=
ept the MITRE CVE Terms of Use).
> Simply quote the email and reply with =22I accept=22 at the top if you =
agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DW=46 MITRE CVE Terms of Use acceptance data at https://github.com/=
distributedweaknessfiling/DW=46-Legal-Acceptance/tree/master/Terms-Of-Use=

> The reason we use a complete copy of the email is that it provides an a=
rtifact showing that the email address accepted the Terms of Use, when th=
ey were accepted and so on.
> If you did not submit a CVE request to the DW=46 you can safely ignore =
this message, however we may resend it at some point in the future, if yo=
u don't want any future emails simply reply with =22unsubscribe=22 or =22=
DON'T SEND ME THIS EMAIL EVER AGAIN=22 and I'll add your email address to=
 the block list so we don't spam you with these, please note that this wi=
ll prevent you from being able to accept the MITRE CVE Terms of Use via t=
he DW=46 automatically in future (you'll have to manually ask). But again=
, if you have no idea what a CVE is then you can ignore this/ask to be ad=
ded to the block list with no problems.
> MITRE CVE Terms of Use
> LICENSE
> Submissions: =46or all materials you submit to the Common Vulnerabiliti=
es and Exposures (CVE=EF=BF=BD=EF=BF=BD), you hereby grant to The MITRE C=
orporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, =
worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright =
license to reproduce, prepare derivative works of, publicly display, publ=
icly perform, sublicense, and distribute such materials and derivative wo=
rks. Unless required by applicable law or agreed to in writing, you provi=
de such materials on an =22AS IS=22 BASIS, WITHOUT WARRANTIES OR CONDITIO=
NS O=46 ANY KIND, either express or implied, including, without limitatio=
n, any warranties or conditions of TITLE, NON-IN=46RINGEMENT, MERCHANTABI=
LITY, or =46ITNESS =46OR A PARTICULAR PURPOSE.
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusiv=
e, no-charge, royalty-free, irrevocable copyright license to reproduce, p=
repare derivative works of, publicly display, publicly perform, sublicens=
e, and distribute Common Vulnerabilities and Exposures (CVE=EF=BF=BD=EF=BF=
=BD). Any copy you make for such purposes is authorized provided that you=
 reproduce MITRE's copyright designation and this license in any such cop=
y.
> DISCLAIMERS
> ALL DOCUMENTS AND THE IN=46ORMATION CONTAINED THEREIN PROVIDED BY MITRE=
 ARE PROVIDED ON AN =22AS IS=22 BASIS AND THE CONTRIBUTOR, THE ORGANIZATI=
ON HE/SHE REPRESENTS OR IS SPONSORED BY (I=46 ANY), THE MITRE CORPORATION=
, ITS BOARD O=46 TRUSTEES, O=46=46ICERS, AGENTS, AND EMPLOYEES, DISCLAIM =
ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARR=
ANTY THAT THE USE O=46 THE IN=46ORMATION THEREIN WILL NOT IN=46RINGE ANY =
RIGHTS OR ANY IMPLIED WARRANTIES O=46 MERCHANTABILITY OR =46ITNESS =46OR =
A PARTICULAR PURPOSE.
> A copy is available at https://github.com/distributedweaknessfiling/DW=46=
-Legal-Acceptance/blob/master/Terms-Of-Use.md
> To contact the DW=46 either hit reply, or email kurt=40seifried.org man=
ually with your question/concerns/etc.
--5ba052e6_0_6f36743
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<br><div><span style=3D=22color:rgb(35, 31, 32)=22><font style=3D=22font-=
size:14.5px=22><font style=3D=22font-family:Nylas-Pro, Helvetica, &quot;L=
ucidia Grande&quot;, sans-serif=22>I accept</font></font></span></div><br=
><div><signature id=3D=22initial=22><div><div>Sent from <a href=3D=22http=
s://link.getmailspring.com/link/1537233612.local-1703d7da-3ad0-v1.4.2-f58=
7b7b7=40getmailspring.com/0=3Fredirect=3Dhttps%3A%2=46%2=46getmailspring.=
com%2=46&amp;recipient=3Da3VydEBzZWlmcmllZC5vcmc%3D=22>Mailspring</a>, th=
e best free email app for work</div></div></signature></div><div class=3D=
=22gmail=5Fquote=5Fattribution=22>On 9=E6=9C=88 14 2018, at 8:19 =E6=97=A9=
=E4=B8=8A, kurt=40seifried.org wrote:</div><blockquote><br><div><div>This=
 is a confirmation email sent from CVE request form at https://iwantacve.=
org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled=
 out the CVE form and want one, we can't use the data until you accept th=
e MITRE CVE Terms of Use).</div><br><div>Simply quote the email and reply=
 with =22I accept=22 at the top if you agree to the MITRE CVE Terms of Us=
e and we will add a copy of the email to the DW=46 MITRE CVE Terms of Use=
 acceptance data at https://github.com/distributedweaknessfiling/DW=46-Le=
gal-Acceptance/tree/master/Terms-Of-Use</div><br><div>The reason we use a=
 complete copy of the email is that it provides an artifact showing that =
the email address accepted the Terms of Use, when they were accepted and =
so on.</div><br><div>If you did not submit a CVE request to the DW=46 you=
 can safely ignore this message, however we may resend it at some point i=
n the future, if you don't want any future emails simply reply with =22un=
subscribe=22 or =22DON'T SEND ME THIS EMAIL EVER AGAIN=22 and I'll add yo=
ur email address to the block list so we don't spam you with these, pleas=
e note that this will prevent you from being able to accept the MITRE CVE=
 Terms of Use via the DW=46 automatically in future (you'll have to manua=
lly ask). But again, if you have no idea what a CVE is then you can ignor=
e this/ask to be added to the block list with no problems.</div><br><div>=
MITRE CVE Terms of Use</div><br><div>LICENSE</div><br><div>Submissions: =46=
or all materials you submit to the Common Vulnerabilities and Exposures (=
CVE=EF=BF=BD=EF=BF=BD), you hereby grant to The MITRE Corporation (MITRE)=
 and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exc=
lusive, no-charge, royalty-free, irrevocable copyright license to reprodu=
ce, prepare derivative works of, publicly display, publicly perform, subl=
icense, and distribute such materials and derivative works. Unless requir=
ed by applicable law or agreed to in writing, you provide such materials =
on an =22AS IS=22 BASIS, WITHOUT WARRANTIES OR CONDITIONS O=46 ANY KIND, =
either express or implied, including, without limitation, any warranties =
or conditions of TITLE, NON-IN=46RINGEMENT, MERCHANTABILITY, or =46ITNESS=
 =46OR A PARTICULAR PURPOSE.</div><br><div>CVE Usage: MITRE hereby grants=
 you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irre=
vocable copyright license to reproduce, prepare derivative works of, publ=
icly display, publicly perform, sublicense, and distribute Common Vulnera=
bilities and Exposures (CVE=EF=BF=BD=EF=BF=BD). Any copy you make for suc=
h purposes is authorized provided that you reproduce MITRE's copyright de=
signation and this license in any such copy.</div><br><div>DISCLAIMERS</d=
iv><br><div>ALL DOCUMENTS AND THE IN=46ORMATION CONTAINED THEREIN PROVIDE=
D BY MITRE ARE PROVIDED ON AN =22AS IS=22 BASIS AND THE CONTRIBUTOR, THE =
ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (I=46 ANY), THE MITRE C=
ORPORATION, ITS BOARD O=46 TRUSTEES, O=46=46ICERS, AGENTS, AND EMPLOYEES,=
 DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED T=
O ANY WARRANTY THAT THE USE O=46 THE IN=46ORMATION THEREIN WILL NOT IN=46=
RINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=46 MERCHANTABILITY OR =46ITN=
ESS =46OR A PARTICULAR PURPOSE.</div><br><div>A copy is available at http=
s://github.com/distributedweaknessfiling/DW=46-Legal-Acceptance/blob/mast=
er/Terms-Of-Use.md</div><br><div>To contact the DW=46 either hit reply, o=
r email kurt=40seifried.org manually with your question/concerns/etc.</di=
v></div></blockquote><img class=3D=22mailspring-open=22 alt=3D=22Open Tra=
cking=22 width=3D=220=22 height=3D=220=22 style=3D=22border:0; width:0; h=
eight:0;=22 src=3D=22https://link.getmailspring.com/open/1537233612.local=
-1703d7da-3ad0-v1.4.2-f587b7b7=40getmailspring.com=3Frecipient=3Da3VydEBz=
ZWlmcmllZC5vcmc%3D=22>
--5ba052e6_0_6f36743--

