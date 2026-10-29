# Verification target: Refl Quiver Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "670280bfeab84779992a2463e45b92eb09ac4c09",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant0de7cb7726138bdcae168eb280d043591176a9b88472dd54ba06017992f63561.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `670280bfeab84779992a2463e45b92eb09ac4c09`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant0de7cb7726138bdcae168eb280d043591176a9b88472dd54ba06017992f63561.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant0de7cb7726138bdcae168eb280d043591176a9b88472dd54ba06017992f63561.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ReflQuiver](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/reflquiver.md) | 35 | `declaration-track:79c2316ee122c3f32383db15b80bfa73d9462fe577f8a4c21d35dc40587e990f` |
| 2 | `theorem` | [ReflQuiver.homOfEq_id](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/reflquiver-homofeq-id.md) | 43 | `result-track:591a8610226cc1a37825aba2d966aabe4d2934919401d5aef7e5e5b42b9f5f2d` |
| 3 | `instance` | [catToReflQuiver](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/cattoreflquiver.md) | 46 | `declaration-track:7e530d9242707001cc4aec1bb15ebba5a8b228c0836beb4e0970753ccd492242` |
| 4 | `theorem` | [ReflQuiver.id_eq_id](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/reflquiver-id-eq-id.md) | 49 | `result-track:4e7288509d432b7eab582ebed51c1a168d5e7c1ccd31ace00d19b5f392f5c0f9` |
| 5 | `structure` | [ReflPrefunctor](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/reflprefunctor.md) | 52 | `declaration-track:c500abb3b719e5c4c526651e312eb08549de795bfdacfe3cdbda9887fb4b0068` |
| 6 | `lemma` | [mk_obj](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/mk-obj.md) | 61 | `result-track:9ed0778476c3636c8f647243379fb9728f84e1fd7d8451c547e51a5b12b56531` |
| 7 | `lemma` | [mk_map](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/mk-map.md) | 64 | `result-track:4c6d8cabbcf8ef2dab3c2e1acb541061c97dfc875e35f2bf3d97fde1c49f9a28` |
| 8 | `theorem` | [ext](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/ext.md) | 69 | `result-track:62761dc58e1d07d6e8d5c3b6c05993fb37bdd8780fbd46a6d8457b22833cbe99` |
| 9 | `theorem` | [ext'](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/ext-source-edition-2.md) | 82 | `result-track:f5e5c9a07608aa8da56d4b934dfda9c23be1ba021c8363628faac53af3ce07e2` |
| 10 | `def` | [id](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/id.md) | 95 | `declaration-track:372c44c7b4676ad521247fbd27358e29975efbc59f96e9426303c39a6f05aab0` |
| 11 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/instance.md) | 99 | `declaration-track:95d1680c25d163ebc60401f5e6660309c4d5ee41fbbec9d39fcd3908f1fcc427` |
| 12 | `def` | [comp](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/comp.md) | 104 | `declaration-track:0156b0c9cbdb1bc2fc6d042fd3e75a195833cf10573a267c702db34eef90af0f` |
| 13 | `theorem` | [comp_id](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/comp-id.md) | 110 | `result-track:e2c3da3b6e29d7ce637ba8d1d8792768d7889d5bbe089d1909fbff4fd915b608` |
| 14 | `theorem` | [id_comp](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/id-comp.md) | 114 | `result-track:d4992d06d3a46e05a56825c33b1e767508e2ba487c8fda336c441fed7942acda` |
| 15 | `theorem` | [comp_assoc](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/comp-assoc.md) | 118 | `result-track:c9d0684f2ba320cf216be3e5ba1677de356be4fe50d431d50f63e3615835fbef` |
| 16 | `theorem` | [congr_map](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/congr-map.md) | 131 | `result-track:89bf6ba2b218d1425890517acf2ce41a5859e0dcbd1bc27d44a90bb2b668ed57` |
| 17 | `def` | [Functor.toReflPrefunctor](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/functor-toreflprefunctor.md) | 137 | `declaration-track:21bdd0d6431daf41e0afb72979b29b6f4853da09dc2d07c66280d91add3c5c75` |
| 18 | `theorem` | [Functor.toReflPrefunctor.map_comp](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/functor-toreflprefunctor-map-comp.md) | 139 | `result-track:32222218e94822574f3cf05ff4549e1ee59aa706bd92ccfde9580be785efa848` |
| 19 | `theorem` | [Functor.toReflPrefunctor_toPrefunctor](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/functor-toreflprefunctor-toprefunctor.md) | 144 | `result-track:07cbfc961b76e295a19118cba2df11d6994fd156bd4a9d831da687c509b0f864` |
| 20 | `instance` | [opposite](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/opposite.md) | 151 | `declaration-track:e716b5fc058fc0830d4d85d45fc6551335df67a81988fe60138db2c7fe3904c9` |
| 21 | `instance` | [discreteReflQuiver](../../../../../Combinatorics/GraphTheory/ReflQuiverNamespaced.lean/declarations/discretereflquiver.md) | 154 | `declaration-track:b9be9a8b4a27eb55123fe3a799996a828199b8f9597e206b4d160300d8aae716` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2173ecd1e4704c94df4dcc27788d08f1ac003307a2f55f620ee4d6b5eb92feb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant0de7cb7726138bdcae168eb280d043591176a9b88472dd54ba06017992f63561.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiver/Variant0de7cb7726138bdcae168eb280d043591176a9b88472dd54ba06017992f63561.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
