# Verification target: Removal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1108f85e045784f9df861e35b74a91d6aa8dde1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1108f85e045784f9df861e35b74a91d6aa8dde1`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.DegreeSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Lemma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Triangle.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Triangle.Counting` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.CastCard` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangleRemovalBound](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/triangleremovalbound.md) | 41 | `declaration-track:5e14e1343cfb501ffcd363e283c80ccca8ce426e974028c84383fd3cee6d1656` |
| 2 | `lemma` | [triangleRemovalBound_pos](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/triangleremovalbound-pos.md) | 44 | `result-track:50f6206f93b156d90cf93bf38d2bc4b2221a9fda8bcad90436046a8db5baee43` |
| 3 | `lemma` | [triangleRemovalBound_nonpos](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/triangleremovalbound-nonpos.md) | 49 | `result-track:8f77b9eb71a82cf133d07f55c26ff64ac7bca17e16c298434155d058c723b196` |
| 4 | `lemma` | [triangleRemovalBound_mul_cube_lt](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/triangleremovalbound-mul-cube-lt.md) | 52 | `result-track:6a68e2f536abf94799cf73815ccc919016b3c4d6ad86e4c7cee3ab35a93d5820` |
| 5 | `lemma` | [aux](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/aux.md) | 59 | `result-track:731fa81b477217e26cb79a2d18884cfab1efff346b59b611fbc3108086909fe0` |
| 6 | `lemma` | [card_bound](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/card-bound.md) | 65 | `result-track:c9007f18793c057eef087efd6e7e9cfd1211ae64b24e8aba6bc97f9828440e6f` |
| 7 | `lemma` | [triangle_removal_aux](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/triangle-removal-aux.md) | 76 | `result-track:509b9d992913f852b979b8152efecbe6b688a73a6fd2bba9267093f6c31e7d96` |
| 8 | `lemma` | [regularityReduced_edges_card_aux](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/regularityreduced-edges-card-aux.md) | 104 | `result-track:9cdb2780736083cc12ccfcdf99f81bfdf5abbea632676abd331b61aa33aad2fb` |
| 9 | `lemma` | [FarFromTriangleFree.le_card_cliqueFinset](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/farfromtrianglefree-le-card-cliquefinset.md) | 132 | `result-track:2bc5547310fef4f07469b7138a19c55801218d14ad7fe8ffdf72177d964cc00b` |
| 10 | `lemma` | [triangle_removal](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/triangle-removal.md) | 156 | `result-track:027a39c07c6c43e82d8626cd74ffc6175459cf3de0bfdd66b8e1547afb7d6483` |
| 11 | `def` | [evalTriangleRemovalBound](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/evaltriangleremovalbound.md) | 174 | `declaration-track:ee470ffa118f74d2e33a6c3eee545eacf6eca92a62ea86b8fd07ec75f122ae6d` |
| 12 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/RemovalNamespaced.lean/declarations/example.md) | 183 | `declaration-track:4d30850fb37bc66c7d604eb7eaa49a69f1dcf7a1994492b0a20b2cf830afe4da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98e025caabd46cd8b32ad102393b199e9dc3b9413297802c360587f482f02af3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
