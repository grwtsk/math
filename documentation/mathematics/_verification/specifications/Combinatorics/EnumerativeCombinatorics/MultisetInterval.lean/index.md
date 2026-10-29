# Verification target: Multiset Interval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6602425bbde827f3600e1dca9284c0f95f17eeab",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant22a6243e690fb5922f52332822e7050a25e487a206de563be616d8ab588a1501.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6602425bbde827f3600e1dca9284c0f95f17eeab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant22a6243e690fb5922f52332822e7050a25e487a206de563be616d8ab588a1501.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant22a6243e690fb5922f52332822e7050a25e487a206de563be616d8ab588a1501.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Multiset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/declarations/instlocallyfiniteorder.md) | 37 | `declaration-track:f94030b62c414da779d1566e4233356bed9b8254b47f6609789f295f51c75489` |
| 2 | `theorem` | [Icc_eq](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/declarations/icc-eq.md) | 43 | `result-track:5a8c61f6b3283423ac99d93d6e3773b8a1410d4766dc1e58ae0265012e96f0e3` |
| 3 | `theorem` | [uIcc_eq](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/declarations/uicc-eq.md) | 48 | `result-track:b7b38282658167a9d3a7347ac4b4a55b109bcfe4cf4453d23c2c71d1f610fbb8` |
| 4 | `theorem` | [card_Icc](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/declarations/card-icc.md) | 53 | `result-track:3081cb740fb588c037486e90d2ca4171a0d305df10d3fc830ca7330bfab2d256` |
| 5 | `theorem` | [card_Ico](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/declarations/card-ico.md) | 58 | `result-track:e98565dbf9efe3ecf7cece8fe44d49e8a260d9f406b25ff7244acd477fb1ca85` |
| 6 | `theorem` | [card_Ioc](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/declarations/card-ioc.md) | 62 | `result-track:61c8b9b106aaf3956ce14d8328ea72a0cb5449c14ac814b1879c7b575bf2e363` |
| 7 | `theorem` | [card_Ioo](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/declarations/card-ioo.md) | 66 | `result-track:5de9581694ec22e32b45025f635b0baed3ad3aa7126460aed8dee5f7ecc0ea7a` |
| 8 | `theorem` | [card_uIcc](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/declarations/card-uicc.md) | 70 | `result-track:250fd784d2ce49d697b8c5a7e7483cc4e70ca6ea8de4cb20b14cb91761bf9dcc` |
| 9 | `theorem` | [card_Iic](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetInterval.lean/declarations/card-iic.md) | 75 | `result-track:510dced384488b8bd9d555e1c08ee0d9156daab1e60d9cd7994b26dc73afccb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7af3e78c06951eee81e4d9131204918cddafbacb0b00112fb9b89143a8207671 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant22a6243e690fb5922f52332822e7050a25e487a206de563be616d8ab588a1501.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Interval/Variant22a6243e690fb5922f52332822e7050a25e487a206de563be616d8ab588a1501.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
