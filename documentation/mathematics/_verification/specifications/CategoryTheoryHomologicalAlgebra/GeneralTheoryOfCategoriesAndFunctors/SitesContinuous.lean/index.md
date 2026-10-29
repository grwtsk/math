# Verification target: Sites Continuous

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eea18af00829d62913c76ec7e77fce0cd4636e70",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eea18af00829d62913c76ec7e77fce0cd4636e70`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.IsSheafOneHypercover` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/map.md) | 56 | `declaration-track:9a126553d538c76674130c2b684e5f3c212a2c7d099e94cea6bc843078ef7479` |
| 2 | `def` | [isLimitMapMultiforkEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/islimitmapmultiforkequiv.md) | 68 | `declaration-track:2ed07e310f8ba77471bffdfca39f587f68b4630da509c8c8a88f80fcd84b9737` |
| 3 | `class` | [IsPreservedBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/ispreservedby.md) | 81 | `declaration-track:f55afc157704d3fd52def92001b40f4bc693d644edd2419b3f2b7e4788761469` |
| 4 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/map-source-edition-2.md) | 91 | `declaration-track:e35f19aeae1b0e954f2bf7ceb3be3a17b0edeb50ba2b2304dfee0cd943e4bc6d` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/instance.md) | 97 | `declaration-track:f660d51e158eacd34b89c939f13116c1b6c8a53d74aef0cac0d647e8046ec748` |
| 6 | `abbrev` | [PreservesOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/preservesonehypercovers.md) | 112 | `declaration-track:e953c995367f4b343f31c59ead7553e91cb2d27c8df4d0e6f2349de938607dec` |
| 7 | `class` | [IsContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/iscontinuous.md) | 117 | `declaration-track:9b108b720f04328636add47811e52c80e2c7ffd4acb8873c0f9c2683d92e8b3d` |
| 8 | `lemma` | [op_comp_isSheaf_of_types](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/op-comp-issheaf-of-types.md) | 120 | `result-track:b074e9f9035b91f1ff2fff77837be892b054a08db8e3323d78009bc809fcd4da` |
| 9 | `lemma` | [op_comp_isSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/op-comp-issheaf.md) | 126 | `result-track:dbc7efc725301e920823a8e13a019c84496e86be8046dbee31f04f6742b03de8` |
| 10 | `lemma` | [isContinuous_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/iscontinuous-of-iso.md) | 130 | `result-track:8e303c46451c3370562b920aff4c33dda806a74c0e4ab580dc0bc4ee938ad398` |
| 11 | `instance` | [isContinuous_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/iscontinuous-id.md) | 137 | `declaration-track:6e1d0976267028d35d6372be92e854947d74a9d716b5c61549afa199214c9a04` |
| 12 | `lemma` | [isContinuous_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/iscontinuous-comp.md) | 140 | `result-track:3413c61eb8382005d67f508885ba770194f440c2b1f150197d2a3e636ff0a9f2` |
| 13 | `lemma` | [isContinuous_comp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/iscontinuous-comp-source-edition-2.md) | 148 | `result-track:452f0bdd4df6ffa9da27a861513c1501754b454eb3116abadc38c9aa68cadee7` |
| 14 | `lemma` | [op_comp_isSheaf_of_preservesOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/op-comp-issheaf-of-preservesonehypercovers.md) | 158 | `result-track:222fd6062d5378fddeeb31dbb14ae137c070753ad27748572cdfaeb4fd4361e1` |
| 15 | `lemma` | [isContinuous_of_preservesOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/iscontinuous-of-preservesonehypercovers.md) | 167 | `result-track:503540ce44a4c237e249c0eafe95c41ac03f8994a87bbf4fecf5aec3708d32d1` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/instance-source-edition-2.md) | 177 | `declaration-track:fa4cf0e4767641f7c9d7238afd74769f0421349c1e3e276d284b14219f98b3c9` |
| 17 | `def` | [sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/sheafpushforwardcontinuous.md) | 188 | `declaration-track:4b54faf5a7c598d7ccd6a8d4244262b893a9f22c2d9f37d65fca3597bfb2b129` |
| 18 | `def` | [sheafPushforwardContinuousCompSheafToPresheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuous.lean/declarations/sheafpushforwardcontinuouscompsheaftopresheafiso.md) | 195 | `declaration-track:31c0d92ea22e330ec5783ee6d4060616752cc624730b302537a79b1b514d739f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94f5ddc44a97b455383ddbfd846aa1c9f8d7c9a893b29bc3dfdb198e7cbaf3c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantd4fe3d31462805630d23cc74a96f92e0a5b408b72122572d3b1cd4f8036ff28e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
