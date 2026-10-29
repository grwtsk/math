# Verification target: Ideal Over Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a12e9844cdd888c8d956f962b67609be51d6d2cf",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a12e9844cdd888c8d956f962b67609be51d6d2cf`.

Source path: `GRWTSK/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comap_eq_of_scalar_tower_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/comap-eq-of-scalar-tower-quotient.md) | 60 | `result-track:6faa0cc6dc982e6d86eaa4dbad14e3ca1de60328970e68ac2b12f790e071b982` |
| 2 | `instance` | [Quotient.algebraQuotientMapQuotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/quotient-algebraquotientmapquotient.md) | 71 | `declaration-track:7a61d20b15491ca630b3f6a2d944660aa678f725df350688221f0d8d673232f3` |
| 3 | `theorem` | [Quotient.algebraMap_quotient_map_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/quotient-algebramap-quotient-map-quotient.md) | 75 | `result-track:34bfa4f80a9ed0b89710632c8c783f9fc03f3f3e2e68d088befe87fb266360e1` |
| 4 | `theorem` | [Quotient.mk_smul_mk_quotient_map_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/quotient-mk-smul-mk-quotient-map-quotient.md) | 82 | `result-track:b576090e0cb41925c2a44023546f6e051ef2bf46cf3ca45dbd7317c8a29c8aab` |
| 5 | `instance` | [Quotient.tower_quotient_map_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/quotient-tower-quotient-map-quotient.md) | 87 | `declaration-track:4d7d6aeb1551cf9b393e990c3623b2377c0b2d59dd51635703ac310b6a547509` |
| 6 | `abbrev` | [under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/under.md) | 104 | `declaration-track:defb9ca317aa541b0e453e3ea89353e627b6a54e8417ccd7af50ca3cda5ca6c7` |
| 7 | `theorem` | [under_def](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/under-def.md) | 106 | `result-track:362029040e5545682782344f795c4ed399bbd33aa44f1685378c82bbc4ffc9af` |
| 8 | `theorem` | [mem_under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/mem-under.md) | 108 | `result-track:c7ee433b53df7e19c49dd560d4c5bc26cab4d7ffc89e5ec085dbb42abc4f91d1` |
| 9 | `instance` | [IsPrime.under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/isprime-under.md) | 110 | `declaration-track:d5e900c2083ce9c63de230d38803cd78a05178f16876a303e51c217d608533d7` |
| 10 | `lemma` | [under_smul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/under-smul.md) | 114 | `result-track:69026afbaa1149467da9be6c98078f674419534fdff08e7f6d2b8ad516a37f39` |
| 11 | `theorem` | [smul_under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/smul-under.md) | 119 | `result-track:c5dad7adec6de852d4035c30a982ef89acdcbddf1942691f2b043a96c4e7717f` |
| 12 | `theorem` | [under_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/under-top.md) | 128 | `result-track:2867f7c2c3e09b4ac5a5f23603b9eaf8023310236e449e6c065031bcbfc00b5a` |
| 13 | `class` | [LiesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/liesover.md) | 133 | `declaration-track:4a8f6053db66ca801880e6177106aea0a958409a17bfc191221700829db93ea2` |
| 14 | `instance` | [over_under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/over-under.md) | 136 | `declaration-track:0ab20922354cadb0e1c6bc4bd5d9a62a9e043e648f8b39f0addcd87ef026fbf6` |
| 15 | `theorem` | [over_def](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/over-def.md) | 138 | `result-track:e994f29f591829f17d827bce881712a00435c415698829ce1a849e8f5161b50b` |
| 16 | `theorem` | [mem_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/mem-of-liesover.md) | 140 | `result-track:a73c78fe977ef6726e4006233f344392f5fdf6c903c6037846125548e265ba2d` |
| 17 | `instance` | [top_liesOver_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/top-liesover-top.md) | 145 | `declaration-track:a39076edb8ebf07c225cbc20f771e84e00634e3367e53df97809a945d8559d63` |
| 18 | `theorem` | [eq_top_iff_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/eq-top-iff-of-liesover.md) | 148 | `result-track:e4f5ebef7b7a8f72bc55cb25a8238869bdd0b0256917ee326e60288c02b3c8ea` |
| 19 | `lemma` | [ne_top_iff_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/ne-top-iff-of-liesover.md) | 152 | `result-track:d6dbcea3ec7ed51f0865be05357dff97605fd6db8ca8d13296f855e2c4842152` |
| 20 | `lemma` | [isPrime_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/isprime-of-liesover.md) | 154 | `result-track:181b6122a5e49c9d9169de38237601118601f197a46524f911efd28aeb7a0b4a` |
| 21 | `theorem` | [LiesOver.of_eq_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/liesover-of-eq-comap.md) | 160 | `result-track:cb0586c0c90a9e8cca41b4b307959d4a352553afdd4259ec935711b2deb88674` |
| 22 | `theorem` | [LiesOver.of_eq_map_equiv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/liesover-of-eq-map-equiv.md) | 168 | `result-track:9a6bf4b2753dd6c7723c441d8bb91ac4713fa93c5f7aeff71ceeaf7a5c26fe05` |
| 23 | `instance` | [LiesOver.smul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/liesover-smul.md) | 174 | `declaration-track:c452b4869112bfb2c15db28f96679c87ec4f3a9f65b81ad3ebf94c66aaa3a2e0` |
| 24 | `instance` | [comap_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/comap-liesover.md) | 179 | `declaration-track:439609a80d34ac47e0b42ce8f2eb5877d255e60114c88df46dadbf15023de811` |
| 25 | `instance` | [map_equiv_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/map-equiv-liesover.md) | 183 | `declaration-track:56e38854a0f742d12b95d1f7070a72bc8a8e02d8261ba5bb896f4a34ceefb9dc` |
| 26 | `theorem` | [under_under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/under-under.md) | 196 | `result-track:3bb18c6b03a8c80b35d136c3967445dad0734de0ce660706f1d52491c1699bd7` |
| 27 | `theorem` | [LiesOver.trans](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/liesover-trans.md) | 199 | `result-track:11dc8b9d016640cac74d9cfa9de9a1c02f9ed85b5542f3410d758cf5ef50a8fd` |
| 28 | `theorem` | [LiesOver.tower_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/liesover-tower-bot.md) | 202 | `result-track:6576098cdee5a17f52762bbf707373546d542d04df411bf4ed591d0b989c8fb7` |
| 29 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/instance.md) | 205 | `declaration-track:298684ca4874089905a7ca54369e354f434522b12aa73781e9bde330a8ea4b49` |
| 30 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 208 | `declaration-track:586cc317946dcf89ca3875aaf0e8133a5d9f05bb8f1c3b30aec148111ad2fdc8` |
| 31 | `theorem` | [map_under_le_under_map](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/map-under-le-under-map.md) | 221 | `result-track:85bce483ce70e3c1333e04f2b7a5f84f4ba951c2dfe18e3d84198230e3d5fd52` |
| 32 | `theorem` | [under_map_eq_map_under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/under-map-eq-map-under.md) | 240 | `result-track:a630aa1330f1e1e55e5f32ec530a5278218887dd1fa5cd2d940f987292f96759` |
| 33 | `theorem` | [disjoint_primeCompl_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/disjoint-primecompl-of-liesover.md) | 247 | `result-track:045deb1c6a5ae10a34d5053c19393d3edb4acf7f13e770e59d6bab1843f75dac` |
| 34 | `theorem` | [algebraMapSubmonoid_primeCompl_of_liesOver_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/algebramapsubmonoid-primecompl-of-liesover-surjective.md) | 253 | `result-track:1dbb34ec5dee55cf2d4830654e15037365842647daebcba86b1324e7cda36f4b` |
| 35 | `instance` | [under_liesOver_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/under-liesover-of-liesover.md) | 260 | `declaration-track:63443eb9fdf6caf6dbe7e1c8aee8369a12dee2a10fb20f4ca12eb40d40d0ed02` |
| 36 | `theorem` | [under_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/under-bot.md) | 271 | `result-track:585a4c30e15d8d45ae85edb75d729432881fecc8a9cf0c3850e753d58f291bae` |
| 37 | `instance` | [bot_liesOver_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/bot-liesover-bot.md) | 274 | `declaration-track:6c94a3254aaa5400d0582d8a51f90d5244194d554808dccc101e00cb41c9f0f3` |
| 38 | `theorem` | [ne_bot_of_liesOver_of_ne_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/ne-bot-of-liesover-of-ne-bot.md) | 278 | `result-track:fd632fd3fd2c69652fe4dcd87aa4082967d7b20c13663e8e4224eff595af1684` |
| 39 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 284 | `declaration-track:c540e29f3a52457168d7aa8ef5ec508c2eee85fabccdf59e2e3c1ad1aebf6c34` |
| 40 | `instance` | [algebraOfLiesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/algebraofliesover.md) | 295 | `declaration-track:1cfc1d9e63cd3ca48b12ecea450dcf120b03d7d05a4aee56c1f30dfcc8a6067e` |
| 41 | `lemma` | [algebraMap_mk_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/algebramap-mk-of-liesover.md) | 299 | `result-track:c22230931a55379d9c3f75c71acc55504dcb2c14cfcc0adea0b22371f969e6f4` |
| 42 | `instance` | [isScalarTower_of_liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/isscalartower-of-liesover.md) | 303 | `declaration-track:a7781cd618356932f7534226c3ee4e8ecf1f26984cf9083fc1e950e0fe3d45e2` |
| 43 | `instance` | [instFaithfulSMul](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/instfaithfulsmul.md) | 307 | `declaration-track:132f0a4ab682ebe161ece6424b5c747a607c5b52602daeea768e0fabb6e65cca` |
| 44 | `theorem` | [nontrivial_of_liesOver_of_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/nontrivial-of-liesover-of-ne-top.md) | 315 | `result-track:ef90979b392cec5ce9004c47ad650858d99ce89f6f02d88b8f31ed6fd69e45ed` |
| 45 | `theorem` | [nontrivial_of_liesOver_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/nontrivial-of-liesover-of-isprime.md) | 318 | `result-track:9429c73312be50583adf80fa1c08324302ab3df39b293690ffd3261070984a67` |
| 46 | `def` | [algEquivOfEqMap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/algequivofeqmap.md) | 327 | `declaration-track:6089a6c6157b642e7e4e3bfdcdada679680f76356cffd24ad25db470ee49b444` |
| 47 | `theorem` | [algEquivOfEqMap_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/algequivofeqmap-apply.md) | 334 | `result-track:58d82e743f3950f24cb3e5fcda77dcec4aecd052f7847d6861bf01a4769ccbb1` |
| 48 | `def` | [algEquivOfEqComap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/algequivofeqcomap.md) | 339 | `declaration-track:4bfc523e50595792821664cff64c7e3aab676959fb5a8572ed7876d7d4c8481c` |
| 49 | `theorem` | [algEquivOfEqComap_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/algequivofeqcomap-apply.md) | 343 | `result-track:4e380723697dee3d577aef5871f022439cb5fd95da2a2841383d6cabbfbe0c46` |
| 50 | `def` | [stabilizerHom](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/stabilizerhom.md) | 349 | `declaration-track:6f9e2f5591c791d8365feee5f7b50edfdc30cacb36c833f6c1d464d94b8c1114` |
| 51 | `theorem` | [stabilizerHom_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/stabilizerhom-apply.md) | 358 | `result-track:aea42e329733083db75c5b72334d5754aae01cc4b0868fdbda0d18bb9f32ba09` |
| 52 | `lemma` | [ker_stabilizerHom](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/ker-stabilizerhom.md) | 362 | `result-track:113553458f269e2cfd490e4f8554791bdb73d52bb4f80bdb1c438871545b1733` |
| 53 | `theorem` | [map_ker_stabilizer_subtype](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/map-ker-stabilizer-subtype.md) | 366 | `result-track:3e01d2f32c5b5a7d4e644965da3fdd2d8d9dabdcf228a1263fe4f540b7e27bea` |
| 54 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 370 | `declaration-track:d868d58c7111ee9c2627f65eb8990b6ba51c48971ea36c028e6340f27d5752f0` |
| 55 | `def` | [primesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/primesover.md) | 384 | `declaration-track:f04cf69f823b78d9b513431375efafe711422a9a4457e3c7d63defc919df4728` |
| 56 | `instance` | [primesOver.isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/primesover-isprime.md) | 389 | `declaration-track:7ffb53d73056ac6f65b70125a21a4cb13df697483686bd8566f2264a45cf95d8` |
| 57 | `instance` | [primesOver.liesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/primesover-liesover.md) | 392 | `declaration-track:87f8699060df5179375fc62491f1efb37afe1cf5d5939bac2f5e37334b579625` |
| 58 | `abbrev` | [primesOver.mk](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/primesover-mk.md) | 396 | `declaration-track:be710eed4949c166e0664f9d0978a528942977c1875b1797e02a2c552767ce95` |
| 59 | `theorem` | [ne_bot_of_mem_primesOver](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealOverNamespacedPublic.lean/declarations/ne-bot-of-mem-primesover.md) | 400 | `result-track:f0940e4a75591366dd907c10d26b4cae6ea435056409d07e8d67687605fab008` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1241e8d9acf4dd82473e5f03ed0d6107d105e13600989574ec551a4a42794d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean","GRWTSK/_verification/specifications/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
