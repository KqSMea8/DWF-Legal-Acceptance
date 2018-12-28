Delivered-To: kurt@seifried.org
Received: by 10.79.37.10 with SMTP id l10csp4134116ivl;
        Mon, 2 Oct 2017 14:52:16 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QALoQtc/+7DJbBjOZjEH9x/sRiu4EWuPodcz68Ec5MSILsXAOrkzjQjSfk54iUgKoDVe8JQ
X-Received: by 10.99.172.83 with SMTP id z19mr5760878pgn.46.1506981136226;
        Mon, 02 Oct 2017 14:52:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506981136; cv=none;
        d=google.com; s=arc-20160816;
        b=AyKiKGJetgIs97ySRX8x/bP6RL0ov6r3p2VjDdJf5OYPs7p4287gw+9RNykWxav618
         195y1B83VAPqWIxEvteHql8s+7RUkK0sxDUZoKIqphVb6BlBCioB0ZRpH3roNMTl1w0G
         PeYl2twCTN97xNJzr4y4/PwV1vTovDEYqMS5t6CHY+k/pilCRyY+WKu33+Dl0QCCOCML
         sbYCOuPivsx6Tngqnwr0m7yKJqO3qGKuYzWDdlPw9DOfGhOnGQisjIQPRuLh6LliIU0l
         /a29o0f52+pixJasX9e4qJUL244whB1zKV61NaEIaqUUNIOfIuEnA6BtmYiKNkVjiLUx
         i4yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=spamdiagnosticmetadata:spamdiagnosticoutput:mime-version
         :content-transfer-encoding:content-id:user-agent:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=3c+TMDJUl+3NwtUzWy6cRfUnHq7vx3KVUTszTLs2WOo=;
        b=VN+hi3aJdDmDW86fg+JODfEaEPLr5rmqddkofB5Z4DWdKzmX7bNTDOwK4akxaEKnmz
         tmD244PO1Y0OPQyFrjOx3gh1no/an6MAzh5FXx8T6q/ly8YOTiJBvsjamuCbmMVUfkka
         WNrP8Cr4m67C72xu3UOjtnEtRBm8Gq3xWVutkDmePSL26nS+JjS8i58pk4srYF275wpb
         48wwQvvM2jsljWEynlOYZ255M9S2ZEZgREzJzfZedBn11+5oQU5Bf5kOnofFYW/RcV2Y
         xrzsY9gewODkEGWZJewQhziITRJ89PjgIbVSD9+KGWxx3Hj0wznsk6wtCnlQuVN6vpoy
         6q/Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@tripwire.onmicrosoft.com header.s=selector1-tripwire-com header.b=XQ0ojDD4;
       spf=pass (google.com: domain of cyoung@tripwire.com designates 104.47.33.77 as permitted sender) smtp.mailfrom=cyoung@tripwire.com
Return-Path: <cyoung@tripwire.com>
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (mail-bn3nam01on0077.outbound.protection.outlook.com. [104.47.33.77])
        by mx.google.com with ESMTPS id 66si5450495pla.339.2017.10.02.14.52.15
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Oct 2017 14:52:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of cyoung@tripwire.com designates 104.47.33.77 as permitted sender) client-ip=104.47.33.77;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@tripwire.onmicrosoft.com header.s=selector1-tripwire-com header.b=XQ0ojDD4;
       spf=pass (google.com: domain of cyoung@tripwire.com designates 104.47.33.77 as permitted sender) smtp.mailfrom=cyoung@tripwire.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tripwire.onmicrosoft.com; s=selector1-tripwire-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=3c+TMDJUl+3NwtUzWy6cRfUnHq7vx3KVUTszTLs2WOo=;
 b=XQ0ojDD4T+9FYyXNRolkP6I08ADvhrpmCMCuagSTVxOI6mzObexdjh72j9Y9qoVY2ij3Iv8XyQNvzcC66iP6JFDWca9AMloV9BUeIICQ1LkaWmJTPF2gzi3vsd0tlFAsWOr3vL0HZrd8766ohpw9UMNdYQHogPC6+rJj6vWkq94=
