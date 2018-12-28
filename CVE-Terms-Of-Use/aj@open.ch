Delivered-To: kurt@seifried.org
Received: by 10.157.1.148 with SMTP id e20csp515775ote;
        Thu, 14 Sep 2017 03:05:00 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7hf7EFDWVAAHS53APRIuAb6Da7Hwd3fYzRihwHRjGDqfOxJYEiPQE0qNVg85Yyy5jtczIC
X-Received: by 10.80.194.9 with SMTP id n9mr12634785edf.17.1505383500579;
        Thu, 14 Sep 2017 03:05:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505383500; cv=none;
        d=google.com; s=arc-20160816;
        b=oWbfHqjKyqlSfHOyPgzNK0p7ixuuzdtndM+eP66NQPhKo0QPycDmYnw0IpPPACuNSQ
         ip03CevO5NCnaqpzwiK3E+z/QuC1sojQCrCxY1q/3BLepb2NdTcyqaasOFu9vBKRLKXC
         0RPrdZvlbEqVJnNhFZMkNkT3WlZh8zKNs1wILB7UWfVYkmjOb4R/4YruZtfqAiDxjk7j
         fB8UqyibsX65z4Sq+D8yImuQWByWMSkcF+1nQEmaJ9kHtZ98IHevVor3qmLw+h2NxnnH
         K/EXgN5Dgut5L6kIxtWvzkcNkAWypyDRMIhVXYSQqZzFeXnOn/Mx/mgalpkbIc0qj3Nt
         DBOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=spamdiagnosticmetadata:spamdiagnosticoutput:user-agent:organization
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature:dkim-signature
         :arc-authentication-results;
        bh=vRiFzLYTGBpijQp2VXZNJsAb1U2Ks5U1pTpXF2b4OJQ=;
        b=Rdl7IHp2s+7p03h9PPqdo5AeUkpSZyLMtGHGmhdOWH/eZztqZU7uebmxoV+xxxez6O
         sBSMYBA4MmveRn2f8bvb38XE+MfLRDj7TSc/g3iRum9IWCdpyfHNo6u/kdRHJd8Qg01L
         wx5giMZf95TA4fSFNaVj2GlnR8WiEgRL+ut0UZyyqjA+rmo7QfQiNH0QVQdZg1sxDSez
         IMRePmblbSmBnB1X74HRr6lQ5P7i5mWtFi3aX5XtxRtbKIzaGeiMETMOuzRmQ7ie3+BA
         TlerdLHa+RPJVyXYE42oRnoZlBaKG/gpifqEpinBS5VAoovLkUCEOKyaNhDY0pbfVo/S
         4nfA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@open.ch header.s=mail-f227ebce-201708 header.b=AtlmEvgZ;
       dkim=pass header.i=@opensystemsag.onmicrosoft.com header.s=selector1-open-ch header.b=X0gnOo1N;
       spf=pass (google.com: domain of aj@open.ch designates 213.156.227.108 as permitted sender) smtp.mailfrom=aj@open.ch;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=open.ch
Return-Path: <aj@open.ch>
Received: from mx1.open.ch (mx1.open.ch. [213.156.227.108])
        by mx.google.com with ESMTPS id o30si10077345edo.159.2017.09.14.03.05.00
        for <kurt@seifried.org>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 03:05:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of aj@open.ch designates 213.156.227.108 as permitted sender) client-ip=213.156.227.108;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@open.ch header.s=mail-f227ebce-201708 header.b=AtlmEvgZ;
       dkim=pass header.i=@opensystemsag.onmicrosoft.com header.s=selector1-open-ch header.b=X0gnOo1N;
       spf=pass (google.com: domain of aj@open.ch designates 213.156.227.108 as permitted sender) smtp.mailfrom=aj@open.ch;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=open.ch
