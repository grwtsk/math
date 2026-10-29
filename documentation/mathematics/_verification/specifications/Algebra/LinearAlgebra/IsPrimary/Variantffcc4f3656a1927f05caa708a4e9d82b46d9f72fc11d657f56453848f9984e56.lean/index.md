# Verification target: GRWTSK.Algebra.LinearAlgebra.IsPrimary.Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15790229a6481fd2e3488f4a4231123ec2d6b26a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/IsPrimary/Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/IsPrimary/Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15790229a6481fd2e3488f4a4231123ec2d6b26a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsPrimary/Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimary](../../../../../../Algebra/LinearAlgebra/IsPrimary/Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56.lean/declarations/isprimary--341c2b079a319ad049b46af5.md) | 45 | `declaration-track:341c2b079a319ad049b46af58f6d7c7e8d0e9f43da7d29b3644495d703b31bce` |
| 2 | `lemma` | [IsPrimary.ne_top](../../../../../../Algebra/LinearAlgebra/IsPrimary/Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56.lean/declarations/isprimary-ne-top--057441f2fb27773447448978.md) | 50 | `result-track:057441f2fb27773447448978613be523531be2caea5015c11cd3289789b005b2` |
| 3 | `lemma` | [isPrimary_iff_zero_divisor_quotient_imp_nilpotent_smul](../../../../../../Algebra/LinearAlgebra/IsPrimary/Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56.lean/declarations/isprimary-iff-zero-divisor-quotient-imp-nilpotent-smul--03e1917264eaab71c2de7b32.md) | 58 | `result-track:03e1917264eaab71c2de7b32390958e2834c84da2ae01aefa86e1ab80a88a949` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20fb3671ec90880113776c1e11159bc2a6bd09d846e97bc0e9d83cf7b2a705a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/IsPrimary/Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/IsPrimary/Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