Received: from MWHPR0201CA0049.namprd02.prod.outlook.com (10.167.160.26) by
 CY4PR02MB3205.namprd02.prod.outlook.com (10.165.88.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
 15.20.77.7; Mon, 2 Oct 2017 21:52:14 +0000
Received: from BL2FFO11FD035.protection.gbl (2a01:111:f400:7c09::112) by
 MWHPR0201CA0049.outlook.office365.com (2603:10b6:301:73::26) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.56.7 via Frontend
 Transport; Mon, 2 Oct 2017 21:52:13 +0000
Authentication-Results: spf=pass (sender IP is 174.47.84.215)
 smtp.mailfrom=tripwire.com; seifried.org; dkim=none (message not signed)
 header.d=none;seifried.org; dmarc=bestguesspass action=none
 header.from=tripwire.com;
Received-SPF: Pass (protection.outlook.com: domain of tripwire.com designates
 174.47.84.215 as permitted sender) receiver=protection.outlook.com;
 client-ip=174.47.84.215; helo=zgw01.tripwire.com;
Received: from zgw01.tripwire.com (174.47.84.215) by
 BL2FFO11FD035.mail.protection.outlook.com (10.173.161.131) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.77.10 via
 Frontend Transport; Mon, 2 Oct 2017 21:52:12 +0000
Received: from 127.0.0.1 (ZixVPM [127.0.0.1])
	by Outbound.tripwire.com (Proprietary) with SMTP id 1FEFD2A01CA
	for <kurt@seifried.org>; Mon,  2 Oct 2017 14:29:22 -0700 (PDT)
Received: from PDXED01.tripwire.com (unknown [192.168.192.5])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by zgw01.tripwire.com (Proprietary) with ESMTPS id 46C3D2A01A5
	for <kurt@seifried.org>; Mon,  2 Oct 2017 14:29:21 -0700 (PDT)
Received: from PDXHB01.tripwire.com (172.30.0.53) by PDXED01.tripwire.com
 (192.168.192.5) with Microsoft SMTP Server (TLS) id 14.3.361.1; Mon, 2 Oct
 2017 14:34:07 -0700
Received: from PDXMB01.tripwire.com ([fe80::215f:56b3:8a1f:78ba]) by
 PDXHB01.tripwire.com ([::1]) with mapi id 14.03.0361.001; Mon, 2 Oct 2017
 14:34:03 -0700
From: Craig Young <CYoung@tripwire.com>
To: "kurt@seifried.org" <kurt@seifried.org>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 cyoung@tripwire.com
Thread-Topic: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for
 cyoung@tripwire.com
Thread-Index: AQHTO7wd2uNMJJl7LE6n8+OnuOcYmqLRRyeA
Date: Mon, 2 Oct 2017 21:34:03 +0000
Message-ID: <E32C019F-A3F8-4107-8C70-45A381F29240@tripwire.com>
References: <20171002202159.11491.16011@slab.local>
In-Reply-To: <20171002202159.11491.16011@slab.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Microsoft-MacOutlook/f.24.0.170702
x-originating-ip: [172.16.97.75]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B2CED3E059AD9948BA701459836265D3@tripwire.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-VPM-MSG-ID: 5d07e348-377f-492e-944c-37691e1bbe0b
X-VPM-HOST: zgw01.tripwire.com
X-VPM-GROUP-ID: 54517827-678f-4ed4-8716-f0860fdf23f8
X-VPM-ENC-REGIME: Plaintext
X-VPM-IS-HYBRID: 0
Return-Path: cyoung@tripwire.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report:
	CIP:174.47.84.215;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10009020)(6009001)(39830400002)(376002)(346002)(2980300002)(438002)(377454003)(28244002)(13624006)(189002)(199003)(38564003)(24454002)(2900100001)(58126008)(54356999)(2501003)(47776003)(2906002)(86362001)(5180700001)(1730700003)(50986999)(356003)(76176999)(6116002)(966005)(82746002)(50466002)(478600001)(3846002)(102836003)(36756003)(8676002)(23676002)(8936002)(2950100002)(6916009)(5250100002)(5660300001)(106002)(189998001)(6306002)(316002)(53546010)(69596002)(305945005)(7736002)(5640700003)(81156014)(2351001)(106466001)(83506001)(229853002)(33656002)(81166006)(83716003)(6246003)(53416004)(221513004)(222073002);DIR:OUT;SFP:1101;SCL:1;SRVR:CY4PR02MB3205;H:zgw01.tripwire.com;FPR:;SPF:Pass;PTR:174-47-84-215.static.twtelecom.net;MX:1;A:1;LANG:en;
