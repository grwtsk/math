# Verification target: Reciprocal Polynomial Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b1b0309325967bc2baa74b10b97318701e650c1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant7568a95d88646a57ef9f25ae3a058e0bae8b2fa7b6ada77e65e7bc57f3775323.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ReciprocalPolynomialNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ReciprocalPolynomialNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b1b0309325967bc2baa74b10b97318701e650c1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant7568a95d88646a57ef9f25ae3a058e0bae8b2fa7b6ada77e65e7bc57f3775323.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant7568a95d88646a57ef9f25ae3a058e0bae8b2fa7b6ada77e65e7bc57f3775323.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [generic_factorization](../../../../CommutativeAlgebra/ReciprocalPolynomialNamespaced.lean/declarations/generic-factorization.md) | 18 | `result-track:d974d3167cf485b86d9f59906244943ab9c69899481e1d0c329f88815407e724` |
| 2 | `theorem` | [determinant_one_polynomial](../../../../CommutativeAlgebra/ReciprocalPolynomialNamespaced.lean/declarations/determinant-one-polynomial.md) | 24 | `result-track:ce8fc592e43b1c6b64a4800049f87ff3adafd3caaf4c94af1ddb432016cf0618` |
| 3 | `theorem` | [inverse_involution](../../../../CommutativeAlgebra/ReciprocalPolynomialNamespaced.lean/declarations/inverse-involution.md) | 31 | `result-track:6684c0d964fabce3c61c13dc453c75e7ea2ce7ed5a8e5dc9e2cf196498dc0740` |
| 4 | `def` | [characterDual](../../../../CommutativeAlgebra/ReciprocalPolynomialNamespaced.lean/declarations/characterdual.md) | 34 | `declaration-track:f695cfae3144cc6042cf4d477600c7faa75f85e9c13d642e2f18612ac73abbfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d4965766208ad212352cfe886115d84a2dec345ca0d06997ed57591ab2049ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant7568a95d88646a57ef9f25ae3a058e0bae8b2fa7b6ada77e65e7bc57f3775323.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant7568a95d88646a57ef9f25ae3a058e0bae8b2fa7b6ada77e65e7bc57f3775323.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
