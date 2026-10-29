# Verification target: Effective Epi Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "926d6cb6a6e7a1ce49ce843e93f1316420ce5fe1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa8184f9288618439d87ce211a2437fd45dc101bb51796f7031308a75aad184b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `926d6cb6a6e7a1ce49ce843e93f1316420ce5fe1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa8184f9288618439d87ce211a2437fd45dc101bb51796f7031308a75aad184b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa8184f9288618439d87ce211a2437fd45dc101bb51796f7031308a75aad184b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EffectiveEpiStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepistruct.md) | 45 | `declaration-track:3a998313124e56fe468e3c166999381e90b56634fc85201926789d81643533fa` |
| 2 | `class` | [EffectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepi.md) | 67 | `declaration-track:deaf41000f7fef3b0a54ee64966eaaec240b848da95e6d349d86aeedc5bea598` |
| 3 | `def` | [EffectiveEpi.getStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepi-getstruct.md) | 73 | `declaration-track:17b387e4d62a524c3e7672a543b87235b82111d0f6f909fc22ec4abacfe5adad` |
| 4 | `def` | [EffectiveEpi.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepi-desc.md) | 78 | `declaration-track:da945c5f909e0f08a1bf324302f250dc874d5c56d4f1f6710515b737cfb0e13e` |
| 5 | `lemma` | [EffectiveEpi.fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepi-fac.md) | 83 | `result-track:e948c9d871d5edb36b9e89700ba62e0d506818e17534133a63e0243d97bf3fdf` |
| 6 | `lemma` | [EffectiveEpi.uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepi-uniq.md) | 88 | `result-track:617c1a8c82e398a48a0b6fc856c9c96c4902609b93490b40e05f897422fcc3ef` |
| 7 | `instance` | [epiOfEffectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/epiofeffectiveepi.md) | 94 | `declaration-track:dc9cf96daec3862ab0a32800767467a79d081e9047b4cec5bcd86ac28b9bed83` |
| 8 | `structure` | [EffectiveEpiFamilyStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamilystruct.md) | 105 | `declaration-track:6a23edadafc899748f6fd57fe7e135715aa46ea8d01e9a2a942efeac4d5112bd` |
| 9 | `class` | [EffectiveEpiFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamily.md) | 131 | `declaration-track:74994de45ea40d682c8b6f241612dffb37c1a1cba445443fb9053a9520814b74` |
| 10 | `def` | [EffectiveEpiFamily.getStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamily-getstruct.md) | 137 | `declaration-track:44c75415a43c8b01d177468e2467d1ec5a1a09a45014865f1c5cf6824e8755a7` |
| 11 | `def` | [EffectiveEpiFamily.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamily-desc.md) | 143 | `declaration-track:e2a5f84bbb952bfdb21e8eac6a887579af620d5b1f5c9da8854cf566065b7ca4` |
| 12 | `lemma` | [EffectiveEpiFamily.fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamily-fac.md) | 150 | `result-track:ae30c394e08cf7b48af93596d5c5d0d066d0db538fc1596194a48f3cdc863000` |
| 13 | `lemma` | [EffectiveEpiFamily.uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamily-uniq.md) | 157 | `result-track:7b08ecc6a9a1b3e81fa5510d3886863157a62b2d2a174f657442d6238ecec56d` |
| 14 | `lemma` | [EffectiveEpiFamily.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamily-hom-ext.md) | 166 | `result-track:8128ee433d7b4518ab592f0c13353ef915bfc5d225c230531e59e5f3b9cff866` |
| 15 | `def` | [effectiveEpiFamilyStructSingletonOfEffectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamilystructsingletonofeffectiveepi.md) | 179 | `declaration-track:d846c3986e40dc5826693be51c041f657c8af4327469bc6665d35aa754df63f6` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/instance-source-edition-3.md) | 185 | `declaration-track:2031cc83aae3fc5a553001a83ea2197dadceb19934aa2f75f10ed7114fa7a738` |
| 17 | `def` | [effectiveEpiStructOfEffectiveEpiFamilySingleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepistructofeffectiveepifamilysingleton.md) | 192 | `declaration-track:e3ff2630001ce2ea2e9ab78b763e768d8a88c18a86f51e590d3e5f3cdd1869ee` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/instance-source-edition-2.md) | 202 | `declaration-track:1e60135c9e3d37a49d0c0856b5c312ad9fc383c53c7255415d90516f11a1492e` |
| 19 | `theorem` | [effectiveEpi_iff_effectiveEpiFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepi-iff-effectiveepifamily.md) | 206 | `result-track:236d90736d27ca3da08edd910ea061f2da1e971719df0a4a68577efb4d5b776c` |
| 20 | `def` | [effectiveEpiFamilyStructOfIsIsoDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamilystructofisisodesc.md) | 215 | `declaration-track:54c00f405f137eafdf1cc7a0cf2c5acf7b63c21a5cf01c9be17d82882cc9db6c` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/instance.md) | 233 | `declaration-track:18b260637b65477e35ed3294604443a0dbca3bdfb42cafe891416029922dd009` |
| 22 | `def` | [effectiveEpiStructOfIsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepistructofisiso.md) | 239 | `declaration-track:dba98c2ef72c1ea8437894974dce89e3ad4550892b4625e2751801e503fe3eea` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/instance-source-edition-4.md) | 244 | `declaration-track:23f572f7816c5bf2abcbcbd85ea1c47068fc921388761e814115c036b3bfdae4` |
| 24 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/example.md) | 246 | `declaration-track:1f71c6c0a64fb08df45244851275e65631c03ff65b2313b8bb12857fcd7eaafb` |
| 25 | `def` | [EffectiveEpiFamilyStruct.reindex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamilystruct-reindex.md) | 251 | `declaration-track:4324cc9a65897de6ee815a253d9049935ee9ab291f601cd9b217e604b6f43a47` |
| 26 | `lemma` | [EffectiveEpiFamily.reindex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EffectiveEpiBasic.lean/declarations/effectiveepifamily-reindex.md) | 267 | `result-track:ec770c9f64c6f9c91bc53f546086c60b37137f8e4ae0c56a485d21a7112c455e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49a32b030a5cd9be90e4356ecfc044c6c03925691542ed5030f3c867dcc5d117 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa8184f9288618439d87ce211a2437fd45dc101bb51796f7031308a75aad184b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa8184f9288618439d87ce211a2437fd45dc101bb51796f7031308a75aad184b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