X-Microsoft-Exchange-Diagnostics: 1;BL2FFO11FD035;1:YOV+eCK3qd1OqZ9TtDQ59Zbij0aTW8T0TCjCOo9VlnzWUg8MYo5HrC/KcZ51LDj5KRdBh4vqbrjrFwydYbD+DatiKU8d9sKimXD0rs8ED3pGSo+IyNrQ29WbR0AOTovF
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1e719169-7274-4933-9d65-08d509dfd6dc
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(22001)(2017030254152)(8251501002)(2017052603199)(201703131423075)(201703031133081)(201702281549075);SRVR:CY4PR02MB3205;
X-Microsoft-Exchange-Diagnostics:
	1;CY4PR02MB3205;3:a49iuqTvzLKOVNegvt7vpaOUZLHKFn51gCqX/XSbA0Bncn0d94tChEjBSntm0UeSbn1dys3e1ErXJuL3i8Tw+zpEosOQq4SOn8qxb/6eIvypVT0rTI7kA5gj7UOcSMJ8W/lRDXIWEGxddaedddvY8i4G+FKWiPARIm0fTa77TYegVb/zzP1WtylJplr0LTfomzAyZMsCy5kQvj1y66T/KPPSh4XsxZfIfugieVqFVjWk8lGbz6eIom6ca0h7+Ko8UDEA8lthCQfnqlJSvwVmHbjQltNyiPyO5Z9yuEtN+lMSXr9sgw3hzHBz33S2OCeGnXzl0sTwPAqk+oW11YAkw4qCOkYkzw4HD/x4GExx2l4=;25:Dg+R9NFqt538Oey4O7rx0TGq2ypoTHrCLVxKwYNqajGLfTOcFxvfGXkKW7FaPoTMY5FEMC59qUGFQP4IBJaFd7BmvPxOmukK2Nn4SNmACRtrwKhkEt5curjBsEnrxIawUKeXVwf3dIe5lY4Bh6ibOSZoKHn156euC+nQ8MULS3ZXwnCdy/7A6OzEQgef1N7x8KpYpuGH4AHjkByPnyv7CnBdiX7lrphLQMDynbqu5vL3wvOTHqX+LOn1ywGHBCmMX8qFV6a/k1JsItp8+dONdQExdbcUNht+LEbSko2a5bTxPja57rFQBNlhBfwr/9Bz+b/H7M1Xin/2IM0pWIIOQQ==
X-MS-TrafficTypeDiagnostic: CY4PR02MB3205:
X-Microsoft-Exchange-Diagnostics:
	1;CY4PR02MB3205;31:kVULtLPH3paxR/VrH0IjNR+hM184URg23LfsHdwXyrAtf8SCb9BFpQ6/5kiwKLoUUH6LKtPIAMd1vYzxv7Tc+/O1VuuZcuo8MKEYL5heCSdOXqFqeG6GGzRf+csKSQuMhG4xmGrtxpy36B8twMx1tnAZ2gSYnkUcsyXjzoXJBXXM7og/mWhCJwUlXu+Udj886U2igLZTLMlzdeJhv/ihitMP0xRvEuxQK7bOjtTwvGs=;20:CBJ1UWuHWE1EAFEUIiYt6Grw/mqKuTDdsKRsp4W9UDlv9jXUSTa9qDUoispD5FZx2/lSQeb0k6ebtbYKNG14iquE7Q/NZCHL4ivcwPewkQ3jFxzVOeP5UGAQLYdHe9jADqTZqvliCOSl6uEIAlLEkZ5d9CdBlhfXbwMNVXVEtn7JWzttPZhW59Jvj1MxawZ+b2UdY6CediE9udO9Fe3XuYgqY0k/0S2h0SI6CRebMFeEc7AF5qncV6ZSQFaOnMpIQzrHlGiX86wHBdmycdvrc2Swihw6MBFRDVmngnsArzQfKe7nwX8wKDaN7OCjpI4if5yBbAVSHWk0NHxd50W8JbEevMBFTb5OcMePJY2sLxIgoLo+G8t++ChtD6alefbYdp1IKeBUa/zjktIJ7B96haKkrk14XgWfEUvemYUrXSWjX0wVvRdnbMxfuAHHCBqhJQNBpIaAEVHhv5Lci5QW/cHitTO47tB5K5U6S5TwVHg8P/PlTszGbaQ0YnInTN3g
