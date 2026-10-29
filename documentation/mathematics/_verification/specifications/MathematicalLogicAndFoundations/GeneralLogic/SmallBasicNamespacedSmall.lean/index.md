# Verification target: Small Basic Namespaced Small

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "637ad4e41a0a231358ebf4c719189839a44884e4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `637ad4e41a0a231358ebf4c719189839a44884e4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Small](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small.md) | 39 | `declaration-track:40281f2b46ea1bb766cd850212e4b877c1dc53ff937576c70196874f7599a07a` |
| 2 | `theorem` | [Small.mk'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-mk.md) | 46 | `result-track:d0707ab828840ddf0a17ed455c4b6ffb29f958b4701d6a5beeebece8fcdfe26b` |
| 3 | `def` | [Shrink](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/shrink.md) | 52 | `declaration-track:180339a008e7297564841452ca0d2f6449e627c15adcfe47cc20d7aee6a44608` |
| 4 | `def` | [equivShrink](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/equivshrink.md) | 58 | `declaration-track:57068c083427c09043c49dff40855299dfccc30007f63d59949ce0c793ff400a` |
| 5 | `theorem` | [Shrink.ext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/shrink-ext.md) | 63 | `result-track:ed3e08fb6b45a7a083d26e21e41aa7412c0676cabe53f7cde297f59a64d149e1` |
| 6 | `def` | [Shrink.rec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/shrink-rec.md) | 71 | `declaration-track:6806b60262c83cb5ab918dce03764826afbdb1834cda43648cc23e5326b07549` |
| 7 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:a8abcf3851d414e339b0a34da7bbdd9873da0ee01e4a7280a8e11e6820861616` |
| 8 | `theorem` | [small_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-map.md) | 80 | `result-track:b4fe046e5f7c9695b4bb5d1ed15f8faef6c4b5b277e38b2eb18534985a974833` |
| 9 | `theorem` | [small_lift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-lift.md) | 85 | `result-track:6ebbc0fa69d9c5f4fc1398ddcb9ff17b9d4e1196dd98800ba7c5f08fdce93d65` |
| 10 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/instance-source-edition-2.md) | 90 | `declaration-track:7b1e1b45ad6cc14ac02e0c915da18a88bdd6aaef33a9179adf55baac67b2ea77` |
| 11 | `instance` | [small_ulift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-ulift.md) | 94 | `declaration-track:9a76c32c883bc96303b59d0f874742d3a7fdb372c43389939f41d907913c6323` |
| 12 | `theorem` | [small_type](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-type.md) | 98 | `result-track:dbc8e77b4b25abdefe464e3b7fcf2d7d93c33791234955803f03a746b459c766` |
| 13 | `theorem` | [small_congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-congr.md) | 106 | `result-track:5bba34deef293b89534c858e691ed0cb8239fd386907fd83a466a4963f3380b0` |
| 14 | `instance` | [small_subtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-subtype.md) | 110 | `declaration-track:fc8770a058788a61fb984e6a70cb7b5eba13d09549b830bd6d55600991b25f33` |
| 15 | `theorem` | [small_of_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-of-injective.md) | 114 | `result-track:7dac6c0b9149caaca3c41ed43f7ac1bb31b90f3d6a00b81f360e62652262b5c3` |
| 16 | `theorem` | [small_of_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-of-surjective.md) | 119 | `result-track:c2d00a76dd0c9f7dddf8fcf8f88e8b7e9004d8b1fc960bf7d48869e7c9eca466` |
| 17 | `theorem` | [small_subset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-subset.md) | 124 | `result-track:ffc0027420f9275a69b0be4342fe0fba73cd551e7cdfd92a682d1b028f1f53a5` |
| 18 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/instance.md) | 129 | `declaration-track:311c6bc4dbde3a01108ecb1151d5785c565bc985105ea0e272ad8a1caa9e74a9` |
| 19 | `instance` | [small_Pi](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-pi.md) | 141 | `declaration-track:534fa8224631612379af37f2c10f5eb2cd9fd6af86823490bc52a8c0aade0e2e` |
| 20 | `instance` | [small_sigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-sigma.md) | 147 | `declaration-track:795e364cb0d6fc4abccde5bf0f613facb6223c4cc58f02491ac93e664938b0f4` |
| 21 | `instance` | [small_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-prod.md) | 153 | `declaration-track:d3eea24bdd0796eabca459049b6f982cacddc5e532b4e4c071a221780dd9f58c` |
| 22 | `instance` | [small_sum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-sum.md) | 157 | `declaration-track:3b0343b1ef422d5d28fec9190e7e454c58a777935d383de9b0f227a79dbce6e0` |
| 23 | `instance` | [small_set](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-set.md) | 161 | `declaration-track:7f75eb73faa28c1a8c7393d4e24b36c19b973fe74d6275069e6a4307958a9702` |
| 24 | `instance` | [small_range](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-range.md) | 165 | `declaration-track:389df54d4458ab1184396bad5f22ef301e034883d1a16f271adfc1366176955e` |
| 25 | `instance` | [small_image](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/small-image.md) | 170 | `declaration-track:aea31114135ab0464c5b2c65cd88b7d2733deff5dc9a5467f08d082a07973968` |
| 26 | `theorem` | [not_small_type](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SmallBasicNamespacedSmall.lean/declarations/not-small-type.md) | 175 | `result-track:a97f4a0460e7d20ea7cdf386aac27284739c6e9a4d71aacc97c3c40312d79c45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0c4570bbc6b075ce09dbbd8839325ef1eb6811713eb4c542611be27f4af10cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant969310d9ca9d7bde6a34f71d297062883b5a4794139b768ce567b7a6ab10e262.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
