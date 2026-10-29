# Verification target: Ramification Group Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5139de92c86eccbda64222b0dbcca9705c633601",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RamificationGroup/Variant1d898b185a499673e8b5a7ba1ebea6368bd44c7537078e680af4adb2ab0420be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RamificationGroupNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RamificationGroupNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5139de92c86eccbda64222b0dbcca9705c633601`.

Source path: `GRWTSK/Algebra/RamificationGroup/Variant1d898b185a499673e8b5a7ba1ebea6368bd44c7537078e680af4adb2ab0420be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RamificationGroup/Variant1d898b185a499673e8b5a7ba1ebea6368bd44c7537078e680af4adb2ab0420be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationSubring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [decompositionSubgroup](../../../../CommutativeAlgebra/RamificationGroupNamespaced.lean/declarations/decompositionsubgroup.md) | 34 | `declaration-track:c26eb1fb67320ef9c91a73ecba738c8c61e90882bbe4f4b3c068791ce7b88b43` |
| 2 | `def` | [subMulAction](../../../../CommutativeAlgebra/RamificationGroupNamespaced.lean/declarations/submulaction.md) | 39 | `declaration-track:ae2dcde242060bcb47243d5af929ac3a9c5d9531f686a5e4f2b82c850af0dd8d` |
| 3 | `instance` | [decompositionSubgroupMulSemiringAction](../../../../CommutativeAlgebra/RamificationGroupNamespaced.lean/declarations/decompositionsubgroupmulsemiringaction.md) | 44 | `declaration-track:45ee3d28d69589beb7e6b6849f5574635c2d94d90c0cbf77affad318a6f111f8` |
| 4 | `def` | [inertiaSubgroup](../../../../CommutativeAlgebra/RamificationGroupNamespaced.lean/declarations/inertiasubgroup.md) | 54 | `declaration-track:c934783bfbf2822ff966d46255f2994dcacf2ed24c495c77dfe4862e09c86526` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80a1a32fa1fde8f54d59bc0815b0668324fc7acb9acf71f8de35c115860eda57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RamificationGroup/Variant1d898b185a499673e8b5a7ba1ebea6368bd44c7537078e680af4adb2ab0420be.lean","GRWTSK/_verification/specifications/Algebra/RamificationGroup/Variant1d898b185a499673e8b5a7ba1ebea6368bd44c7537078e680af4adb2ab0420be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