X-Exchange-Antispam-Report-Test: UriScan:(277877686092717)(166708455590820);
X-Microsoft-Antispam-PRVS:
	<CY4PR02MB32052636A32684C83DDF3014AA7D0@CY4PR02MB3205.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(3002001)(10201501046)(93006095)(93004095)(100000703101)(100105400095)(6041248)(20161123562025)(20161123564025)(20161123558100)(20161123560025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);SRVR:CY4PR02MB3205;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:CY4PR02MB3205;
X-Microsoft-Exchange-Diagnostics:
	1;CY4PR02MB3205;4:zo9pOsMcSDZi19kQfF8v7rDVqMeMzMuGyq1o2IBu9lNyWYhhhb+H6yJkIuGk8t2fZGI0Itnvrj86oqSJM3v1RRkIty4wFgnWtvjCtNk8pN6okdOwpRSimDO+VqpkBB/aa9MO7Gb3Qwx910E8SsfijhhwKVEKAfpaCo4Uki+yon5E3XTmc+V75LKK3m8LZl3eCluDIK6NS2n/jJqlO7mv8r/Q0cgvI0HFCDzKD6zUTpz/5n4zD588RdUHSajaYh7qrHkcK8gPuEQUvUjixs7uihNr9aGQ3P3+ux5wkBQNz+rHBr9JinTLSJtgufR8aiD9ig7+ewdIdCU3yjTD0oswkg==