Received: from mx1.open.ch (localhost [127.0.0.1])
	by mx1.open.ch (Mission Control Email Shield, 616) with SMTP id 3xtDfg5PQlz4X82
	for <kurt@seifried.org>; Thu, 14 Sep 2017 12:04:59 +0200 (MEST)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com (mail-he1eur02lp0183.outbound.protection.outlook.com [213.199.180.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.open.ch (Mission Control Email Shield, 616) with ESMTPS id 3xtDff4HNXz4X81
	for <kurt@seifried.org>; Thu, 14 Sep 2017 12:04:58 +0200 (MEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open.ch;
	s=mail-f227ebce-201708; t=1505383499;
	bh=ee+zT3lre+y0H+LkjnZ+x7iblUXqIXAibSGBYCnTFRc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=AtlmEvgZvoZE/r8vqJwu60TCuKbeXrPfrePnAg9TYZWgJEJcUgbWo2vORt8p8/9Kr
	 y5x3YQGpUXmQPyuX0sRP9NFX4BycTPA/NoTfjEZAo5V0NnZSz4JbZcoBOWE3RuHE8S
	 d0gZTOoS0AEd7n1xLndH1QWSpZ2kwqtf4AKG7NPw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=opensystemsag.onmicrosoft.com; s=selector1-open-ch;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=vRiFzLYTGBpijQp2VXZNJsAb1U2Ks5U1pTpXF2b4OJQ=;
 b=X0gnOo1NygiPzDJn59t49eDAQrYFcs/AO1pxsGpdRtpIF/PxL5Z7bUzNIVADKFYoHOILyDuy1JUQNN7u1JDBPfBh/jNA9VpJpwKFo0/bAi/xFNQ07jISWvVH+gAhNn8Pfl0aMx5LNLvj8dqeA6YUkoVsr/SE2OJCm5uvFXg3zdQ=
Received: from debian-aj (2a00:db0:8:a13::5) by
 AM4PR0501MB2724.eurprd05.prod.outlook.com (2603:10a6:200:5a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.56.11; Thu, 14
 Sep 2017 10:04:55 +0000
Date: Thu, 14 Sep 2017 12:04:48 +0200
From: Andreas Jaggi <aj@open.ch>
To: kurt@seifried.org
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for aj@open.ch
Message-ID: <20170914100447.GL15496@debian-aj>
References: <20170913203728.2669.74668@222.1.168.192.in-addr.arpa>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170913203728.2669.74668@222.1.168.192.in-addr.arpa>
Organization: Open Systems AG - http://www.open.ch
User-Agent: Mutt/1.5.23 (Linux 3.16.0-4-amd64)
X-Mailer: Mutt/1.5.23 (Linux 3.16.0-4-amd64)
X-Originating-IP: [2a00:db0:8:a13::5]
X-ClientProxiedBy: VI1PR0102CA0036.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::49) To AM4PR0501MB2724.eurprd05.prod.outlook.com
 (2603:10a6:200:5a::21)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fa96c2e8-7b4b-4c76-405c-08d4fb580d87
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(300000502095)(300135100095)(22001)(2017030254152)(300000503095)(300135400095)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);SRVR:AM4PR0501MB2724;
X-Microsoft-Exchange-Diagnostics:
	1;AM4PR0501MB2724;3:zvsVpLEVUZ2Cd8R9ENYgSgx30J+MoYWflR8vIAdDXlPrEGLOAR28r632K2Cija7f3Dmt4H+Fw1+WQJz8rwEH8WKq+Lhe5Kb6KZ+o89QmrzcmgfBTxMwAGlbwKgVDO1Pp17Cjve1DALt1xrlzH/WwJVSYcNpf7AUiVySDFt0cSpBX+13dWmfE/THX0MmB1tcgHEn07K+omjAOiusiZbEH4JOSZWWK2ZynsdX7uTKVcUacCjUMKBVqOMKVWhOZtSWQ;25:NXZByNbUyPWU6FE22HzVPB9IBNFDG4LSq9XsOHjtzC56eoOUdFqs77DbYWaqU7Itw8QspqyFGZf2DcR7U/Cc+lbui4KglLb0WLZVsgzkByngA1cEokqEuTxw1oAzGy1pRWGi1uIa5RsVqa7Bgn94m23LfoBQzU5ZydN+BqWBqhSUqDtzjEuWJOmJ2MRSNSyDif/kHSfwedczB9pm6jXAHVqSADoaj8B+5B1SV1PhxvDyk1nbdt0dl9BPWZpciWCbCuHSEB/7oSHpt6U3YNOQdWDswBCpwWdI80BlQaOL9oCCMPHQPcdw+RoFfBoZGizd07DHAeM8hy1Xrp2f0f0sHQ==;31:yWib5XNmoflR9D7gtMiJuYr4xu47AcDK1hBaA3XWfZ4i/0ZjGtuFx9Ar6FsqeEO3FKUAwNluS2+sqRJt8hbtG3dzft68NhNIxsGjRZZuJJ2JW7uJ0JcP0yqBcHGxah9BiL1hH32oIgBViZrnUQaIqAZXiUMKJbK4vls1mc1PQdueddpd4eLh/2X6mKDzDW95Ls8tkfh3HARAi3CqUeieGSp1tKXaGudq2xLhnKqOVS0=
X-MS-TrafficTypeDiagnostic: AM4PR0501MB2724:
Authentication-Results: spf=none (sender IP is ) smtp.mailfrom=aj@open.ch; 
X-Microsoft-Exchange-Diagnostics:
	1;AM4PR0501MB2724;20:7M0yKkz8543aAielxDNAHNzdsDr4fFJANfvzBAgC2EWGa5i0g9+03X3R6Owpb7K6fp1LGx5axQEJMwYVfUDCK2xCxfKIPBpYY3wCH8BTsC/xFiNC4mwr/Kk3Ly2nE2pWW1teNL4XCKHkcmzB/LiSDjCDDkH/MvnzcPRvAmL+P9dpk2qVGDuY+dajBhBxehcyPtgYlOJyK6h3vzje7Nf8Tyix40nfoyxMScWvzEV2WRdmoH4AFdhHUPHUP34m2xe3D7W+GNJHh9q+pF82D72F+qqa6M30WXKSeOGiNPWUrPyXp3XF9Kh+5ka44GQeNQeO50JG8Hht//Fp3xaTIdR2Kw==;4:bG9+k2KHLKbAtBgalUllOiGPIQKS1qMiWnzNcoZYCJiQ3ut1R2hEWBabGRxsEveiwr970lTzj3MSp+JAlSRHu+NTDeTXsgGxddMnjJhAOFqdHgTIPJHbETRu0fQt8CJbBATiIqxDc4sT7wYkqQArycPxn1+knv1iQ6RSnZeElHMZhwwRb1+7a98ABZ1AmjlTEyEuHGNAjVgbjuqCV4kjDd4w5zquqb7Z1ma93Q0TUJDgondv9Lzqvkaalq21JCZxwt/JftUF2AzJlNoQQdLoFfBfSxO+KtIcaRoUuP96HyU=
X-Exchange-Antispam-Report-Test: UriScan:(166708455590820);
X-Microsoft-Antispam-PRVS:
	<AM4PR0501MB27246EC6E925228B4B1085E0C06F0@AM4PR0501MB2724.eurprd05.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(10201501046)(3002001)(93006095)(93001095)(6041248)(20161123564025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123560025)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);SRVR:AM4PR0501MB2724;BCL:0;PCL:0;RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);SRVR:AM4PR0501MB2724;
