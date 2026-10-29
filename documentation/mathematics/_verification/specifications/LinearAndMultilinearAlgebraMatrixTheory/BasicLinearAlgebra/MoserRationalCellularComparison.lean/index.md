# Verification target: GRWTSK.Geometry.Hodge.MoserRationalCellularComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd09627ce38d24a11fe6d0b766a93da76ef0bef5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/MoserRationalCellularComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd09627ce38d24a11fe6d0b766a93da76ef0bef5`.

Source path: `GRWTSK/Geometry/Hodge/MoserRationalCellularComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/MoserRationalCellularComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.RationalCycleCellular`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalCycleCellular.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.MoserMatrixHodge`](../../../../../Geometry/MoserMatrixHodge.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RationalCellClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/declarations/rationalcellclass.md) | 11 | `declaration-track:f87eea7814fbcc970093ebac71155243e282416d9674f85f2eeaae5ce1b162c4` |
| 2 | `def` | [rationalHodgeData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/declarations/rationalhodgedata.md) | 14 | `declaration-track:63c73904ffac96dfab73b6b5729d6e80d5364b467232c4f42df83467074afe97` |
| 3 | `theorem` | [rationalHodgeData_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/declarations/rationalhodgedata-surjective.md) | 19 | `result-track:42b1df58109e555ea640c1cfed50c9ff80f88f3bd52f4dff442455151be43a29` |
| 4 | `def` | [sourceTheorem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/declarations/sourcetheorem.md) | 24 | `declaration-track:69d58fd2748616a75d958f5092e8ada2fed04c027f74c6f0e6d5213a7b2a5d6f` |
| 5 | `def` | [comparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/declarations/comparison.md) | 36 | `declaration-track:36869c1004122aaa7af14c95ea6f6625579aa9b2b43a4a29e50e2772984c8352` |
| 6 | `def` | [toRealCochain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/declarations/torealcochain.md) | 43 | `declaration-track:2126c8357073e7de56b408904d95d6e46015c543aff111f26df8b778ef9fa7d1` |
| 7 | `theorem` | [toRealCochain_harmonic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/declarations/torealcochain-harmonic.md) | 47 | `result-track:62c83eaefe790534c48a68d55ccb59853c59442643d0e4d296b5c20fb5aa57c7` |
| 8 | `theorem` | [exists_cycle_and_real_harmonic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/declarations/exists-cycle-and-real-harmonic.md) | 55 | `result-track:3de28aecb2497f473086af04417f28974569faa0c64d044abe24c1d8f18aaff1` |
| 9 | `theorem` | [real_harmonic_iff_constant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MoserRationalCellularComparison.lean/declarations/real-harmonic-iff-constant.md) | 63 | `result-track:acb7d494cab041fd36fcddad1b349f0b2f61e4ef76b28b5b57201b807cb2e70d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8dabb9e108f1f2d5401538ef655c502baa99dd1c9133fa39324680295c36889 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/Hodge/MoserRationalCellularComparison.lean","GRWTSK/_verification/specifications/Geometry/Hodge/MoserRationalCellularComparison.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
