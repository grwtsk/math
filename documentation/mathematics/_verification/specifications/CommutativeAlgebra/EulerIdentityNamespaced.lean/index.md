# Verification target: Euler Identity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8da273876328566d4e9111d88840a190b11b4aa9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/EulerIdentity/Variant980e22f85fe27befa8406d0c5c02a5da7680117b1243cdd4e3d8b81c6df0be69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/EulerIdentityNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/EulerIdentityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8da273876328566d4e9111d88840a190b11b4aa9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/EulerIdentity/Variant980e22f85fe27befa8406d0c5c02a5da7680117b1243cdd4e3d8b81c6df0be69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/EulerIdentity/Variant980e22f85fe27befa8406d0c5c02a5da7680117b1243cdd4e3d8b81c6df0be69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.PDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Homogeneous` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsWeightedHomogeneous.pderiv](../../../../CommutativeAlgebra/EulerIdentityNamespaced.lean/declarations/isweightedhomogeneous-pderiv.md) | 35 | `result-track:39273a239b57b6e4a08971914281f0bc3b513c538248b289d952c3a9bc24a22e` |
| 2 | `lemma` | [IsHomogeneous.pderiv](../../../../CommutativeAlgebra/EulerIdentityNamespaced.lean/declarations/ishomogeneous-pderiv.md) | 51 | `result-track:1068512cf30cf63579b4bff34c43ac4803872c3b6883f2ce99e373715752eade` |
| 3 | `theorem` | [IsWeightedHomogeneous.sum_weight_X_mul_pderiv](../../../../CommutativeAlgebra/EulerIdentityNamespaced.lean/declarations/isweightedhomogeneous-sum-weight-x-mul-pderiv.md) | 62 | `result-track:d6e8bd9f25234712b9d844323c6e581cee63832e5d33006c778c1fd02e15832e` |
| 4 | `theorem` | [IsHomogeneous.sum_X_mul_pderiv](../../../../CommutativeAlgebra/EulerIdentityNamespaced.lean/declarations/ishomogeneous-sum-x-mul-pderiv.md) | 77 | `result-track:5472655b4d641fb4d1c965d792388453ae9e0afbc6c19e0af2df6b07ede852d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adc7e966d0c389c9c111d284f1f7b5d241933c883c842811ea234517d75c07f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/EulerIdentity/Variant980e22f85fe27befa8406d0c5c02a5da7680117b1243cdd4e3d8b81c6df0be69.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/EulerIdentity/Variant980e22f85fe27befa8406d0c5c02a5da7680117b1243cdd4e3d8b81c6df0be69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