X-Forefront-PRVS: 0430FA5CB7
X-Forefront-Antispam-Report:
	SFV:NSPM;SFS:(10019020)(7370300001)(4630300001)(6009001)(39830400002)(346002)(376002)(13624006)(199003)(24454002)(38564003)(28244002)(189002)(5660300001)(25786009)(7736002)(106356001)(47776003)(2351001)(83506001)(2950100002)(6916009)(105586002)(33716001)(81156014)(81166006)(2906002)(110136004)(8676002)(316002)(478600001)(16586007)(229853002)(6246003)(305945005)(966005)(76176999)(50466002)(50226002)(7350300001)(189998001)(5180700001)(4001350100001)(53936002)(6306002)(86362001)(74482002)(101416001)(97736004)(50986999)(6496005)(55016002)(9686003)(6666003)(68736007)(23726003)(33656002)(6116002)(1076002)(2361001)(18370500001)(221513004)(70160200001)(42262002)(222073002)(18886065003);DIR:OUT;SFP:1102;SCL:1;SRVR:AM4PR0501MB2724;H:debian-aj;FPR:;SPF:None;PTR:InfoNoRecords;A:1;MX:1;LANG:en;
Received-SPF: None (protection.outlook.com: open.ch does not designate
 permitted sender hosts)
