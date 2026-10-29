# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d3564536de6278f0f70be12a1d253e8ffec07db",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean/index.md) · [Full source](../../../../../../Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d3564536de6278f0f70be12a1d253e8ffec07db`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_det_X_add_C_le](../../../../../../Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean/declarations/natdegree-det-x-add-c-le--23baaa9a29239250f15158cf.md) | 46 | `result-track:23baaa9a29239250f15158cf158e1ab6b817adbf72f75da609fde3e6b4bea69d` |
| 2 | `theorem` | [coeff_det_X_add_C_zero](../../../../../../Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean/declarations/coeff-det-x-add-c-zero--a7b8043a180ef7f78a253af0.md) | 77 | `result-track:a7b8043a180ef7f78a253af0e87d23bd969c32272193ec397e61cead25e425e1` |
| 3 | `theorem` | [coeff_det_X_add_C_card](../../../../../../Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean/declarations/coeff-det-x-add-c-card--cf6c74c71deb73032164dcb8.md) | 88 | `result-track:cf6c74c71deb73032164dcb838bc0ec90d03700631c2ae802266e3967bd0426a` |
| 4 | `theorem` | [leadingCoeff_det_X_one_add_C](../../../../../../Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean/declarations/leadingcoeff-det-x-one-add-c--d9c8e763522584e54d772d35.md) | 105 | `result-track:d9c8e763522584e54d772d35f6f638f0d22aff506507ddae1b8b5cc69d75c36b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f22af30aa367902991ca572d7b7043928d4136e1882773554aae7ed1e066a97d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Polynomial/Variant0c9e1aa0dccc6fe84aa68d99ae8b18ba05150ed4f093ec3e7af5d62578fe92e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
