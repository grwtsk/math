# Verification target: Deg Lex Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ad8ca2b92a71de03c96debcf7c14d86aa2a36ab",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/DegLex/Variantec1206844517aef12a1bd84d5fea176ff99ef824db7006d585a4ba06d6bd9130.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DegLexNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DegLexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ad8ca2b92a71de03c96debcf7c14d86aa2a36ab`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/DegLex/Variantec1206844517aef12a1bd84d5fea176ff99ef824db7006d585a4ba06d6bd9130.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/DegLex/Variantec1206844517aef12a1bd84d5fea176ff99ef824db7006d585a4ba06d6bd9130.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPolynomial.MonomialOrder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.MonomialOrder.DegLex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [degree_degLexDegree](../../../../CommutativeAlgebra/DegLexNamespaced.lean/declarations/degree-deglexdegree.md) | 31 | `result-track:216bfc380ca3e1669505ce511e1a1fee8f2daa69d9d9b98bc2906711f065a6b2` |
| 2 | `theorem` | [degLex_totalDegree_monotone](../../../../CommutativeAlgebra/DegLexNamespaced.lean/declarations/deglex-totaldegree-monotone.md) | 41 | `result-track:521949ecc5947a73238b3e6b8ee1f4a989795a64a803b0ca02b81e3578c8386a` |
| 3 | `theorem` | [totalDegree_mul_of_isDomain](../../../../CommutativeAlgebra/DegLexNamespaced.lean/declarations/totaldegree-mul-of-isdomain.md) | 48 | `result-track:4aa5587c19849d5871badc6a7e700822e227e5d5f0b3d3e86d6b40549505fa0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6aa36ec20286398eaeef6a70bc535ab0cc71f2fd1bfe67ba23965f4927131c78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/DegLex/Variantec1206844517aef12a1bd84d5fea176ff99ef824db7006d585a4ba06d6bd9130.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/DegLex/Variantec1206844517aef12a1bd84d5fea176ff99ef824db7006d585a4ba06d6bd9130.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
