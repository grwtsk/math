# Verification target: Core Namespaced Sin Interval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b96b531ddc90394a51239f94d95d32fd3e40739",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b96b531ddc90394a51239f94d95d32fd3e40739`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Support` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRealEndpoints` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.TrigReduced` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sinInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/sininterval.md) | 60 | `declaration-track:b3437fc25ec0758d80fb2190109cda13c1640b6827041b7c1d2a4cac6dac7697` |
| 2 | `theorem` | [mem_sinInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-sininterval.md) | 64 | `result-track:4c7fee38d7642f15fb0afc28611fbefa5e8b07e61ccfcbc90f06869be6667730` |
| 3 | `def` | [cosInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/cosinterval.md) | 75 | `declaration-track:424bb5fb8deb0b5ad2f72cc5907210d4d1d0d2a10da27e26c8e8632642d46f7d` |
| 4 | `theorem` | [mem_cosInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-cosinterval.md) | 79 | `result-track:ac51c1a395b67e873ab3de2699e8dcadb5cd57498d2965dfc0080688f9a61e5f` |
| 5 | `def` | [atanInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/ataninterval.md) | 90 | `declaration-track:1d4d2dd7af1321dc7ec367e149aef230b0247e3a0ee1685568155db02483df39` |
| 6 | `theorem` | [mem_atanInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-ataninterval.md) | 94 | `result-track:2ac7b68e98a2c0d4d265e8674d542c5e0bc9d0a2ef1f3c46d92afa3a526a2b7d` |
| 7 | `def` | [erfInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/erfinterval.md) | 109 | `declaration-track:202da5e76d76f9305e44d4455a2d367d90813887615bc5333f847f5783f2158e` |
| 8 | `theorem` | [integral_exp_neg_sq_pos](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/integral-exp-neg-sq-pos.md) | 114 | `result-track:6a9e786d412e5c22a4fcb9081635601ded01e635d95300d9dfb4038bd1f6042b` |
| 9 | `theorem` | [Real.strictMono_erf](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/real-strictmono-erf.md) | 127 | `result-track:a97b62be6119976ef235ea0e3524cb162d781893e25bc6b2cd3806bc65dfbe17` |
| 10 | `theorem` | [Real.abs_erf_le_2257_div_2000_mul_abs](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/real-abs-erf-le-2257-div-2000-mul-abs.md) | 150 | `result-track:8e3d3809f4a3d05d3b14b2daaef67e85dcdda800919d732ea51c133baa07990f` |
| 11 | `theorem` | [mem_erfPointComputable](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-erfpointcomputable.md) | 196 | `result-track:5fb1954e4ca10dca440c8a4daa9851062ee55c7d640d1da2493cc7d78de5679d` |
| 12 | `theorem` | [mem_erfInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-erfinterval.md) | 236 | `result-track:ca05f9b4c90bc6ac4a19125ce0415774a4c4595a17762373caf513f7b636b121` |
| 13 | `def` | [arsinhInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/arsinhinterval.md) | 286 | `declaration-track:53ae67d04ae04b15cb48ae08b5f61a180f2dbbd42b0fcf7f091379d4eb18fde1` |
| 14 | `theorem` | [mem_arsinhInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-arsinhinterval.md) | 298 | `result-track:46ae9f5e57c85838c4799b2da4d41af39a75aadca8f3f0a5cdc7b1ea560549f3` |
| 15 | `def` | [atanhInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/atanhinterval.md) | 347 | `declaration-track:ed0753f861b58169fcbf024aafb60f7966bb999d10065b3301f1f441eadfdb28` |
| 16 | `theorem` | [mem_atanhInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-atanhinterval.md) | 355 | `result-track:b840c68149f2ae9befa3df6c9f87223405eca15cd46b24929dca264938a3f2af` |
| 17 | `def` | [tanhInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/tanhinterval.md) | 369 | `declaration-track:12a656ddd51ecd17da135b72cca66d4e4f2b443e1405502fb637d3743444ee3d` |
| 18 | `theorem` | [mem_tanhInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-tanhinterval.md) | 373 | `result-track:588eb2e8cec8cf4d30d35f6fc75121560b348a562cf2a774fa32a12b2233d506` |
| 19 | `def` | [piInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/piinterval.md) | 400 | `declaration-track:2892f434fc7c362032b79427761bc24ad197fff45ad5c60a089337c4cb1a66d6` |
| 20 | `theorem` | [mem_piInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-piinterval.md) | 405 | `result-track:928dce103cc7e4ab8c3052f84aa6f67785a0358586d9da5f8747112c2027deaf` |
| 21 | `def` | [eulerMascheroniInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/eulermascheroniinterval.md) | 422 | `declaration-track:f4e63a4cf13b4552c8739d95caf2cddc61ed41d052cc4489b625c901f3eb123d` |
| 22 | `theorem` | [eulerMascheroniSeq_100_ge](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/eulermascheroniseq-100-ge.md) | 426 | `result-track:c633f098bd71141ba9f54c87e94aeb8f0c8e8e3ad1805763f82d7e49f76900c9` |
| 23 | `theorem` | [eulerMascheroniSeq'_100_le](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/eulermascheroniseq-100-le.md) | 440 | `result-track:9f316ec51b3cc3aff2ebf4056a7f720a8d408870f48aad4df3411405798b27ca` |
| 24 | `theorem` | [mem_eulerMascheroniInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-eulermascheroniinterval.md) | 453 | `result-track:c9b5f2af1189260e89f3089552c531e66890ebb1f5e0b07ee10fbb2599367580` |
| 25 | `def` | [interval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/interval.md) | 471 | `declaration-track:d6af54b43421120ac7c6838abfc051a749f32f2db2822be40cff2f0a07c343fb` |
| 26 | `theorem` | [mem_interval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-interval.md) | 476 | `result-track:1d8c8a12b5c8855b73eb3c0fe698b9dde813f96e8f690b8e39112e37f0144bc5` |
| 27 | `def` | [sinhInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/sinhinterval.md) | 489 | `declaration-track:6127f72a87298d26d203d67723044630d096e1c1efe525b493ba8a55ae94a583` |
| 28 | `def` | [coshInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/coshinterval.md) | 495 | `declaration-track:5fb00f26f29ff578cb9e4b2c8c0fd15b6389261474900dd1ebf2186a412538eb` |
| 29 | `def` | [invWideBound](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/invwidebound.md) | 501 | `declaration-track:d7a5a190bd5cd7539f32ce0a6fae8d0d159a14e69d260f3dcc5fb2654b1e6a46` |
| 30 | `theorem` | [invWideBound_pos](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/invwidebound-pos.md) | 503 | `result-track:3af2ab061e009b3aa383cc3a9cfd6a736d0017353d58f8a8d048d721e6093bb3` |
| 31 | `def` | [invInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/invinterval.md) | 511 | `declaration-track:c6c55cf8b24976d38b9b6e1484f25954fa4a7e91fe7d99df4f39cbf432c1252c` |
| 32 | `theorem` | [mem_invInterval_pos](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-invinterval-pos.md) | 530 | `result-track:28c2117b0d1e20bdb5454d66aea1190caa40f47b8df37315fefe63882a9d3535` |
| 33 | `theorem` | [mem_invInterval_neg](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-invinterval-neg.md) | 570 | `result-track:b2a0e775f47f8c8589388dd673588526c43a0d98a614086b576e01be4154f691` |
| 34 | `theorem` | [mem_invInterval_wide](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-invinterval-wide.md) | 610 | `result-track:cc87c44dbf365d9f30f14c729611c20ed0ef284a33060a2e7cdba5d99c7a4c41` |
| 35 | `theorem` | [mem_invInterval](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-invinterval.md) | 627 | `result-track:3948914683762ca2337dd8382d3d6db5b5ee8eb81c7aad77e38fd13b5a6dfb35` |
| 36 | `theorem` | [mem_invInterval_nonzero](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mem-invinterval-nonzero.md) | 638 | `result-track:4f31b054927d7602a40caf309c965886fa5ac5c48b912664b9f39dac22096db4` |
| 37 | `abbrev` | [IntervalEnv](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/intervalenv.md) | 648 | `declaration-track:bfb4c5d14416b430701b791f136f7a6aa917217734029392e89e3e4f84c500f3` |
| 38 | `structure` | [EvalConfig](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/evalconfig.md) | 652 | `declaration-track:86e15c9fe98182f83623a631f1fefed4682671c997a9c234d98aa59e594fdc41` |
| 39 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/instance.md) | 658 | `declaration-track:880b42db8f33128d3fdc5b60f6045af127216dcb5e19f3683c9efa94e1e2412e` |
| 40 | `def` | [evalIntervalCore](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/evalintervalcore.md) | 674 | `declaration-track:ab648dfe213263f1796b7aaaec2122986519abe67863487e97caae6455b37df2` |
| 41 | `def` | [evalIntervalCoreWithDiv](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/evalintervalcorewithdiv.md) | 707 | `declaration-track:482017b5ada81228b9492c93390200b2215ab6faf616f2f99036b4d22e20fdc4` |
| 42 | `def` | [envMem](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/envmem.md) | 751 | `declaration-track:e2a17fb7a555a898fafb621b8404d545a4aa8428a0eb6a3df10a52aae4372ee7` |
| 43 | `def` | [evalDomainValid](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/evaldomainvalid.md) | 760 | `declaration-track:b476de1d37dd874d0256c2fb36e38b89e65c1b4e0fe694d5bd7070830b495f9a` |
| 44 | `def` | [evalDomainValid1](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/evaldomainvalid1.md) | 784 | `declaration-track:729232e2e3f60ad83a5d5ad8207632b5b4e0be8b58a548d63bc0957908b173ad` |
| 45 | `def` | [checkDomainValid](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/checkdomainvalid.md) | 788 | `declaration-track:2fbb3db6818de802bd624158674063b52fe0f79ed84b9af7b379f82e7d7843de` |
| 46 | `def` | [checkDomainValid1](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/checkdomainvalid1.md) | 812 | `declaration-track:a5e707aa0bfa86a7fe8683db2ee0e4ef3828a5416b8927971c935c0930a89a5f` |
| 47 | `theorem` | [checkDomainValid_correct](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/checkdomainvalid-correct.md) | 816 | `result-track:ca555bf699ac0af3993a5afde4cb47957acfb81a98f606cc6cde09d3a06a51c0` |
| 48 | `theorem` | [checkDomainValid1_correct](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/checkdomainvalid1-correct.md) | 892 | `result-track:52e29b263c8facaa6847399d11789d8c83f9184681a06f49a8bb2d501e509b13` |
| 49 | `theorem` | [evalDomainValid_iff_checkDomainValid](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/evaldomainvalid-iff-checkdomainvalid.md) | 897 | `result-track:ddcb2a2d8586d39b443328984a54e996421dbbf1d44a1ae301d78a268f61c69b` |
| 50 | `instance` | [decidableEvalDomainValid](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/decidableevaldomainvalid.md) | 978 | `declaration-track:e7528a6c54139f3bdcf3c1cacb36f36d09ba337193f4d71655a725d510cf1e2b` |
| 51 | `instance` | [decidableEvalDomainValid1](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/decidableevaldomainvalid1.md) | 983 | `declaration-track:55f1a814cd0196a133eeb5b1cbcf6812060a250c6c2252c8ff989b02454f1c03` |
| 52 | `theorem` | [ExprSupported.domainValid](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/exprsupported-domainvalid.md) | 989 | `result-track:a495bc9fafcfd870d4831507c8642b327dac3ea9eaf093f4f9c0941dde8b8241` |
| 53 | `theorem` | [exprSupported_domainValid1](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/exprsupported-domainvalid1.md) | 1002 | `result-track:f7ec8f877ea977ebd6ffcd9746fb1b0a9381385eccbd86fd002d445853037346` |
| 54 | `theorem` | [evalIntervalCore_correct](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/evalintervalcore-correct.md) | 1012 | `result-track:9a2341240fbcd3897d683eafaafbc96f45a08e7812afec55e04b181480962cf7` |
| 55 | `def` | [evalIntervalCore1](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/evalintervalcore1.md) | 1079 | `declaration-track:5221ce008daf630c973cd8e2ccd95bb7872f6dcf02c07b534be35bde9a9ede17` |
| 56 | `theorem` | [evalIntervalCore1_correct](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/evalintervalcore1-correct.md) | 1083 | `result-track:6e799910795bc610fd4b568784a7c144028cf5cb0415b816065be886c59905da` |
| 57 | `def` | [mkConst](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mkconst.md) | 1093 | `declaration-track:a88ef1ad0317ea1ae2ed174ae61777364fcfba49d073e000a7a9a7239b4da318` |
| 58 | `def` | [mkVar](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mkvar.md) | 1097 | `declaration-track:7141977b57eae82b6c04015d2d8e685316503b35fc85b37255d0b2957571c54b` |
| 59 | `def` | [mkAdd](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mkadd.md) | 1101 | `declaration-track:ee66887e35e7ccba2ff9dcb4bf16df2d26dd3b26870d34d79e10dc83fca4037a` |
| 60 | `def` | [mkMul](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mkmul.md) | 1105 | `declaration-track:e3e8fd6e0fd16676593ba563e7c65a7f2798e2fd750c2a3d148cc6dda9b6ef4d` |
| 61 | `def` | [mkNeg](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mkneg.md) | 1109 | `declaration-track:874e0019fec6ee1b4224eaa3ba8cb9eee2e89d0b7683dc24e67a8b6d7dbff140` |
| 62 | `def` | [mkSin](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mksin.md) | 1113 | `declaration-track:1a6460468368edf1fc29f51ec6446876ead82389f680de2b4339b041b38a5137` |
| 63 | `def` | [mkCos](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mkcos.md) | 1117 | `declaration-track:c8e0ecb726fe9d76fd00893eb5f5086c6293141450182f87af80f38f2be149b1` |
| 64 | `def` | [mkExp](../../../../MeasureAndIntegration/CoreNamespacedSinInterval.lean/declarations/mkexp.md) | 1121 | `declaration-track:b6c022cda3cbe8553f1919f2f6eec8205af24511828bff80443eb547263a761a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2915e91ea3b178c935c871161d6804370c94e7b5fd9385b29020de861c480d7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