X-Forefront-PRVS: 0448A97BF2
X-Microsoft-Exchange-Diagnostics:
	=?utf-8?B?MTtDWTRQUjAyTUIzMjA1OzIzOmtQZUh5MTBGU1dsYTlmUjluL01qeFhVNUM0?=
 =?utf-8?B?dXRlTEN3QzBmMVljanY1a1VBRGFUeGtJeWwxRDlLS1hYSkxlbEFmTGRRek82?=
 =?utf-8?B?UUwrOFVROC96SzdPQlFxYlhkL2RFUGhoRWlxNHBSYjhiL2IxNmUrOTA1VmMy?=
 =?utf-8?B?eEFJd0hqLzBwOVp3OHg5RTVSZ1RHL3Z4U1hnVFhVbThZMjlZWjdhVDVtdHRh?=
 =?utf-8?B?T1YxSHk2L3lqQkwwdWpxR2I0b1IzMkQ0WFhJY0h3M0NTVkROWW5HaWs4bjh1?=
 =?utf-8?B?SHpWU3l4Q05UTkVqcEg3Y1ExVXExdXVtTFNGdXlTK01zOUlESy9XTXF3SmlI?=
 =?utf-8?B?TThGR21OdEFkTEtOaFJEakJIMm5BNXgxMlJ5NUxobUU3cFk2RHVTdGRmYU5E?=
 =?utf-8?B?MGpJSVk1bDdLMGVQUTZQdjd0S2Y5WXVJeVIyZFk1M01yaFJpTlhRNzlMSzQ5?=
 =?utf-8?B?U0VFTGxIa1U0SG1ZbVk0VHUxSXE5aHZ4M2w4U0FyaTNjUXV3dlpzUW9HanBj?=
 =?utf-8?B?WHh2WEJ1YlJMRGpJbFBIeGRmL21RMTgzR3AyME51RXNHWU04UlpEdUtGeDhm?=
 =?utf-8?B?QXE2NS9qa21pQlhDTUcyK3lSUVZtZnRjMlZhdXhCclNkT1JtTFBLRDlFRWtq?=
 =?utf-8?B?MkhocFd5NCtBM1FKSHhHOWQydkhsRHpQcFkvS1A5OVZqUmEzdGNSQ0VtR0dL?=
 =?utf-8?B?Mzg3RTlyMFdhOWxqTXBPeW1wMUdDY3I4d3BCK0lzV2lNUDFxenJETWlVcjd2?=
 =?utf-8?B?OCswYWFWSTNpUTQzSittaUhEQ1JSbnVlMytia3RsNkk4OXltOWIrUXZGc1M2?=
 =?utf-8?B?SE5XQXdJdkhTZHYyYmp1aHNXeXlzRUJqdHFuQUdkeTRPTTZHQ0xNTitueEY0?=
 =?utf-8?B?UDZGUmRodG90bkJQSExqS1k3bmxuRnpSdzk1SXRuVXVYY3lwTmxGK3JqRHl6?=
 =?utf-8?B?WllRUzN0NytERGNIY1YvWnliRlpOU0pQNWdnenJ5bHRYZTFBb2tJL0pjTC9H?=
 =?utf-8?B?TjdkenFzTFJJVml4cm9EZWhXS3kzQ0pmdWJkMkRHYVhkQ2dmMWhnYVN5L3h1?=
 =?utf-8?B?dmVRWmxtSTJzOVRmaHl3cjRVUitjR0t0aWM1R05Hb1lnN0cxbnFuM0Y1VVBW?=
 =?utf-8?B?TGlXVUFFZkt3QnU1YnZLOW1MWjYvc0ZJdWZKUmV6aWJIWVVkL1JFRU91N3JD?=
 =?utf-8?B?bmFadE9QRkNyZHQ3cXZLQTRFS3Vid2ZtUHFSTFhuaGNtME9nOStYcmloS0xM?=
 =?utf-8?B?OTB4eVJhMC9acGlVMzF3bDBDRzZtU25OQk9PVG9vMkNVdVZyaExRRS9XRzNv?=
 =?utf-8?B?bHZZMGJkVndBM1pzN29WbGh1UTlUR0V1KzhscjRrTEt2NUFNaGNNZEFTek4y?=
 =?utf-8?B?RXk2MjZFZHp3YnRXTGR5aEtMQ09OMXg5SnFKb1VHdDExTWRzODVQZ3dqdWZR?=
 =?utf-8?B?SjBBSUc0S1JiR0FSbTBqR0pkRmN4eFlLSDgvaDZBdm9ZY2ZtQUZQSXpKNU5v?=
 =?utf-8?B?VkhyYVFoakxJTi82eFBpeW1hU0V0ZmYwL0xVVytpcWVCZU52WUFaRnIwcW9L?=
 =?utf-8?B?SHhLR0pWUVVlaVpQTTY0U2t2V3ArZ2VCU1hUbE1vdWRtcVZyQTJrWXJTM3Zi?=
 =?utf-8?B?UklQaWsvckpPMHNSeThlbG9vY2QxY3lWWVl6RERkaENmeExINy96UDRXK285?=
 =?utf-8?B?cHZiL2hnY2JRSURTTUx2T1VBby84V2xod3lLV1Qxa1ZMOTI3OFQxQWdUMkFN?=
 =?utf-8?B?R3JNZkRRcFZYdUVXUWtoemVjdUhrbkxXeGtVTzBlZ1prYmh3bjFDaHh4dE1p?=
 =?utf-8?B?VHp2R1ZJU3FFRll1QjdqMktJWERvOVpaV1E4Mk11V1dDWnpNUVdKby9mRTls?=
 =?utf-8?B?OFlKUHhoSHRJY0pFdGpmQ3IvaWpaQncrd1RvZnRTZ2hnNGM0UzRvc2pDNDB5?=
 =?utf-8?B?TUFEMlRld1lnPT0=?=
