# Verification target: Limits Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c97bb3e9f7870e49fd906ffa0be434489682361",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LimitsBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LimitsBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c97bb3e9f7870e49fd906ffa0be434489682361`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limitCone](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/limitcone.md) | 43 | `declaration-track:ecfee1ef378418192d55f040868b05b6e4dade386a1aa480dd454ead76b67cdf` |
| 2 | `def` | [limitConeIsLimit](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/limitconeislimit.md) | 58 | `declaration-track:6912ad4ae3c3aa8e3d424b12284f138365b149c7b4e5ade200f9454fb949df8d` |
| 3 | `def` | [conePtOfConeForget](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/coneptofconeforget.md) | 82 | `declaration-track:a8372e58f93145f406a084cee90f9714dd456a8326119964014ff7bb21d9da09` |
| 4 | `instance` | [topologicalSpaceConePtOfConeForget](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/topologicalspaceconeptofconeforget.md) | 84 | `declaration-track:5b4941e56dc1489fc55fe2f87cf69d4227ac3ef9aeed6f7eb410f6a56c59ccdc` |
| 5 | `def` | [coneOfConeForget](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/coneofconeforget.md) | 93 | `declaration-track:8e6013e0d61f7ec96d6ec2e5cec733b1f4a9426e7ae3625ad887f188277848a2` |
| 6 | `def` | [isLimitConeOfForget](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/islimitconeofforget.md) | 107 | `declaration-track:8725b700a1e0e26cee796c60fec97031a544b11c22dacb2596800872e2d49eef` |
| 7 | `theorem` | [induced_of_isLimit](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/induced-of-islimit.md) | 130 | `result-track:0f0dbec319210b1c2fbd0b267f4f593509a510159e83363ee0dc8a29deabcaf7` |
| 8 | `lemma` | [nonempty_isLimit_iff_eq_induced](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/nonempty-islimit-iff-eq-induced.md) | 144 | `result-track:546f28f432ddb7a0cc4f9be3b76e4a49e4257406fdf9ba6fcf3af6f20444c805` |
| 9 | `theorem` | [limit_topology](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/limit-topology.md) | 157 | `result-track:a83319a7087b570aa57db05218180aaf205d83abb783f668857e4e48bf4c3cd1` |
| 10 | `lemma` | [hasLimit_iff_small_sections](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/haslimit-iff-small-sections.md) | 161 | `result-track:6fbf6bc0e7d555be1c6736b7e8760cdec9eb6bf23124f0af9629d59d5860cd38` |
| 11 | `instance` | [topCat_hasLimitsOfShape](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/topcat-haslimitsofshape.md) | 168 | `declaration-track:3f6ea6a7f50494b95173facb9361664ed956fd198146c2735f330cfbd6faf2c1` |
| 12 | `instance` | [topCat_hasLimitsOfSize](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/topcat-haslimitsofsize.md) | 174 | `declaration-track:0d62e9e850cee91300480e240619b5e2ef42fc129d2ab1a208c6d657e425748e` |
| 13 | `instance` | [topCat_hasLimits](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/topcat-haslimits.md) | 176 | `declaration-track:667ea0ff02c4cec99dc6f90735c3fad96bde6f1590baf5cf8d1ae394e3e33af4` |
| 14 | `instance` | [forget_preservesLimitsOfSize](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/forget-preserveslimitsofsize.md) | 179 | `declaration-track:cf64fc78b8590d276cd5681091feeb62c68c9bce59c712bcdc97052b594f77f6` |
| 15 | `instance` | [forget_preservesLimits](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/forget-preserveslimits.md) | 182 | `declaration-track:9b0538261c50a0509f093fc50fad79b05c01d9976126a087872d5151cbb2f2bf` |
| 16 | `def` | [coconePtOfCoconeForget](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/coconeptofcoconeforget.md) | 197 | `declaration-track:f52a83829c6783014be803ec53e042468c2a3ab2718669b61d5fb8300bb531f7` |
| 17 | `instance` | [topologicalSpaceCoconePtOfCoconeForget](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/topologicalspacecoconeptofcoconeforget.md) | 199 | `declaration-track:84c210df5f7185b655c79d9e32d5b9a130568459796d8788770db183d64d5a1e` |
| 18 | `def` | [coconeOfCoconeForget](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/coconeofcoconeforget.md) | 208 | `declaration-track:31dc699fdd6b61105abd8eb5a04e94122eab50ca7b5948158839b7012848730d` |
| 19 | `def` | [isColimitCoconeOfForget](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/iscolimitcoconeofforget.md) | 223 | `declaration-track:8c12a7c9fed9b469df75a0eafd2f56152e1e2a2135e0ed4569da2375aef0e22f` |
| 20 | `theorem` | [coinduced_of_isColimit](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/coinduced-of-iscolimit.md) | 245 | `result-track:91acc590ac5e8304bdd88aacf4a08fb1b58f54494de8f356e3c570d0f497d714` |
| 21 | `lemma` | [isOpen_iff_of_isColimit](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/isopen-iff-of-iscolimit.md) | 258 | `result-track:794059b8fff61a42adfed20c804fd3112d7f51eb71ea1a6c5c767a48ff4ceaa0` |
| 22 | `lemma` | [isClosed_iff_of_isColimit](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/isclosed-iff-of-iscolimit.md) | 266 | `result-track:e3253f186bcfbcdcf3951f8eb7aae29ddbccbb64bd1bb012dbf9cd76ed91e68d` |
| 23 | `lemma` | [continuous_iff_of_isColimit](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/continuous-iff-of-iscolimit.md) | 271 | `result-track:8255d39f96da6d17df9c9189f69d0632109c373ecc24a89b99f05034398c1980` |
| 24 | `lemma` | [nonempty_isColimit_iff_eq_coinduced](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/nonempty-iscolimit-iff-eq-coinduced.md) | 278 | `result-track:204c3b5e55c27cc8be4fe6f2cd9a0fb29d688f64366c244a66ad2aa2b186573a` |
| 25 | `theorem` | [colimit_topology](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/colimit-topology.md) | 290 | `result-track:7b38f73c409c593519c0aece69a5add3346b1b160155937136c34a4cb4115891` |
| 26 | `theorem` | [colimit_isOpen_iff](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/colimit-isopen-iff.md) | 294 | `result-track:87e82de2e847e9f3b9ce96ffb2aa6f747acb96f87c5ad95d5dd17999675e4693` |
| 27 | `lemma` | [hasColimit_iff_small_colimitType](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/hascolimit-iff-small-colimittype.md) | 299 | `result-track:3881e40d5f3edd7ea64fd6d408824205f4afacaabe08e8a0c04050301d44ae2a` |
| 28 | `instance` | [topCat_hasColimitsOfShape](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/topcat-hascolimitsofshape.md) | 306 | `declaration-track:82d66e288b4f50c3c32dfb1f14d445a114fd3f3b3ab1119d849788e89f34fbeb` |
| 29 | `instance` | [topCat_hasColimitsOfSize](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/topcat-hascolimitsofsize.md) | 312 | `declaration-track:c72c16534adac5434f10850faecea902590d053d826ec450368fb130d514314c` |
| 30 | `instance` | [topCat_hasColimits](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/topcat-hascolimits.md) | 314 | `declaration-track:c4c1cf9de927334b3c181a9cd56fa6240e6d3a3aafdd2bce04bb70b64ca633c4` |
| 31 | `instance` | [forget_preservesColimitsOfSize](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/forget-preservescolimitsofsize.md) | 317 | `declaration-track:b19c141b103820e7b087750eb364b2082999b0167c0fea60b260c4e7d535ea0f` |
| 32 | `instance` | [forget_preservesColimits](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/forget-preservescolimits.md) | 320 | `declaration-track:89eab120e889a14af9b2e28a966cfda0a5e6c6f0662bc340c6969b9aacb4f0a2` |
| 33 | `def` | [isTerminalPUnit](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/isterminalpunit.md) | 325 | `declaration-track:b23a9a14a5a00ee9c84b3df222ee72d7fe94fe8a43a310cb0c90dd0fef14372d` |
| 34 | `def` | [terminalIsoPUnit](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/terminalisopunit.md) | 331 | `declaration-track:27107f255ebf4db213744a8685cba3310630584119322a3c521c01b9700e36fb` |
| 35 | `def` | [isInitialPEmpty](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/isinitialpempty.md) | 335 | `declaration-track:afd5814be31d01d6f37194da16944450b1cff0174d34b9fde89494ebe4964c7b` |
| 36 | `def` | [initialIsoPEmpty](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/initialisopempty.md) | 341 | `declaration-track:22c609e1241eea2e250ac45abc20af2af3ce02fc136c5d63132d807fc532b9e4` |
| 37 | `lemma` | [IsInducing.empty](../../../../GeneralTopology/LimitsBasicPublic.lean/declarations/isinducing-empty.md) | 345 | `result-track:a2f5247dd0cb3390c356c4c8ecbbadcf258bb809619e371b5c24d87550674255` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5374043809bcc9d2697cb1cd3c73e1abdbff50891aaf94ad18258b062d98ce5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
