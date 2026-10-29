# Verification target: Dependency Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fdfaeb044df80ca2f1c16438ed3c2fa40e5b7d5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variant45033091a071732735b334886a8dc09baae65392943568016bcbb70cc2f6610a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DependencyNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/DependencyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fdfaeb044df80ca2f1c16438ed3c2fa40e5b7d5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variant45033091a071732735b334886a8dc09baae65392943568016bcbb70cc2f6610a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variant45033091a071732735b334886a8dc09baae65392943568016bcbb70cc2f6610a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.WellFounded` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DependsTransitively](../../../../Combinatorics/DependencyNamespaced.lean/declarations/dependstransitively.md) | 25 | `declaration-track:1fe4d8e6e045f21acafe4eeb945835a43a7f1885562e954d2ffda571eb68d228` |
| 2 | `structure` | [DependencyGraph](../../../../Combinatorics/DependencyNamespaced.lean/declarations/dependencygraph.md) | 37 | `declaration-track:1563e41bf360384b9aa38b0f9e5d3fccc3d9e985fdd1677b409f5a63a07a0430` |
| 3 | `theorem` | [wellFoundedCertificate](../../../../Combinatorics/DependencyNamespaced.lean/declarations/wellfoundedcertificate.md) | 47 | `result-track:e7fab651de59a3affa1a1c454deedb9c3e5ab569a41d4b539c191554444b4849` |
| 4 | `theorem` | [noDependencyCycle](../../../../Combinatorics/DependencyNamespaced.lean/declarations/nodependencycycle.md) | 56 | `result-track:40d6b2fcdc872f2b5f34a4130f35908274fbd0ff274c9f5ff82476c870ab6314` |
| 5 | `theorem` | [transitiveRankLt](../../../../Combinatorics/DependencyNamespaced.lean/declarations/transitiveranklt.md) | 66 | `result-track:fe8b1444a782d5d96221b013d909afe2c65fe73184341c3492f51e064d4bc2b9` |
| 6 | `theorem` | [noTransitiveSelfDependency](../../../../Combinatorics/DependencyNamespaced.lean/declarations/notransitiveselfdependency.md) | 78 | `result-track:599675f21f7abfe97fba70232d65bfe7de924e6e44243b6bc8c5f75b42b79ea2` |
| 7 | `inductive` | [AssuranceProjectComponent](../../../../Combinatorics/DependencyNamespaced.lean/declarations/assuranceprojectcomponent.md) | 89 | `declaration-track:da9bf6c97d4d0cd0cad842da76adfd33cb53b32a9710684d2ce752fbeb5b535f` |
| 8 | `def` | [assuranceProjectRank](../../../../Combinatorics/DependencyNamespaced.lean/declarations/assuranceprojectrank.md) | 99 | `declaration-track:6c21f091c3a3d162c08f05c1a713bafc30869393a47971e2fd12f88fdfd8d0bb` |
| 9 | `inductive` | [AssuranceProjectDepends](../../../../Combinatorics/DependencyNamespaced.lean/declarations/assuranceprojectdepends.md) | 108 | `declaration-track:83ca76ef76633225012294cd962ed1523e9e5811975688bebc8fc790d7e1acf3` |
| 10 | `def` | [assuranceProjectGraph](../../../../Combinatorics/DependencyNamespaced.lean/declarations/assuranceprojectgraph.md) | 117 | `declaration-track:4768c550e710d26563b3702f5fc4ab747b1202f7179f23dbbd98bbde3accc164` |
| 11 | `theorem` | [assuranceProjectGraph_acyclic](../../../../Combinatorics/DependencyNamespaced.lean/declarations/assuranceprojectgraph-acyclic.md) | 125 | `result-track:227369d006289cb3b65f63f1402bc171a409b67f23bc25d0ede989172736542a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42f18b972409ddb52e23a0fadd2dcfca3c9f464279ead25bf6a73b9fd9fd0ed9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variant45033091a071732735b334886a8dc09baae65392943568016bcbb70cc2f6610a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variant45033091a071732735b334886a8dc09baae65392943568016bcbb70cc2f6610a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