X-Microsoft-Exchange-Diagnostics:
	1;CY4PR02MB3205;6:s/1mDU5SJbeViSj2uQKngqSJfS+Nouk8YFjOfyRe7gXP+PiVr8nLcuz+jpKpmUdMRQHT38Vm3Us8wJ3CQGrKkFsYs184wdlPWLnUzH8SKE3YNKJymN4I5e84HlioATACM+1hwSHTOTXQV/rTqNh3ijTTekY6cA3WqKGKTNXE8GnPPTF04EDDzoEQei7JDAjDhmBix6xGgLdyFi3OJpDZU1U+w/0TeYZS5o7w3wkT1/BF7IC4Xo8cdycyPmzMmRaXP3mWnC6JaZMYADqHWB2v3j/Y9YwN9aJT5PL/AEHydl6jMfRA+huEklDbqYjTxvnMlpS78shqmUflHtr0SglqsQ==;5:cfiF3Ing07Wbddog7Y0KMkgb18IRicA3TvOeFdCd4s6As50HtI9NWrkAriJrYcfYOUfBQnOT6anRynt0T5PeVY5VBYVQonp8rGudb7qDXWas9EICWROdSXp+RbLxUbW6eEV7t0EXCfPC4cpNYj4ujj0YFsvc2c29GU2Q7yNd1dU=;24:IyI4ZfukZKP2YWeU+qbphMijGImpmVX1zJMrTdDdPQJjGyKJYp0dOBCwYpZASs0UpMAf0uLTY0IQ//TtrnExv5de/xffurrc5s/7PO12iv4=;7:s6WBqHpQiuVvuNqHrZn2mQMs/X+JvaSBcolSZKajYlqutNAAHTgU0HWj06y4asWSMdK0fiNSHoBmW7jJGpxK97eAEBODDHu2Qnc+DLPcbvMdEhBPBG2skZx1O1/flZddZ8FsgDCemapycVIe0/M+QQA+V2kuz3ajSHZ2rFalkNp755pH0wD08cqFBuFJamLfgmlQGOZRGZEfNnfNl/W/WAMZxXRb6wFk326hDl4zDI0=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: tripwire.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2017 21:52:12.8060
 (UTC)
