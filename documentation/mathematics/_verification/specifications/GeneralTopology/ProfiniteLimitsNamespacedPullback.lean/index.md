# Verification target: Profinite Limits Namespaced Pullback

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e0b43351305139ab6c82d5ea80a3a5942cb1a34",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant69b36bff686d60d24226037a57f539926d83ea530dbf2c41a5d4df751136d89c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/index.md) · [Full source](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e0b43351305139ab6c82d5ea80a3a5942cb1a34`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant69b36bff686d60d24226037a57f539926d83ea530dbf2c41a5d4df751136d89c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant69b36bff686d60d24226037a57f539926d83ea530dbf2c41a5d4df751136d89c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback.md) | 45 | `declaration-track:2e123ca849ce1c9a3a7fda6773eef95fb58c5114aad563f0e2cebe37f17b2b18` |
| 2 | `def` | [pullback.fst](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-fst.md) | 52 | `declaration-track:4467c96654eba1dcef4422dbbae4dd2acb4af5bb937c600a1b2cfce30e3c959b` |
| 3 | `def` | [pullback.snd](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-snd.md) | 57 | `declaration-track:9653ab5c0bf829ce4aea784b7a34463cd1e86bf52732dab7eb9b96ea2ea1d3ef` |
| 4 | `lemma` | [pullback.condition](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-condition.md) | 62 | `result-track:cec108ab846c8a6c93352b8b9a121ce4d1dbebe251ec7968787bff20488839bf` |
| 5 | `def` | [pullback.lift](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-lift.md) | 71 | `declaration-track:e610daef674f086311f210f8dc9639689b0d85463f0d1e5f0ef023b64326b803` |
| 6 | `lemma` | [pullback.lift_fst](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-lift-fst.md) | 80 | `result-track:64c752f5dcf289cf07e7beb499be9d4af75a69674452483c64bf271a939b4191` |
| 7 | `lemma` | [pullback.lift_snd](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-lift-snd.md) | 84 | `result-track:0102fe4cbf4aaa56403026d6e3e68a62353a0db6a098711fb90000caccc90bbd` |
| 8 | `lemma` | [pullback.hom_ext](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-hom-ext.md) | 87 | `result-track:1cc681b9f0c68f31908fd7bd6efd6c789e4ccc65ff1d160d692908fe5a11b516` |
| 9 | `def` | [pullback.cone](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-cone.md) | 99 | `declaration-track:867141396471041072894f1a1a4e951e4d2a75bac1e53c55fe7014340720e3d4` |
| 10 | `def` | [pullback.isLimit](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-islimit.md) | 104 | `declaration-track:401655fd275f479f928b8242ec46e2bc70eb5dd2ab6b143f09ac33ae9fa642cc` |
| 11 | `def` | [pullbackIsoPullback](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullbackisopullback.md) | 115 | `declaration-track:2abf95008d92c50b339f185098f4867c8d344e966fc0952468b7fa65dbe301f7` |
| 12 | `def` | [pullbackHomeoPullback](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullbackhomeopullback.md) | 120 | `declaration-track:5ffa0740ec468a2417540665875cc73563c3eba7c9bc3c4ab6ccb8d35c3e3a81` |
| 13 | `theorem` | [pullback_fst_eq](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-fst-eq.md) | 124 | `result-track:77d8ccb9a5b78fdd16e374ccfbc3d2c625f95a34cb78e451a5573f86e7074376` |
| 14 | `theorem` | [pullback_snd_eq](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/pullback-snd-eq.md) | 129 | `result-track:55aa648e8a627ac59204f042affa99efa7fefd5ff5c67aa3928ea73a61db22d3` |
| 15 | `def` | [finiteCoproduct](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/finitecoproduct-source-edition-2.md) | 146 | `declaration-track:ad134f49f48b2c547365d52bfdfc1541e425a1e90939648974a92acc8a6ac53b` |
| 16 | `def` | [finiteCoproduct.ι](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/finitecoproduct.md) | 149 | `declaration-track:8d87e1c17097b6a9c9dfca9aa1ea75c28e4c3b6c93cd981c9ad3bfc371ab7633` |
| 17 | `def` | [finiteCoproduct.desc](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/finitecoproduct-desc-source-edition-2.md) | 158 | `declaration-track:e6cdaa7521e5c9a8a2aade4f6cff7558c86ab09fe2856871e103579a065d28db` |
| 18 | `lemma` | [finiteCoproduct.ι_desc](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/finitecoproduct-desc.md) | 167 | `result-track:738f66675839a9def1ddd8417a248860cbd97e51cc525b63520f88f27446261f` |
| 19 | `lemma` | [finiteCoproduct.hom_ext](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/finitecoproduct-hom-ext.md) | 170 | `result-track:4c21b2df8882bd2151c512000780502a427433039b9799c785b6da4704254f2c` |
| 20 | `def` | [finiteCoproduct.cocone](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/finitecoproduct-cocone.md) | 179 | `declaration-track:5399599959e2332eeea64f21eca6fc56e2d0b096af0dac041e52f4edae72b22f` |
| 21 | `def` | [finiteCoproduct.isColimit](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/finitecoproduct-iscolimit.md) | 185 | `declaration-track:fa16eb92afc81095f53090bc8e9096fac5e7cfbb9cd2b0c74a42e41aa8e7b54f` |
| 22 | `def` | [coproductIsoCoproduct](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/coproductisocoproduct.md) | 198 | `declaration-track:fc5a069d066aff9b39b373f46ffd1442fa83a5e46c0865db0cc3030e9e84cc8e` |
| 23 | `theorem` | [Sigma.ι_comp_toFiniteCoproduct](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/sigma-comp-tofinitecoproduct.md) | 201 | `result-track:1b040c24861fb418e9d4830577c663316928a8eb429d5c8900dda838fd45a86b` |
| 24 | `def` | [coproductHomeoCoproduct](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/coproducthomeocoproduct.md) | 208 | `declaration-track:e7ecb008b7708557979d234538340003a83f4b2d3a7116111b9667ab19bcd0ed` |
| 25 | `lemma` | [finiteCoproduct.ι_injective](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/finitecoproduct-injective.md) | 213 | `result-track:ef9bfb22e1085f8a8bdba4c9529af11b396a1a10e0bb360ecd63d243087c45bd` |
| 26 | `lemma` | [finiteCoproduct.ι_jointly_surjective](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/finitecoproduct-jointly-surjective.md) | 217 | `result-track:9a75d7ddf8e345e81882f3e383f5d8cd61422529c10e253918055d5aeaa5f318` |
| 27 | `lemma` | [finiteCoproduct.ι_desc_apply](../../../../GeneralTopology/ProfiniteLimitsNamespacedPullback.lean/declarations/finitecoproduct-desc-apply.md) | 220 | `result-track:bdcd8de650fcd74fcf3baee8b6af95bdc721132e257354bb3cc2b3a785db5777` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70f0b6edd3efa8716c9fcf11d976ef9a2b0ca44e7a75e3a6942588ec092bfba2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Limits/Variant69b36bff686d60d24226037a57f539926d83ea530dbf2c41a5d4df751136d89c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Limits/Variant69b36bff686d60d24226037a57f539926d83ea530dbf2c41a5d4df751136d89c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
