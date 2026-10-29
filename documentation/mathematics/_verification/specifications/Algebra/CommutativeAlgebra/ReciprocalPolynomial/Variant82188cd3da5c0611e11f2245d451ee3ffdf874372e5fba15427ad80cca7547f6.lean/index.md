# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ReciprocalPolynomial.Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad87e4f90c52840e03743ab1ad0d219cfe3c60e1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean/index.md) · [Full source](../../../../../../Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad87e4f90c52840e03743ab1ad0d219cfe3c60e1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [generic_factorization](../../../../../../Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean/declarations/generic-factorization--8e51d72e6a2c86c1f3c555af.md) | 10 | `result-track:8e51d72e6a2c86c1f3c555af2f8d0fc1e5526c5f5cfedf3b37ea0c6dacd40895` |
| 2 | `theorem` | [determinant_one_polynomial](../../../../../../Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean/declarations/determinant-one-polynomial--534d7aa51a53bf803f82a597.md) | 16 | `result-track:534d7aa51a53bf803f82a5971e4ba7d1cfcc49d11a9a3a5a38259143ea770a20` |
| 3 | `theorem` | [inverse_involution](../../../../../../Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean/declarations/inverse-involution--e66e7000d2b35610bd7ca735.md) | 23 | `result-track:e66e7000d2b35610bd7ca735c4f02f91be8d06dacaef5aef2420e98a8d6437b2` |
| 4 | `def` | [characterDual](../../../../../../Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean/declarations/characterdual--c0fe6bcf35de5e5f5b86dd72.md) | 26 | `declaration-track:c0fe6bcf35de5e5f5b86dd72a5114f87ee1617b732ec5b4531afdbc4f66ba46f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fee24df2f692eec6696de1944f495c9c19455ba400bd857722d1e85d2d36111a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
