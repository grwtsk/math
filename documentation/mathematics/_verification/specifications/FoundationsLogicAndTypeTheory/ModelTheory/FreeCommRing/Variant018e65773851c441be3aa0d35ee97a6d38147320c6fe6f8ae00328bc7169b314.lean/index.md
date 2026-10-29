# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.FreeCommRing.Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b05de9525a4de441c42f65422c1234b5874538eb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b05de9525a4de441c42f65422c1234b5874538eb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [genericPolyMap](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean/declarations/genericpolymap--65f8169cd1cecf88e6b20ec4.md) | 43 | `declaration-track:65f8169cd1cecf88e6b20ec44e95bb04e44ff0151461a2ad87249969c7eae6d2` |
| 2 | `def` | [mvPolynomialSupportLEEquiv](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean/declarations/mvpolynomialsupportleequiv--1aa0aeb7516a152b636b448a.md) | 52 | `declaration-track:1aa0aeb7516a152b636b448a80732464a62c81915aa5a3c2f8de26c6341c491a` |
| 3 | `theorem` | [MvPolynomialSupportLEEquiv_symm_apply_coeff](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean/declarations/mvpolynomialsupportleequiv-symm-apply-coeff--e58aa9c4fff17b62ff1b5271.md) | 72 | `result-track:e58aa9c4fff17b62ff1b5271e2cd89e2e15a7eb25a49a810649842228a790b59` |
| 4 | `theorem` | [lift_genericPolyMap](../../../../../../FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean/declarations/lift-genericpolymap--62bd59b3c83c8bbdc4ba18ca.md) | 80 | `result-track:62bd59b3c83c8bbdc4ba18ca0c386942a8dc5f0cfda0eadb448fde1cc269f2fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f3223acd3ec1aba64664335338c6bfed4835df84727d8467c2a081ad2e04316 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant018e65773851c441be3aa0d35ee97a6d38147320c6fe6f8ae00328bc7169b314.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
