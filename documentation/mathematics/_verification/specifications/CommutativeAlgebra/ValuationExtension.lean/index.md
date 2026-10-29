# Verification target: Valuation Extension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38589d7ca914e5528ad283f814919525f54661cd",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Extension/Variantc025401d80d213467be2cf394e232f235a4ef01fdd382bc337c26e2621330df6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationExtension.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationExtension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38589d7ca914e5528ad283f814919525f54661cd`.

Source path: `GRWTSK/Algebra/Extension/Variantc025401d80d213467be2cf394e232f235a4ef01fdd382bc337c26e2621330df6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Extension/Variantc025401d80d213467be2cf394e232f235a4ef01fdd382bc337c26e2621330df6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Integers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasExtension](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/hasextension.md) | 59 | `declaration-track:0f2833800d1151bc59c1334e6158da9b73c77b99c2efaf41c9255984cc6998ed` |
| 2 | `theorem` | [val_map_le_iff](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/val-map-le-iff.md) | 72 | `result-track:7b0e1cfc9fb875de6cef3bc45d79967e2e8af9311e601c33cbe1855deea914ce` |
| 3 | `theorem` | [val_map_lt_iff](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/val-map-lt-iff.md) | 75 | `result-track:4d63e883fa3edc99adca33d295629515bd4cc1e3a26802aa84ce0059d0b72220` |
| 4 | `theorem` | [val_map_eq_iff](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/val-map-eq-iff.md) | 78 | `result-track:91b8c7b652411d15fed12a1cba8a95f2a83237269850db0eab2d511856e2f4a3` |
| 5 | `theorem` | [val_map_le_one_iff](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/val-map-le-one-iff.md) | 81 | `result-track:08ba34dac771017a37d0cedf992f4f9a19724700b88a51ebb18f011802395380` |
| 6 | `theorem` | [val_map_lt_one_iff](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/val-map-lt-one-iff.md) | 84 | `result-track:41b35ec36679c41b5a07aa94742cd37d9b1c8ddbf2fc745ed62a5ac647b53ef9` |
| 7 | `theorem` | [val_map_eq_one_iff](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/val-map-eq-one-iff.md) | 87 | `result-track:4e59f47120fe73a62c2a0817d3a48711e9c41c71d9b999fb7d828c1c384e0ce2` |
| 8 | `instance` | [id](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/id.md) | 93 | `declaration-track:f7e87839ed93dfb62e8e82c02c3f07b7db105538ba031cb643a1b26996bb1acb` |
| 9 | `theorem` | [ofComapInteger](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/ofcomapinteger.md) | 108 | `result-track:232e6d4e89154808c08752c8dda5e7c4c762b4b5d39bb85cb4e7b5539c641f61` |
| 10 | `instance` | [instAlgebraInteger](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/instalgebrainteger.md) | 115 | `declaration-track:89d5b0fde96479d64573fa47f1248b93da18c0db1e2259563334836727103ba3` |
| 11 | `theorem` | [val_smul](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/val-smul.md) | 124 | `result-track:a04a23045d460602da7c1e715b87b08f2a243db1bb82aa59b83a314d35d0a64a` |
| 12 | `theorem` | [val_algebraMap](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/val-algebramap.md) | 128 | `result-track:7f2760b3850866ef5118416548965614e82b9e1c9e2b40aa32de4dc81403ee7e` |
| 13 | `instance` | [instIsScalarTowerInteger](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/instisscalartowerinteger.md) | 132 | `declaration-track:97212124298adda6947789e8b78e9f324820bba0635c6204862e9103326713a0` |
| 14 | `instance` | [instNoZeroSMulDivisorsInteger](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/instnozerosmuldivisorsinteger.md) | 137 | `declaration-track:9248b45fcca383b65d650f9ba5879d64e72c3a10ec96781ec013401330186599` |
| 15 | `theorem` | [algebraMap_injective](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/algebramap-injective.md) | 143 | `result-track:a14d2bc1f66a66a7317e8e1aa0da81ae26a23a6a111bb82df3600d8d31386578` |
| 16 | `theorem` | [instIsLocalHomValuationInteger](../../../../CommutativeAlgebra/ValuationExtension.lean/declarations/instislocalhomvaluationinteger.md) | 151 | `result-track:6141c18cb1724277113c223705fbf7b50d2b155f36765ef4b9829482dcdb34ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da1ed49cf685836dd76567a473cecfa62220f460290654e1c95f0e856f49b3c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Extension/Variantc025401d80d213467be2cf394e232f235a4ef01fdd382bc337c26e2621330df6.lean","GRWTSK/_verification/specifications/Algebra/Extension/Variantc025401d80d213467be2cf394e232f235a4ef01fdd382bc337c26e2621330df6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
