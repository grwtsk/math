# Verification target: QPFMultivariate Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f64cb5e9c3209134745a00f50e0b22e6b1cfe38b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd78831268140fa05c3d0d79a75bd2dfea3b9f96812f9a5b81a5a8b223e54997a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f64cb5e9c3209134745a00f50e0b22e6b1cfe38b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd78831268140fa05c3d0d79a75bd2dfea3b9f96812f9a5b81a5a8b223e54997a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd78831268140fa05c3d0d79a75bd2dfea3b9f96812f9a5b81a5a8b223e54997a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MvQPF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/mvqpf.md) | 98 | `declaration-track:1850300979aeaf16302583727197a4ccc5bfd1e6f0eaba2fe04f442b36b8de32` |
| 2 | `theorem` | [id_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/id-map.md) | 116 | `result-track:fd6b09f6edfd1e4cba61f4c32b067b0158d791d2adc05f3c536f3634a090af04` |
| 3 | `theorem` | [comp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/comp-map.md) | 121 | `result-track:f42246d18e90de479272a4492d44d114bf580db614f08bd4e7a13337030e57a2` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/instance.md) | 126 | `declaration-track:0dc32962f163608c0eb44ae8aadfae084f42b5f2d6fdf3d3651eda063af5141a` |
| 5 | `theorem` | [liftP_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/liftp-iff.md) | 132 | `result-track:00373cc9daab97ee14bc9d27e6364aae556c9429e38e4bfc200e0ba624ebd616` |
| 6 | `theorem` | [liftR_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/liftr-iff.md) | 147 | `result-track:488c2a3b675d3acb6e4ddc613e88d61da1d8bae4532070d99d9dd4f9ffa7141f` |
| 7 | `theorem` | [mem_supp](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/mem-supp.md) | 167 | `result-track:27265ebdd7b9960b87b68ab3b29248c9117c2ecaf752b5b98d345162c00b03c6` |
| 8 | `theorem` | [supp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/supp-eq.md) | 179 | `result-track:f4b6bc1cb62e173fd3d80fb553ffccb3a583dff158f74d7142c08d2c09b54e7d` |
| 9 | `theorem` | [has_good_supp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/has-good-supp-iff.md) | 182 | `result-track:707838858f8a42814343261e2c5f60c0089e2a9d0ec0a50d6f266eba8a4a3dc0` |
| 10 | `def` | [IsUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/isuniform.md) | 209 | `declaration-track:2bff5300ed194f5d282930a23289b950f1e4111bbb5890f01ba208c5146eb592` |
| 11 | `def` | [LiftPPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/liftppreservation.md) | 214 | `declaration-track:b3304707963aef811b280cff3a2de43b1b3c9444cb7d30347eb5ad9af7768534` |
| 12 | `def` | [SuppPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/supppreservation.md) | 218 | `declaration-track:a3f07b3925097d14b53d661dce2177346c2797cabb2bc6fb56f69f60c290fb7e` |
| 13 | `theorem` | [supp_eq_of_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/supp-eq-of-isuniform.md) | 221 | `result-track:24fa4e5b85865137b41c9220aae8fe0f425802527c25859cae7b3ea8ee3ea10a` |
| 14 | `theorem` | [liftP_iff_of_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/liftp-iff-of-isuniform.md) | 229 | `result-track:1d5f990eae70740a1d58542fb6e1fe68e8599dbf8776a0d60557a3a178db608c` |
| 15 | `theorem` | [supp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/supp-map.md) | 244 | `result-track:9cd120697f583bcfc2deb8b4c93670690abfa6c48bdfc2a1d55f6052554707e9` |
| 16 | `theorem` | [suppPreservation_iff_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/supppreservation-iff-isuniform.md) | 251 | `result-track:aad20270a1788d8d414b1305244b4750656768f308f07fa98d54a2d2cc760cdb` |
| 17 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/supppreservation-iff-liftppreservation.md) | 260 | `result-track:55d7c144970a3cf353bb968ce50b3c7632646fa124d96767c82b85426b26ff0e` |
| 18 | `theorem` | [liftpPreservation_iff_uniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/liftppreservation-iff-uniform.md) | 274 | `result-track:9aa955e02eee34fd4481539d17d02070191ef20b5b0e506e2dc64389a810302e` |
| 19 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/ofequiv.md) | 281 | `declaration-track:1521cda59fbf1cdf0d56663a029396707a002f6ba541948383a8d89383003b1f` |
| 20 | `instance` | [MvPFunctor.instMvQPFObj](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedPublic.lean/declarations/mvpfunctor-instmvqpfobj.md) | 295 | `declaration-track:ea84097c2b955436067fb74e2265e796968ec0e82f101a5b048564eb02dcca28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92ceb4901da63884c4f8d96ff8dc376eccb45ccc6df94d78a6689ed1a233ee22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd78831268140fa05c3d0d79a75bd2dfea3b9f96812f9a5b81a5a8b223e54997a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd78831268140fa05c3d0d79a75bd2dfea3b9f96812f9a5b81a5a8b223e54997a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
