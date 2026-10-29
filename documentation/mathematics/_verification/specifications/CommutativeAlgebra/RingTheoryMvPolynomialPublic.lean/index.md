# Verification target: Ring Theory Mv Polynomial Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17bea47eb6168a5059caae64e4dfb870968dd0d5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variantb2027a8b967dca5f374b5299e9eee75c1dc711a28e946871ca11700abfbf3dba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryMvPolynomialPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryMvPolynomialPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17bea47eb6168a5059caae64e4dfb870968dd0d5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variantb2027a8b967dca5f374b5299e9eee75c1dc711a28e946871ca11700abfbf3dba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MvPolynomial/Variantb2027a8b967dca5f374b5299e9eee75c1dc711a28e946871ca11700abfbf3dba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quotient_mk_comp_C_injective](../../../../CommutativeAlgebra/RingTheoryMvPolynomialPublic.lean/declarations/quotient-mk-comp-c-injective.md) | 34 | `result-track:ed2d154afa0e28548b6e615c34506768056059f32a0166beb23a57f5630de255` |
| 2 | `theorem` | [rank_eq_lift](../../../../CommutativeAlgebra/RingTheoryMvPolynomialPublic.lean/declarations/rank-eq-lift.md) | 45 | `result-track:a0e2ef442974f284f537429091feba5841e8850426e9a8c23bde9c3f257ec8ac` |
| 3 | `theorem` | [rank_eq](../../../../CommutativeAlgebra/RingTheoryMvPolynomialPublic.lean/declarations/rank-eq.md) | 48 | `result-track:415298662986c9c811dae888e7a873269374ce428254bddc41f215a6f7cfad68` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryMvPolynomialPublic.lean/declarations/instance.md) | 51 | `declaration-track:8e6706bffcf12d9527d46dac6301fefa7e904991d22cfd93e576b0cb364c2389` |
| 5 | `theorem` | [finrank_eq_zero](../../../../CommutativeAlgebra/RingTheoryMvPolynomialPublic.lean/declarations/finrank-eq-zero.md) | 54 | `result-track:f9c601f1ae1eb02c5b7cb1fe16cbbabb4a6351e5c3bfb2c10c979666f497e3f8` |
| 6 | `theorem` | [finrank_eq_one](../../../../CommutativeAlgebra/RingTheoryMvPolynomialPublic.lean/declarations/finrank-eq-one.md) | 58 | `result-track:fdd30c1e5d6106c031a8535061c2a0410a9fa1970d830eb502c4b57de1766bb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b7c01750e9f40a4f4d4965160ecb1e8b9427c15396569bf60bc9000a6b3934f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variantb2027a8b967dca5f374b5299e9eee75c1dc711a28e946871ca11700abfbf3dba.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MvPolynomial/Variantb2027a8b967dca5f374b5299e9eee75c1dc711a28e946871ca11700abfbf3dba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