X-MS-Exchange-CrossTenant-Id: c337bf2a-9c18-4772-a0be-2d0457489914
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=c337bf2a-9c18-4772-a0be-2d0457489914;Ip=[174.47.84.215];Helo=[zgw01.tripwire.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB3205

SSBhY2NlcHQNCg0KT24gMTAvMi8xNywgNDoyMiBQTSwgImt1cnRAc2VpZnJpZWQub3JnIiA8a3Vy
dEBzZWlmcmllZC5vcmc+IHdyb3RlOg0KDQogICAgVGhpcyBpcyBhIGNvbmZpcm1hdGlvbiBlbWFp
bCBzZW50IGZyb20gQ1ZFIHJlcXVlc3QgZm9ybSBhdCBodHRwczovL2l3YW50YWN2ZS5vcmcvIGFz
a2luZyB5b3UgdG8gYWNjZXB0IHRoZSBNSVRSRSBDVkUgVGVybXMgb2YgVXNlIChhc3N1bWluZyB5
b3UgZmlsbGVkIG91dCB0aGUgQ1ZFIGZvcm0gYW5kIHdhbnQgb25lLCB3ZSBjYW4ndCB1c2UgdGhl
IGRhdGEgdW50aWwgeW91IGFjY2VwdCB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSkuIA0KICAg
IA0KICAgIFNpbXBseSBxdW90ZSB0aGUgZW1haWwgYW5kIHJlcGx5IHdpdGggIkkgYWNjZXB0IiBh
dCB0aGUgdG9wIGlmIHlvdSBhZ3JlZSB0byB0aGUgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZSBhbmQg
d2Ugd2lsbCBhZGQgYSBjb3B5IG9mIHRoZSBlbWFpbCB0byB0aGUgRFdGIE1JVFJFIENWRSBUZXJt
cyBvZiBVc2UgYWNjZXB0YW5jZSBkYXRhIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9kaXN0cmlidXRl
ZHdlYWtuZXNzZmlsaW5nL0RXRi1MZWdhbC1BY2NlcHRhbmNlL3RyZWUvbWFzdGVyL1Rlcm1zLU9m
LVVzZQ0KICAgIA0KICAgIFRoZSByZWFzb24gd2UgdXNlIGEgY29tcGxldGUgY29weSBvZiB0aGUg
ZW1haWwgaXMgdGhhdCBpdCBwcm92aWRlcyBhbiBhcnRpZmFjdCBzaG93aW5nIHRoYXQgdGhlIGVt
YWlsIGFkZHJlc3MgYWNjZXB0ZWQgdGhlIFRlcm1zIG9mIFVzZSwgd2hlbiB0aGV5IHdlcmUgYWNj
ZXB0ZWQgYW5kIHNvIG9uLiANCiAgICANCiAgICBJZiB5b3UgZGlkIG5vdCBzdWJtaXQgYSBDVkUg
cmVxdWVzdCB0byB0aGUgRFdGIHlvdSBjYW4gc2FmZWx5IGlnbm9yZSB0aGlzIG1lc3NhZ2UsIGhv
d2V2ZXIgd2UgbWF5IHJlc2VuZCBpdCBhdCBzb21lIHBvaW50IGluIHRoZSBmdXR1cmUsIGlmIHlv
dSBkb24ndCB3YW50IGFueSBmdXR1cmUgZW1haWxzIHNpbXBseSByZXBseSB3aXRoICJ1bnN1YnNj
cmliZSIgb3IgIkRPTidUIFNFTkQgTUUgVEhJUyBFTUFJTCBFVkVSIEFHQUlOIiBhbmQgSSdsbCBh
ZGQgeW91ciBlbWFpbCBhZGRyZXNzIHRvIHRoZSBibG9jayBsaXN0IHNvIHdlIGRvbid0IHNwYW0g
eW91IHdpdGggdGhlc2UsIHBsZWFzZSBub3RlIHRoYXQgdGhpcyB3aWxsIHByZXZlbnQgeW91IGZy
b20gYmVpbmcgYWJsZSB0byBhY2NlcHQgdGhlIE1JVFJFIENWRSBUZXJtcyBvZiBVc2UgdmlhIHRo
ZSBEV0YgYXV0b21hdGljYWxseSBpbiBmdXR1cmUgKHlvdSdsbCBoYXZlIHRvIG1hbnVhbGx5IGFz
aykuIEJ1dCBhZ2FpbiwgaWYgeW91IGhhdmUgbm8gaWRlYSB3aGF0IGEgQ1ZFIGlzIHRoZW4geW91
IGNhbiBpZ25vcmUgdGhpcy9hc2sgdG8gYmUgYWRkZWQgdG8gdGhlIGJsb2NrIGxpc3Qgd2l0aCBu
byBwcm9ibGVtcy4gDQogICAgDQogICAgTUlUUkUgQ1ZFIFRlcm1zIG9mIFVzZQ0KICAgIA0KICAg
IExJQ0VOU0UNCiAgICANCiAgICBTdWJtaXNzaW9uczogRm9yIGFsbCBtYXRlcmlhbHMgeW91IHN1
Ym1pdCB0byB0aGUgQ29tbW9uIFZ1bG5lcmFiaWxpdGllcyBhbmQgRXhwb3N1cmVzIChDVkU/Pyks
IHlvdSBoZXJlYnkgZ3JhbnQgdG8gVGhlIE1JVFJFIENvcnBvcmF0aW9uIChNSVRSRSkgYW5kIGFs
bCBDVkUgTnVtYmVyaW5nIEF1dGhvcml0aWVzIChDTkFzKSBhIHBlcnBldHVhbCwgd29ybGR3aWRl
LCBub24tZXhjbHVzaXZlLCBuby1jaGFyZ2UsIHJveWFsdHktZnJlZSwgaXJyZXZvY2FibGUgY29w
eXJpZ2h0IGxpY2Vuc2UgdG8gcmVwcm9kdWNlLCBwcmVwYXJlIGRlcml2YXRpdmUgd29ya3Mgb2Ys
IHB1YmxpY2x5IGRpc3BsYXksIHB1YmxpY2x5IHBlcmZvcm0sIHN1YmxpY2Vuc2UsIGFuZCBkaXN0
cmlidXRlIHN1Y2ggbWF0ZXJpYWxzIGFuZCBkZXJpdmF0aXZlIHdvcmtzLiBVbmxlc3MgcmVxdWly
ZWQgYnkgYXBwbGljYWJsZSBsYXcgb3IgYWdyZWVkIHRvIGluIHdyaXRpbmcsIHlvdSBwcm92aWRl
IHN1Y2ggbWF0ZXJpYWxzIG9uIGFuICJBUyBJUyIgQkFTSVMsIFdJVEhPVVQgV0FSUkFOVElFUyBP
UiBDT05ESVRJT05TIE9GIEFOWSBLSU5ELCBlaXRoZXIgZXhwcmVzcyBvciBpbXBsaWVkLCBpbmNs
dWRpbmcsIHdpdGhvdXQgbGltaXRhdGlvbiwgYW55IHdhcnJhbnRpZXMgb3IgY29uZGl0aW9ucyBv
ZiBUSVRMRSwgTk9OLUlORlJJTkdFTUVOVCwgTUVSQ0hBTlRBQklMSVRZLCBvciBGSVRORVNTIEZP
UiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4NCiAgICANCiAgICBDVkUgVXNhZ2U6IE1JVFJFIGhlcmVi
eSBncmFudHMgeW91IGEgcGVycGV0dWFsLCB3b3JsZHdpZGUsIG5vbi1leGNsdXNpdmUsIG5vLWNo
YXJnZSwgcm95YWx0eS1mcmVlLCBpcnJldm9jYWJsZSBjb3B5cmlnaHQgbGljZW5zZSB0byByZXBy
b2R1Y2UsIHByZXBhcmUgZGVyaXZhdGl2ZSB3b3JrcyBvZiwgcHVibGljbHkgZGlzcGxheSwgcHVi
bGljbHkgcGVyZm9ybSwgc3VibGljZW5zZSwgYW5kIGRpc3RyaWJ1dGUgQ29tbW9uIFZ1bG5lcmFi
aWxpdGllcyBhbmQgRXhwb3N1cmVzIChDVkU/PykuIEFueSBjb3B5IHlvdSBtYWtlIGZvciBzdWNo
IHB1cnBvc2VzIGlzIGF1dGhvcml6ZWQgcHJvdmlkZWQgdGhhdCB5b3UgcmVwcm9kdWNlIE1JVFJF
J3MgY29weXJpZ2h0IGRlc2lnbmF0aW9uIGFuZCB0aGlzIGxpY2Vuc2UgaW4gYW55IHN1Y2ggY29w
eS4NCiAgICANCiAgICBESVNDTEFJTUVSUw0KICAgIA0KICAgIEFMTCBET0NVTUVOVFMgQU5EIFRI
RSBJTkZPUk1BVElPTiBDT05UQUlORUQgVEhFUkVJTiBQUk9WSURFRCBCWSBNSVRSRSBBUkUgUFJP
VklERUQgT04gQU4gIkFTIElTIiBCQVNJUyBBTkQgVEhFIENPTlRSSUJVVE9SLCBUSEUgT1JHQU5J
WkFUSU9OIEhFL1NIRSBSRVBSRVNFTlRTIE9SIElTIFNQT05TT1JFRCBCWSAoSUYgQU5ZKSwgVEhF
IE1JVFJFIENPUlBPUkFUSU9OLCBJVFMgQk9BUkQgT0YgVFJVU1RFRVMsIE9GRklDRVJTLCBBR0VO
VFMsIEFORCBFTVBMT1lFRVMsIERJU0NMQUlNIEFMTCBXQVJSQU5USUVTLCBFWFBSRVNTIE9SIElN
UExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gQU5ZIFdBUlJBTlRZIFRIQVQgVEhF
IFVTRSBPRiBUSEUgSU5GT1JNQVRJT04gVEhFUkVJTiBXSUxMIE5PVCBJTkZSSU5HRSBBTlkgUklH
SFRTIE9SIEFOWSBJTVBMSUVEIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZIE9SIEZJVE5F
U1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLg0KICAgIA0KICAgIEEgY29weSBpcyBhdmFpbGFi
bGUgYXQgaHR0cHM6Ly9naXRodWIuY29tL2Rpc3RyaWJ1dGVkd2Vha25lc3NmaWxpbmcvRFdGLUxl
Z2FsLUFjY2VwdGFuY2UvYmxvYi9tYXN0ZXIvVGVybXMtT2YtVXNlLm1kDQogICAgDQogICAgVG8g
Y29udGFjdCB0aGUgRFdGIGVpdGhlciBoaXQgcmVwbHksIG9yIGVtYWlsIGt1cnRAc2VpZnJpZWQu
b3JnIG1hbnVhbGx5IHdpdGggeW91ciBxdWVzdGlvbi9jb25jZXJucy9ldGMuIA0KICAgIA0KICAg
IA0KDQo=

