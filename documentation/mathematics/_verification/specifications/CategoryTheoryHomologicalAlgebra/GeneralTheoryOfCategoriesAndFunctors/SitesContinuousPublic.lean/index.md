# Verification target: Sites Continuous Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bae41fd1efbcdc53c3b7685e2d696efa5589dee",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bae41fd1efbcdc53c3b7685e2d696efa5589dee`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/map.md) | 68 | `declaration-track:12a3bb480a9161f4a4a807976ac81f3d53cc46e8c90d192fbba3cdf0275948aa` |
| 2 | `lemma` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/map-id.md) | 77 | `result-track:a816721a25f22836105298dde7b6b5ea5046dd2ed350f82d44e6b3ba82d3af36` |
| 3 | `lemma` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/map-comp.md) | 80 | `result-track:f0cdb99881fff51c7f81002eee3a92a560c3aaf5e07bda3e6b682f74d7edb5fd` |
| 4 | `lemma` | [sieve₀_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/sieve-map.md) | 83 | `result-track:8ea42b1a9d67d2c802c726bb3b6dfff8a63238ae05304b395c8309779555f0be` |
| 5 | `def` | [isLimitMapMultiforkEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/islimitmapmultiforkequiv.md) | 90 | `declaration-track:f52b79d9b34525e97a3b777f340d589cb8fbcf97e246cd70e482e633ea916bfe` |
| 6 | `lemma` | [functorPushforward_sieve₁_map_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/functorpushforward-sieve-map-le.md) | 99 | `result-track:27aaae235cda4b0fb2b53c712db01d5c9b2333f3409f3d35cfe66ac0816d4a7b` |
| 7 | `lemma` | [functorPushforward_sieve₁'_of_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/functorpushforward-sieve-of-preserveslimit.md) | 108 | `result-track:83486983a05f799255377b3cabef3fe056169bbb626ff1d191f6b6f78f838101` |
| 8 | `lemma` | [functorPushforward_sieve₁_of_preservesPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/functorpushforward-sieve-of-preservespullbacks.md) | 128 | `result-track:71ae93ee4623578be746cb486a6a4eb3340e89fb4944862a32d48e55c28752c4` |
| 9 | `class` | [IsPreservedBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/ispreservedby.md) | 158 | `declaration-track:c0d20cdfcbe636232701b6356cae28646585c52381942dd692079250db39b82a` |
| 10 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/map-source-edition-2.md) | 168 | `declaration-track:91eb5a4b2d065867bea5139f7bf0777e6e3249fb1423063432b51b502727febb` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/instance.md) | 174 | `declaration-track:0a201d90b2b150dcc60b541406e57b1c86512ffd4649c7576958bc24fa828f0f` |
| 12 | `abbrev` | [PreservesOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/preservesonehypercovers.md) | 191 | `declaration-track:bcf6b01aaff6ecf3b6deecd95cc678b7fec3a6f6f19a8d4be57e38917292c651` |
| 13 | `class` | [IsContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/iscontinuous.md) | 197 | `declaration-track:42263c2d83a50d9155252a37d12ca64e5feef8fa108e73ccfec1a5e37a63a2be` |
| 14 | `lemma` | [W_map_of_adjunction_of_isContinuous_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/w-map-of-adjunction-of-iscontinuous-aux.md) | 201 | `result-track:a11263c53dc522a79a31b82b2f956fad0a6cb40182b3414890f2624cf4359e9b` |
| 15 | `lemma` | [isSheaf_of_isContinuous_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/issheaf-of-iscontinuous-aux.md) | 215 | `result-track:f3bc77448da582175b755f71b87ddf08fdcbc3ced1e7521d45523a06aa7a12ba` |
| 16 | `lemma` | [op_comp_isSheaf_of_types](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/op-comp-issheaf-of-types.md) | 248 | `result-track:7e09adb77063eafb715a317cf5176dc04b615f7a9ad7dd8174576f1b38e5ac20` |
| 17 | `lemma` | [op_comp_isSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/op-comp-issheaf.md) | 256 | `result-track:2a4bc866556957874c8184028f245d0e1b3525fbfd2ef53cba20250e4beb2bb4` |
| 18 | `lemma` | [op_comp_isSheaf_of_isSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/op-comp-issheaf-of-issheaf.md) | 260 | `result-track:d9da16b99c343a481dccac7fd24122ad3da7767637e9626dcf4e554b78b9d3a3` |
| 19 | `lemma` | [op_comp_isSheaf_of_isSheaf_type](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/op-comp-issheaf-of-issheaf-type.md) | 265 | `result-track:7052e2a5a7f99d9205cfa4dfa8d1d5291d703b3cfe78ad7917482a021aa0bedf` |
| 20 | `lemma` | [W_map_of_adjunction_of_isContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/w-map-of-adjunction-of-iscontinuous.md) | 272 | `result-track:96d030e6933bf1bea3814c84e842b6b7f284ade06f25c8160b9bf4862973503b` |
| 21 | `lemma` | [isContinuous_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/iscontinuous-of-iso.md) | 280 | `result-track:7b822e2fd0e880f5c75a1facbec511589776feb7582643d6838b0a9b5a5d87f7` |
| 22 | `instance` | [isContinuous_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/iscontinuous-id.md) | 287 | `declaration-track:c9c49a11ce4a2ab720c73deda45049bc22afb95919585e83a43fe816b779d7bd` |
| 23 | `lemma` | [isContinuous_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/iscontinuous-comp-source-edition-2.md) | 290 | `result-track:7cab7e84eb1e03dec4c68681e10faf9345718d20dd9bd53405998f6d0e80193f` |
| 24 | `lemma` | [isContinuous_comp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/iscontinuous-comp.md) | 298 | `result-track:1e0027b7e0039a8d8fcf107e23bc9ba46e76dcc7926d8ba7b83a27287ba7e911` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/instance-source-edition-3.md) | 306 | `declaration-track:796c97e9cd7f713c44981aa707089439ddf8d48e69e438a179c11cb80f6f94de` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/instance-source-edition-2.md) | 310 | `declaration-track:2b845a813dafb98de4f596b7e5668b16537e237452dcf0f35a0ebfba1a55d329` |
| 27 | `lemma` | [isContinuous_toGrothendieck_of_pullbacksPreservedBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/iscontinuous-togrothendieck-of-pullbackspreservedby.md) | 317 | `result-track:37055e8005d1a339aee989445e098807ec82c084d52cb7fd6c2ae7d35497d261` |
| 28 | `lemma` | [op_comp_isSheaf_of_preservesOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/op-comp-issheaf-of-preservesonehypercovers.md) | 332 | `result-track:270e47357a2b48c74c317e22552618bd43cbf605d09c7fafe80faa1d8a958156` |
| 29 | `lemma` | [isContinuous_of_preservesOneHypercovers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/iscontinuous-of-preservesonehypercovers.md) | 341 | `result-track:177b13824806dfcf12538124471a684729c6417b06a7baf1306f5c9cc345fba3` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/instance-source-edition-4.md) | 351 | `declaration-track:bc6db431f640537ba3b1bc7a07ae03431b5fdad491f0b4b03afd9bd78a2b69fc` |
| 31 | `def` | [sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/sheafpushforwardcontinuous.md) | 362 | `declaration-track:bdf067555107d400ee7e3bc6e094abb41dc9d581f70a643de5407cbb56b8e81c` |
| 32 | `def` | [sheafPushforwardContinuousCompSheafToPresheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/sheafpushforwardcontinuouscompsheaftopresheafiso.md) | 370 | `declaration-track:fd125e53a9f6ee21a937af2d6c85949d6e395cce3792681aee650da05c80ed7a` |
| 33 | `def` | [sheafPushforwardContinuousId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/sheafpushforwardcontinuousid.md) | 377 | `declaration-track:11277c00a859275c7d6c1b588a39a0d3741c054e0e25c04d247067ba4e32bfdb` |
| 34 | `def` | [sheafPushforwardContinuousComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/sheafpushforwardcontinuouscomp.md) | 383 | `declaration-track:54f6ffbdebf54bbbd4df3e7bb0ad2d83cdd845559eefa87635da6ed6e5ba9f27` |
| 35 | `def` | [sheafPushforwardContinuousNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/sheafpushforwardcontinuousnattrans.md) | 393 | `declaration-track:3a08b975266b4eaae8663008e76bc949a56570e2f0bc018c90f76e3f7cf76426` |
| 36 | `def` | [sheafPushforwardContinuousIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/sheafpushforwardcontinuousiso.md) | 402 | `declaration-track:f671f9bccf08abff310b5962a30dc1bee23096e678df985a9e55fc04e1fcd8aa` |
| 37 | `def` | [sheafPushforwardContinuousId'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/sheafpushforwardcontinuousid-source-edition-2.md) | 413 | `declaration-track:cb17abec3557a96d933130c69e58f4cbf92b9138b49bdf9f09af252b32c93711` |
| 38 | `def` | [sheafPushforwardContinuousComp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/sheafpushforwardcontinuouscomp-source-edition-2.md) | 422 | `declaration-track:645b31bdde57f8a4d29d21a75ac0a633a58b373eaa8467a6c2df49315f096e05` |
| 39 | `def` | [Adjunction.sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesContinuousPublic.lean/declarations/adjunction-sheafpushforwardcontinuous.md) | 436 | `declaration-track:c5cbfc52b9cd54598daf89bd142effe9f66db6f311ee37a0ae1964698da2a5da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b758f685390816b9b877b2313b569feec0b664b2bf818a51ea6e156bc037a70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
