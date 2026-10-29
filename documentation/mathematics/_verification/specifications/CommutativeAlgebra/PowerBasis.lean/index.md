# Verification target: Power Basis

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c1884cb23871ab9cbec2e99827dadc01ecbdeb4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerBasis.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerBasis.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c1884cb23871ab9cbec2e99827dadc01ecbdeb4`.

Source path: `GRWTSK/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjoin.powerBasisAux](../../../../CommutativeAlgebra/PowerBasis.lean/declarations/adjoin-powerbasisaux.md) | 29 | `declaration-track:570d5a2dc34209ae525fe23fa62b47afd77933bddeeeb36c0a5bacd14760b7b8` |
| 2 | `def` | [adjoin.powerBasis](../../../../CommutativeAlgebra/PowerBasis.lean/declarations/adjoin-powerbasis.md) | 54 | `declaration-track:5eca7ad2c1a8f748c9021ba69394fc49412eb21f0f72e4299697051f3764e724` |
| 3 | `def` | [PowerBasis.ofGenMemAdjoin](../../../../CommutativeAlgebra/PowerBasis.lean/declarations/powerbasis-ofgenmemadjoin.md) | 68 | `declaration-track:ec0ece577ba55f826814985fcc4dcb14dab6e8cb214e69d518c72fba8d12a101` |
| 4 | `theorem` | [repr_gen_pow_isIntegral](../../../../CommutativeAlgebra/PowerBasis.lean/declarations/repr-gen-pow-isintegral.md) | 88 | `result-track:160af03fc854c8ad53f50fcdbc7244f02c33e1d40c5f6bcc402e111457b43a8d` |
| 5 | `theorem` | [repr_mul_isIntegral](../../../../CommutativeAlgebra/PowerBasis.lean/declarations/repr-mul-isintegral.md) | 121 | `result-track:ca433cd2415d068abd7ddf8ecafbc4049dcf6698af24c3161365834875f69185` |
| 6 | `theorem` | [repr_pow_isIntegral](../../../../CommutativeAlgebra/PowerBasis.lean/declarations/repr-pow-isintegral.md) | 139 | `result-track:8929074dc39c615d7bd573f3d4c76862b2f6e44980f9a52927689ab95ceaa2dc` |
| 7 | `theorem` | [toMatrix_isIntegral](../../../../CommutativeAlgebra/PowerBasis.lean/declarations/tomatrix-isintegral.md) | 163 | `result-track:31ce1bd69d4ca3cedeb5d684cf748e997c9b79d69bc6c1935f52d84bdb478297` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11cdf1fdc6a11103fda623e3d8c563e4d49c327d27254cae847685b46be2f32c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean","GRWTSK/_verification/specifications/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