X-Microsoft-Exchange-Diagnostics:
	=?us-ascii?Q?1;AM4PR0501MB2724;23:HZVeXtnUx0lzOKXA0hq1Oj/qCdI7tWtXWvGYOJj?=
 =?us-ascii?Q?+gJE8Wi5gN+Jp9MVq7L28CKM9NjLHQPHgTG3YH2v3EJdVd4yynN5Nz0fmqPM?=
 =?us-ascii?Q?u//489eDOCHBqphTWlwCkt8JHYUbuRMYvx+0lmwk5m/OSlp0fOCbNz3X8QxB?=
 =?us-ascii?Q?uDoab+DsRRJtnG9XhZydHjTONHbdiUYlNcq9iQvjgLoVVbKnjzZL8Nvv+DAm?=
 =?us-ascii?Q?V4NKf1IeYc4I0XsdMvm7R2FZHvtRJGjzMCZAwwjYy+0Qf1Io5EbKSOSy7ASf?=
 =?us-ascii?Q?0xA4XMwVKclHfV3ofD6l9am35YHEGbPtidK7vlaVfgAzW6+aVYdO6mkEYt0v?=
 =?us-ascii?Q?i6lboEa2LR0cZb4QdW/9OB6C17KFBYbyWdJxYDdKU/t+m3pyEthh8LiVn9gi?=
 =?us-ascii?Q?D6yKye4dowv7LnHPuF/5LYhCR+Hu2mqFoY5XQEf16mMyuXJKrhBh57KSPjML?=
 =?us-ascii?Q?c1df7nClHArRs8YSPaWO68dDuj+tz+UCRLEJmU25Do7tvnmBdM5oLYRQcMiR?=
 =?us-ascii?Q?wlrvSagf0xbofHWiGV/fKZRbxTxXQbPvIront7UT43twId7MzsowdQQt8aGV?=
 =?us-ascii?Q?F7x43s3XUTkjYujqBb5m1bNBDvhTRrse5e7VMRMC06/8Bqp3sw4odkpe8bsE?=
 =?us-ascii?Q?IvZ+lPTSQ3AkQWzuH4paICPSEZhZ4WiLZkWhwITjkDsEVKnLgt2Y+FW7E+9E?=
 =?us-ascii?Q?CN1yOySWJwrNwyLZRTIAVEi7dGocrIy8lYEY5BjMj70xEWWUngmZvOC5mjob?=
 =?us-ascii?Q?PIwkHB7U6egf2T/VMRm43AEiIbRwjfJVakyweswfRreySVXcAAWImOWDEna0?=
 =?us-ascii?Q?xEhCQYjvjxlC6BC8+N8Dx4FfX9TYzls/YQ10J4C2fs5ZmzNkVwi+7qQKwIjM?=
 =?us-ascii?Q?6ug/DwFbMg7/JwlaiWSACLu2hxhZlJTtszXDfRC9SpdY0w+e+wQegRm23vPQ?=
 =?us-ascii?Q?Tcfytfs9uARxODjuj0+bqp2PJqdIyLQybGZYNmhuvMMY+DVYrya88Pa1vbJY?=
 =?us-ascii?Q?Q5dpyzmIp+2R38wompxEQFTYzNCadoZTDpWkYs1Kbz5eRGMAtPpfilrKpBd6?=
 =?us-ascii?Q?3LbWonDfqk/yRCDWo8LI31et8tWmKdosGJe4GDM2F2qmP/Wo5LxsPeu3CYPk?=
 =?us-ascii?Q?9ZAg0VBrJy0yjranPC1eHvaRV8hH49wKrkGVwvTCXXsIs+b0x2XkwhTTgZu7?=
 =?us-ascii?Q?43udOY2NjUPKXhI4k7wI+z5CLy6Ay5FBPuczMsDjCldPoewguIA+IV3DyVwP?=
 =?us-ascii?Q?8/kzfXkn9vXLv1MBCvuEYiYMNlObE79LqDz0N6ImbEh7ZFP07GnpyImGW3n1?=
 =?us-ascii?Q?8y9SiPZhhKsy/A7WcYJdBnDOWadnpdWef8JC8jaW4L5aUGDg0BgzjUC60dbK?=
 =?us-ascii?Q?AktA0MaxHRVXbtO8Kwv/wE4LVjhAhPNn300pFjK7DEzUj7f4nkM6RZA3w49X?=
 =?us-ascii?Q?tvZ+AYHmkjTyISI40fHSRiJ6FWmDdhYWKVNGK7uUK9CINjbAlvcqMeMHXy+E?=
 =?us-ascii?Q?wPntxLYVCHfP29jWjtlb/LzgzfwPRMZbiqy0bnldUFfreQKXR4j+B2xdT?=
