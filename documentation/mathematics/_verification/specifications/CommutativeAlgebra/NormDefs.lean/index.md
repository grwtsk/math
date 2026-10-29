# Verification target: Norm Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdf5ed50c13c8c8dce5c3b92b15a1b90579e04da",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NormDefs.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NormDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdf5ed50c13c8c8dce5c3b92b15a1b90579e04da`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Determinant` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [norm](../../../../CommutativeAlgebra/NormDefs.lean/declarations/norm.md) | 57 | `declaration-track:dfc42c51aab3413f5a3ebcf7a5ae6759d56f4b4a1bdb6cde1b621f82fee28999` |
| 2 | `theorem` | [norm_apply](../../../../CommutativeAlgebra/NormDefs.lean/declarations/norm-apply.md) | 60 | `result-track:dd1cac2ac640553911f087a38206ec6d6552234e683dc4997ff9f1560a871be3` |
| 3 | `theorem` | [norm_self](../../../../CommutativeAlgebra/NormDefs.lean/declarations/norm-self.md) | 63 | `result-track:565847b1483bf3f9d9083b110c90cb0226b877b7d2cd71d02878b66a0688d68d` |
| 4 | `theorem` | [norm_eq_one_of_not_exists_basis](../../../../CommutativeAlgebra/NormDefs.lean/declarations/norm-eq-one-of-not-exists-basis.md) | 67 | `result-track:86df2f1254a59103bc1c21a15e84fe184729c1ac22b4923a5bb2953292dacc73` |
| 5 | `theorem` | [norm_eq_one_of_not_module_finite](../../../../CommutativeAlgebra/NormDefs.lean/declarations/norm-eq-one-of-not-module-finite.md) | 72 | `result-track:681be8232d638b5bcb7b27644a0c8056972e019d647e52990330154416685b69` |
| 6 | `theorem` | [norm_eq_matrix_det](../../../../CommutativeAlgebra/NormDefs.lean/declarations/norm-eq-matrix-det.md) | 78 | `result-track:69d3b0c5ee5958c5ec5aedb79cf1b021d5ac7ab7181d4d44886c8e704d3f7432` |
| 7 | `theorem` | [norm_algebraMap_of_basis](../../../../CommutativeAlgebra/NormDefs.lean/declarations/norm-algebramap-of-basis.md) | 83 | `result-track:4a95bb15f8cf4e2f27822cbb537b45ae2cc0e349975ff9480edf9f7237eefa49` |
| 8 | `theorem` | [norm_algebraMap](../../../../CommutativeAlgebra/NormDefs.lean/declarations/norm-algebramap.md) | 96 | `result-track:f8ddb76e92f78bbac3074524af94e12327effce371298943aa18547d873e8cb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cef6ba81ca567a8c446915682cbdebfd59644d60a059034461a01d6934af241b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
