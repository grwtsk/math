# Verification target: Length

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "046e9c403ccabeb328b69cedd3130d17e00f7cdd",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Length.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Length.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `046e9c403ccabeb328b69cedd3130d17e00f7cdd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.KrullDimension` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteLength` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Module.length](../../../../CommutativeAlgebra/Length.lean/declarations/module-length.md) | 28 | `declaration-track:b602b86c442a6357b454b4d9351db4abbc2abc9e5bd0d65e307cb70f0c312092` |
| 2 | `lemma` | [Module.coe_length](../../../../CommutativeAlgebra/Length.lean/declarations/module-coe-length.md) | 31 | `result-track:7e146bdb991207f0d68de28aca56c48f5fcf52f8fe2833c84381df0228e7632b` |
| 3 | `lemma` | [Module.length_eq_height](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-height.md) | 35 | `result-track:94ef02f11cc6ee17b56e7653a61ff1fc6943e11c70e9f6b3cd2af316d0df51f0` |
| 4 | `lemma` | [Module.length_eq_coheight](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-coheight.md) | 39 | `result-track:6d811c484dfb02553fa99561d4fa8912ea17acf802ed9889343212b5904588ab` |
| 5 | `lemma` | [Module.length_eq_zero_iff](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-zero-iff.md) | 45 | `result-track:2a4ab8431f2aee4a33ecd89482b97472eeb7a36ac44ef5c771a65cf4ec0f22e4` |
| 6 | `lemma` | [Module.length_eq_zero](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-zero.md) | 50 | `result-track:3c9f8b6ee7898fe8392a64125a2f6673e6036558cf56c023a00105cd1f37f7f7` |
| 7 | `lemma` | [Module.length_eq_zero_of_subsingleton_ring](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-zero-of-subsingleton-ring.md) | 54 | `result-track:e216c75c8f98fa0cf570c68aece09199ce7e6da7d7658be2b59a796f8eb3a172` |
| 8 | `lemma` | [Module.length_pos_iff](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-pos-iff.md) | 58 | `result-track:e7648f49f3829c2dc7f50a821652862ad194b57c3bef50651a09a55f65fc3b6a` |
| 9 | `lemma` | [Module.length_pos](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-pos.md) | 61 | `result-track:301fcfc82cafe50930c85f507e83d5df9796193ed43cd2edf76bd9c601e42483` |
| 10 | `lemma` | [Module.length_compositionSeries](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-compositionseries.md) | 64 | `result-track:0de9b055d5c92ebd0dfed358188cea60b7fd0ae93d96479e10374ff50bf501cf` |
| 11 | `lemma` | [Module.length_eq_top_iff_infiniteDimensionalOrder](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-top-iff-infinitedimensionalorder.md) | 82 | `result-track:58b52605c00c0b72cc5cc856f3b5f00c1d49f23a2cf24286c2ae99487c3d89a8` |
| 12 | `lemma` | [Module.length_ne_top_iff_finiteDimensionalOrder](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-ne-top-iff-finitedimensionalorder.md) | 87 | `result-track:66ae8dfdd23c9bee1c41506951137fbb826b8373d286a29fba06427ab0dc6e07` |
| 13 | `lemma` | [Module.length_ne_top_iff](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-ne-top-iff.md) | 91 | `result-track:d283cd427194a189d80eca1b609ef3ffc0987a56ee93ca83eca3840e38d017b8` |
| 14 | `lemma` | [Module.length_ne_top](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-ne-top.md) | 100 | `result-track:37f846fee838db8efb5d04efa6353e31adcc531a689ecb1d1ef50e9bebd44419` |
| 15 | `lemma` | [Module.length_submodule](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-submodule.md) | 104 | `result-track:4483812bcdf20439b4609ac9216ffc0af0520ca450b86a95585c49265d4d0500` |
| 16 | `lemma` | [Module.length_quotient](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-quotient.md) | 109 | `result-track:912e07a48578cee5f7db9bf46476baf68f6dfd685ad0051965a832326cec5cc6` |
| 17 | `lemma` | [LinearEquiv.length_eq](../../../../CommutativeAlgebra/Length.lean/declarations/linearequiv-length-eq.md) | 115 | `result-track:057f3d2bf2b20ddb7e8f0c814a3efc3dea07f47ca3072a4a7d96d1aa15597674` |
| 18 | `lemma` | [Module.length_bot](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-bot.md) | 121 | `result-track:1803d931855f806bfd018e4cc2765ed92d76572633fb312dcd0939723833b2cc` |
| 19 | `lemma` | [Module.length_top](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-top.md) | 125 | `result-track:757a7959ab866a01fe0ad1384bdc542c3eb95e104368b0e3fe7a6f258ad57e98` |
| 20 | `lemma` | [Submodule.height_lt_top](../../../../CommutativeAlgebra/Length.lean/declarations/submodule-height-lt-top.md) | 129 | `result-track:e75026551856fa8fd636c63e097c4e9d2ae2377a6b649fb4017027208aefe928` |
| 21 | `lemma` | [Submodule.height_strictMono](../../../../CommutativeAlgebra/Length.lean/declarations/submodule-height-strictmono.md) | 133 | `result-track:497422801a52452f79e2ef706cad1f6e21c1e499612ff8519157ec8fe7340ff5` |
| 22 | `lemma` | [Submodule.length_lt](../../../../CommutativeAlgebra/Length.lean/declarations/submodule-length-lt.md) | 137 | `result-track:9cdca484ea1ab838c1b09cfe5bb5163728e0e63b4bb03552093c626a662ea9f4` |
| 23 | `lemma` | [Module.length_eq_add_of_exact](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-add-of-exact.md) | 147 | `result-track:b40eb2ae1a28382720a05d047bde88f4aff78c9048adad1a490ac15b3d917572` |
| 24 | `lemma` | [Module.length_le_of_injective](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-le-of-injective.md) | 174 | `result-track:13679d9af438667832450e408819810ee9c4224b9bcf8f043b11b35b03f1557b` |
| 25 | `lemma` | [Module.length_le_of_surjective](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-le-of-surjective.md) | 180 | `result-track:9f439855c7f62e07237f577a124bd18e405306e2f9b8042da9f9b846c06a64fa` |
| 26 | `lemma` | [Module.length_prod](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-prod.md) | 187 | `result-track:22fbfeae0c1526c3adb2d097e50e57f40e358bec2674537f54ee26c4e933884c` |
| 27 | `lemma` | [Module.length_pi_of_fintype](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-pi-of-fintype.md) | 193 | `result-track:7acde790dfc39c40d2778b900caffc4bcb7080e486f87be1a7553fe3f23cb549` |
| 28 | `lemma` | [Module.length_finsupp](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-finsupp.md) | 207 | `result-track:1407c0d67ef4e8e5bedbb118cdd9ab6b85083a8dd9cf1d3552f38682e8388c7e` |
| 29 | `lemma` | [Module.length_pi](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-pi.md) | 224 | `result-track:a6bd6cc0c3d242aacab69908d2ce976ffdda0a58472ce4c53b569d700b8ad812` |
| 30 | `lemma` | [Module.length_of_free](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-of-free.md) | 237 | `result-track:3588f764d4034f87386d3320f06f411f3ff97bf91e217d345e22d414fbeb5a43` |
| 31 | `lemma` | [Module.length_of_free_of_finite](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-of-free-of-finite.md) | 252 | `result-track:fdb720f6dd34c0de9107ac511f22dabc3010171c62a87b7855f5867e7a996c79` |
| 32 | `lemma` | [Module.length_eq_one_iff](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-one-iff.md) | 257 | `result-track:8fad9235cecead1d654322cbc9841bb53c1f63c19eda12eae4a4f381d27cf788` |
| 33 | `lemma` | [Module.length_eq_one](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-one.md) | 264 | `result-track:94ff7a7800d6afcb73e4dc855088add65171f7acb68e943be099b360586cbc67` |
| 34 | `lemma` | [Module.length_eq_rank](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-rank.md) | 268 | `result-track:b9458c8d60fbb8b42fc3c51c863d98ad3448d4ff5778acfcc83b796c85e46c3f` |
| 35 | `lemma` | [Module.length_eq_finrank](../../../../CommutativeAlgebra/Length.lean/declarations/module-length-eq-finrank.md) | 273 | `result-track:30cca17f452f0bd68d1acd96eb1247aa933de86648882b6f402176600787a6cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=151554bf666120c2ec68805dbe90e2a622fec55c1735660602b29a92894df790 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
