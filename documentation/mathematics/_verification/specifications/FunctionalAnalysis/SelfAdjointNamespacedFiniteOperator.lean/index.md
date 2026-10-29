# Verification target: Self Adjoint Namespaced Finite Operator

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "393a1c677291d14b72c1332b75533c05c5871000",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SelfAdjoint/Variant11ff71f85209e568342be0288823fd2c38602d40cee3868b66b150dd7014fe32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/SelfAdjointNamespacedFiniteOperator.lean/index.md) · [Full source](../../../../FunctionalAnalysis/SelfAdjointNamespacedFiniteOperator.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `393a1c677291d14b72c1332b75533c05c5871000`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SelfAdjoint/Variant11ff71f85209e568342be0288823fd2c38602d40cee3868b66b150dd7014fe32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SelfAdjoint/Variant11ff71f85209e568342be0288823fd2c38602d40cee3868b66b150dd7014fe32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.CrossedProduct` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteOperator](../../../../FunctionalAnalysis/SelfAdjointNamespacedFiniteOperator.lean/declarations/finiteoperator.md) | 21 | `declaration-track:34fd98387a8cbdbbc865a7685bfc3b35cf81a9ea54e1e921fd8f3bd507c2e5cc` |
| 2 | `def` | [IsSelfAdjoint](../../../../FunctionalAnalysis/SelfAdjointNamespacedFiniteOperator.lean/declarations/isselfadjoint.md) | 24 | `declaration-track:ee574890bf034a7b91fb51efdb69899e68265c32e96e487317d0a172e06e5f92` |
| 3 | `def` | [diagonalOperator](../../../../FunctionalAnalysis/SelfAdjointNamespacedFiniteOperator.lean/declarations/diagonaloperator.md) | 29 | `declaration-track:6ba1e90a7e9c1b24ca9c80ba5e5d364829d4f00dbc417de4ab72b9304452f7c8` |
| 4 | `def` | [addOperator](../../../../FunctionalAnalysis/SelfAdjointNamespacedFiniteOperator.lean/declarations/addoperator.md) | 36 | `declaration-track:0d74fbd9e2090b7ff25bd7448da9693cd2c6b50e12b273f743bf6a4a7700782a` |
| 5 | `theorem` | [diagonalOperator_selfAdjoint](../../../../FunctionalAnalysis/SelfAdjointNamespacedFiniteOperator.lean/declarations/diagonaloperator-selfadjoint.md) | 42 | `result-track:bdbf4d413fb418b7041aa1f78dfc0c7e14a939c76340bfd43d7248876210a434` |
| 6 | `structure` | [SelfAdjointCoefficientCertificate](../../../../FunctionalAnalysis/SelfAdjointNamespacedFiniteOperator.lean/declarations/selfadjointcoefficientcertificate.md) | 53 | `declaration-track:8560e6430174b03e62fa6f753f6a2d76d3cef414b35361bfe2a034edb8d091aa` |
| 7 | `theorem` | [crossedProductOperator_selfAdjoint](../../../../FunctionalAnalysis/SelfAdjointNamespacedFiniteOperator.lean/declarations/crossedproductoperator-selfadjoint.md) | 61 | `result-track:47c63c23aadbb404c88cdf0a05811ab89510cbec878650b63cfdfe7aa074e6f5` |
| 8 | `structure` | [JordanSemisimplicityObligation](../../../../FunctionalAnalysis/SelfAdjointNamespacedFiniteOperator.lean/declarations/jordansemisimplicityobligation.md) | 75 | `declaration-track:56b7eda11b221c93173a6b0b39a82c779fa8d56235895dd5d8fe20cbd212c3ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4699634218c5236c220530dd1855388461509b6827d69c8111bc6e5be2f02e82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/SelfAdjoint/Variant11ff71f85209e568342be0288823fd2c38602d40cee3868b66b150dd7014fe32.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/SelfAdjoint/Variant11ff71f85209e568342be0288823fd2c38602d40cee3868b66b150dd7014fe32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
