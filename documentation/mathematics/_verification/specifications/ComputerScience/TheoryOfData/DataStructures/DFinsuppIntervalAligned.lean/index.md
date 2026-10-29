# Verification target: DFinsupp Interval Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b40a7b5e4d6a33b9e98897a063e4475ccd40557f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant16484a860c460efb2d590bdccb94b6f9b12962f1a8f1354f10a089cae74521a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b40a7b5e4d6a33b9e98897a063e4475ccd40557f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant16484a860c460efb2d590bdccb94b6f9b12962f1a8f1354f10a089cae74521a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant16484a860c460efb2d590bdccb94b6f9b12962f1a8f1354f10a089cae74521a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.LocallyFinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dfinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/dfinsupp.md) | 32 | `declaration-track:d23f58cc9a4d8b9147c11d6c1bca4ed05f24d35d3ecb6a03917970efd3b7e518` |
| 2 | `theorem` | [card_dfinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/card-dfinsupp.md) | 41 | `result-track:7c9a3f5152ed194a646ae00e2444349df3b780aea9dde2ce336d4ad0ff600823` |
| 3 | `theorem` | [mem_dfinsupp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/mem-dfinsupp-iff.md) | 48 | `result-track:1caa1d1f4140c6b1b2d13753e99515e42b692142a5feeb882336a69e9adb0e18` |
| 4 | `theorem` | [mem_dfinsupp_iff_of_support_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/mem-dfinsupp-iff-of-support-subset.md) | 64 | `result-track:5e8e68169976cdcfe0a2ed28140ffd87667b125a1e84c9e337a29b2ee75d8618` |
| 5 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/singleton.md) | 87 | `declaration-track:7fe23d47742c4be0846661c103f8aa023d42a9d5447d6ef5dd6ada25c588729a` |
| 6 | `theorem` | [mem_singleton_apply_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/mem-singleton-apply-iff.md) | 92 | `result-track:a3029edb98e340b01c9c448bf4919d6d31218ec182fecf03a54e21f4f485aac4` |
| 7 | `def` | [rangeIcc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/rangeicc.md) | 104 | `declaration-track:4bc1a7cab81ea3be1ae47d629e21b87c4d2123b0f418a1cbc428e16e451ea699` |
| 8 | `theorem` | [rangeIcc_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/rangeicc-apply.md) | 119 | `result-track:9c6169087c596ea50d8904134d0175f7e3fe0abafae0460ecb6d89ba464664ad` |
| 9 | `theorem` | [mem_rangeIcc_apply_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/mem-rangeicc-apply-iff.md) | 122 | `result-track:c0e28623b3389aec094d6e7507edb0dd4eaca3a428a3b735cb783658440af0ae` |
| 10 | `theorem` | [support_rangeIcc_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/support-rangeicc-subset.md) | 125 | `result-track:9b5783afefb9323dbae61ecea5b19814fbebf98c8bcb68566e39b8d6c0568961` |
| 11 | `def` | [pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/pi.md) | 143 | `declaration-track:6b91170ac0556a2d9171570ad722c06970e61eea43326fb0fa09329ea8cc5372` |
| 12 | `theorem` | [mem_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/mem-pi.md) | 147 | `result-track:bccfdfacd801b291864bb0761d6a01c80ede25c2cd8e2be07f5fe9b8dc5f244b` |
| 13 | `theorem` | [card_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/card-pi.md) | 152 | `result-track:e9a7efc02d90210f0c1ccf7db0b8f85255f43c3a8503601baa1d78abc4c2a67d` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/instance.md) | 165 | `declaration-track:fb6df815658ddb94b9814bc17e6cfdf8be534281f69a839c7aea3cd806341eca` |
| 15 | `theorem` | [Icc_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/icc-eq.md) | 175 | `result-track:1f0d5039ba464ae7a8164ccbd3ddcc2f0caf4ba7ea3a4c5641716812de8f157c` |
| 16 | `theorem` | [card_Icc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/card-icc.md) | 178 | `result-track:1fa3b84dbdc0905d5e80f6c00f45d54862371f266fc5e6440ef4b82013d10cec` |
| 17 | `theorem` | [card_Ico](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/card-ico.md) | 182 | `result-track:7a5fc037902db3c8241bfb21b3f8a44857d6d2a6db16e6e0ec14620ebfef4f53` |
| 18 | `theorem` | [card_Ioc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/card-ioc.md) | 186 | `result-track:d64012cf4a1fa93382cf92675bd756cd5cc0331cc8a68b77161f24728ebf9e14` |
| 19 | `theorem` | [card_Ioo](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/card-ioo.md) | 190 | `result-track:d5e93b3dd945a4ceb6a147be7ed005b50f26308f6f5adf24069ffa5c306ba48c` |
| 20 | `theorem` | [card_uIcc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/card-uicc.md) | 200 | `result-track:8bfcfdcf0f978c7131c4b0ee46250c909b5f6f72b12dd5ab46077d2a842755b3` |
| 21 | `theorem` | [card_Iic](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/card-iic.md) | 214 | `result-track:42255eb5082a42be749d52ca5685692c1d8ad47ace104b5400b6a40103054f53` |
| 22 | `theorem` | [card_Iio](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppIntervalAligned.lean/declarations/card-iio.md) | 219 | `result-track:b8f2fe0d1af84f1b5ed2ed599a0e4652870b31d59746524a74bac48764b22d88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2197545ee4ac03fa58edfedd93d155519875b6511b2dd757ea9dc9126ed935ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant16484a860c460efb2d590bdccb94b6f9b12962f1a8f1354f10a089cae74521a8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Interval/Variant16484a860c460efb2d590bdccb94b6f9b12962f1a8f1354f10a089cae74521a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