X-Microsoft-Exchange-Diagnostics:
	1;AM4PR0501MB2724;6:ZPomlBkNQ/vTZGMMYXkqhudChM3+k1khCOhlstB05F85ueXLOSPEcXJR4iBw3WPlyj5wZ2AubXqIkM17jejfcknR8CLZZDjv3ET8nRZ4p/t8mz1wCqie+o7idyUSVb9VssEUzMySBcVn7EM5jsR5i8J6H5nwuQ4vFrjkC79PV0qNwNELxggUcfSg+vELQROGzYgovWs2drlagK9sz4yY3f+4fzkq7M7rbG2Q6FYIvErgtTjEZndFBg5ykBz9n3IosIw92g9u8SfVYd07rcuvMLfZCYn6Q0h9bZ5F1u9cwMuOyjA5Zmin8RUFuOvYO6qmRXjAqykTt2cNuD2ADqCPgA==;5:K9Bs+4r7T1E+B5JmRGzbiYBgA2CZu5dBw3AjQh83TiFMikk09pqV8Tlacqy6x7BpziEHO5L9q3hhqDLGfBtGcwrFx2V8Bw04HLEH82H9koyIrI5IsagH4t1P4y5YVrXYhopf+nSM1h6hgwGvd/PgRw==;24:xWNmwhGz6qCsLUIkCq+BYCyTqfMrjjGuTIkY7XwkmkoOb6v3HDGYYJsPpyMQiveOHrxdZjHq7NGMtRGgNVviX663YJkOwyn6ip18lymaIXE=;7:bFXjJLinVSFoiEh8P8UD3jNDeH7ShqDV8Ys6wIqZt9TRSu8+PsCAyNYiRDATP96xJse+0YfbMQX0Ee6rgbzW72SJb9yBNGyLECT9ywTcAk7XvSreCqeTqgd8DlDp5IgTIAgPUUhegJbsZKm2SYa7giXSZPmTpB3KG/cyjduU05HxGV76pLpCqRYHc2axVXbTxcJVuSKw8khGv7MLwPQLMhvznk4PAN4NL0yN1dg4Jg0=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: open.ch
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2017 10:04:55.8118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0501MB2724
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.2 cv=QI4YfkDL c=1 sm=1 tr=0
	a=hgWcbEIdfBeHAFuoyG/qBg==:117 a=DP8Fyr0naBsA:10 a=kj9zAlcOel0A:10
	a=2JCJgTwv5E4A:10 a=gW4V4vo1AAAA:8 a=sHNhvHo_AAAA:8 a=NEAV23lmAAAA:8
	a=utroVp2RAAAA:8 a=3B3IwCQUh-NuTZzxEIMA:9 a=fL9kLZHQHZDsqvT2:21
	a=N3koZkp6e9X2071o:21 a=CjuIK1q_8ugA:10 a=Yrzjz8yChkAA:10
	a=PKCZb-7aU9vUrpRll_fa:22 a=G6Yi8rkAph2bg1hfhGF6:22 wl=host:58
X-Sigh: S/MIME sigh milter - version 1607.1.2

I accept

On Wed, Sep 13, 2017 at 02:37:28PM -0600, kurt@seifried.org wrote:
> This is a confirmation email sent from CVE request form at https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use (assuming you filled out the CVE form and want one, we can't use the data until you accept the MITRE CVE Terms of Use). 
> 
> Simply quote the email and reply with "I accept" at the top if you agree to the MITRE CVE Terms of Use and we will add a copy of the email to the DWF MITRE CVE Terms of Use acceptance data at https://github.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
> 
> The reason we use a complete copy of the email is that it provides an artifact showing that the email address accepted the Terms of Use, when they were accepted and so on. 
> 
> If you did not submit a CVE request to the DWF you can safely ignore this message, however we may resend it at some point in the future, if you don't want any future emails simply reply with "unsubscribe" or "DON'T SEND ME THIS EMAIL EVER AGAIN" and I'll add your email address to the block list so we don't spam you with these, please note that this will prevent you from being able to accept the MITRE CVE Terms of Use via the DWF automatically in future (you'll have to manually ask). But again, if you have no idea what a CVE is then you can ignore this/ask to be added to the block list with no problems. 
> 
> MITRE CVE Terms of Use
> 
> LICENSE
> 
> Submissions: For all materials you submit to the Common Vulnerabilities and Exposures (CVE??), you hereby grant to The MITRE Corporation (MITRE) and all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute such materials and derivative works. Unless required by applicable law or agreed to in writing, you provide such materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.
> 
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute Common Vulnerabilities and Exposures (CVE??). Any copy you make for such purposes is authorized provided that you reproduce MITRE's copyright designation and this license in any such copy.
> 
> DISCLAIMERS
> 
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
> 
> A copy is available at https://github.com/distributedweaknessfiling/DWF-Database/blob/master/TermsOfUse.md
> 
> To contact the DWF either hit reply, or email kurt@seifried.org manually with your question/concerns/etc. 
> 

-- 
andreas jaggi
lead engineer network services

open systems ag
raeffelstrasse 29
ch-8045 zurich
t: +41 58 100 10 10
f: +41 58 100 10 11
aj@open.ch

http://www.open.ch
