# Verification target: Degree Monomial Monomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "070ea1292fd77b2a3bbbd11cc4d29f472deea8f9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Monomial/Variant324bd36db2a68742f57833251fb363072d2e6e30ae9e418dc8c39bfb2fc33558.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DegreeMonomialMonomial.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DegreeMonomialMonomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `070ea1292fd77b2a3bbbd11cc4d29f472deea8f9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Monomial/Variant324bd36db2a68742f57833251fb363072d2e6e30ae9e418dc8c39bfb2fc33558.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Monomial/Variant324bd36db2a68742f57833251fb363072d2e6e30ae9e418dc8c39bfb2fc33558.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Definitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [natDegree_le_pred](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DegreeMonomialMonomial.lean/declarations/natdegree-le-pred.md) | 28 | `result-track:40bae11d1ba34b791edaff54d374da078eafa7eed1ea3411eeb898f1eeead182` |
| 2 | `theorem` | [monomial_natDegree_leadingCoeff_eq_self](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DegreeMonomialMonomial.lean/declarations/monomial-natdegree-leadingcoeff-eq-self.md) | 35 | `result-track:95f647505f02014125391c6328797a82b9429682c085d1cf26cb80d2f621bccb` |
| 3 | `theorem` | [C_mul_X_pow_eq_self](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DegreeMonomialMonomial.lean/declarations/c-mul-x-pow-eq-self.md) | 41 | `result-track:80edf64e14a99c07926f3f2f5b892746963606a5f261baca0c20b0beb7bb230f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8187a22b976dd2cbe5d62fc17fb33b1ece5ca5ff68ca36f497a194b7fcef4c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Monomial/Variant324bd36db2a68742f57833251fb363072d2e6e30ae9e418dc8c39bfb2fc33558.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Monomial/Variant324bd36db2a68742f57833251fb363072d2e6e30ae9e418dc8c39bfb2fc33558.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
