# Verification target: Descent Data Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fee7ec27284e06e620ee96f2ce41429e585e773",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fee7ec27284e06e620ee96f2ce41429e585e773`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean.json)

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
| 1 | `structure` | [DescentData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/descentdata.md) | 67 | `declaration-track:0804577dc5f8afb28fe7fc427eb6ab0d4da1a7ec7027d4312285b1dd3fdc1b0e` |
| 2 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/iso.md) | 95 | `declaration-track:764d7b39ce1f70a39145fbe31fc7211c2162709a1b7bff2911d027bc6aac6dcf` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/instance.md) | 102 | `declaration-track:c81f2affbbe75563f37a4f8cd7ceacd84e3b0f9274e82b3251eb27518ebed667` |
| 4 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/hom.md) | 109 | `declaration-track:79f8dd5003897f06f991faac155459f3439309407db3bb6d4f4d538c10bfe453` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 119 | `declaration-track:e36b8d904afe5322f36c22399735eb62003445beb6186d83183c25aa6d48904b` |
| 6 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/hom-ext.md) | 125 | `result-track:a0cfbdbf92576cf592c96b4d7348dd4520f1dafd4730ccb9baa2d6eb95df9f5c` |
| 7 | `lemma` | [id_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/id-hom.md) | 130 | `result-track:1195ec0ba0a30ef066ca563bb919960506a70efa473ec17aceb56eec27237d20` |
| 8 | `lemma` | [comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/comp-hom.md) | 133 | `result-track:ad14b958b680e7fb2e805ea697affbbaca473001cc4b997ce91293a04486afab` |
| 9 | `def` | [ofObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/ofobj.md) | 141 | `declaration-track:57dafbe4abac4763ebd1941e96e945bd2badc36baf83f4f9c390686e1e434958` |
| 10 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isomk.md) | 155 | `declaration-track:48b3e6349dae6243d33239910f944e7a88434e3ebac6370234b9e05c0b08447c` |
| 11 | `def` | [toDescentData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/todescentdata.md) | 175 | `declaration-track:4db04d059e6846106aa02ca0282dd861e5d17090082ce61c9a4165a7c98aa1df` |
| 12 | `def` | [pullFunctorObjHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/pullfunctorobjhom.md) | 187 | `declaration-track:7bf5a0eae27ca41a9edc2f61fe35941ad129d2297ca6e274631584df4a34c75f` |
| 13 | `lemma` | [pullFunctorObjHom_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/pullfunctorobjhom-eq.md) | 199 | `result-track:fa54454041a2b951da6f854acdb79350759dfc0a8eb85eb19ea7b11adf0ef1cb` |
| 14 | `def` | [pullFunctorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/pullfunctorobj.md) | 217 | `declaration-track:44c1931bc19c21c29e8db1ecbaa09a3b203eeab79910b29cc57a146bea993a3a` |
| 15 | `def` | [pullFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/pullfunctor.md) | 251 | `declaration-track:81822cdc05b7a24fd91544699bfdf744e98909c49631f2aaf7aae8b6032a0fae` |
| 16 | `def` | [toDescentDataCompPullFunctorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/todescentdatacomppullfunctoriso.md) | 274 | `declaration-track:529619a5eb91961a6b831e464f0ba141838442872e694d17990356ce5819a9dd` |
| 17 | `def` | [pullFunctorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/pullfunctoriso.md) | 310 | `declaration-track:e7354e867f0debff9fea83a2c99d77c9e85aa875089ff2551033bf31ebbdb62f` |
| 18 | `def` | [pullFunctorIdIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/pullfunctoridiso.md) | 334 | `declaration-track:9c4aa989c892ab44abbdbcb28c77d3a715145453ba36805336944044f21d18d7` |
| 19 | `def` | [pullFunctorCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/pullfunctorcompiso.md) | 346 | `declaration-track:6373a3d34e40e14279c3562c426ee31a29a896f3fce6b057c7d13b53cfd139fa` |
| 20 | `def` | [pullFunctorEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/pullfunctorequivalence.md) | 378 | `declaration-track:9621e78e8c097b45ca311ef94ece9218c025a035e581f684cc448c80300ee823` |
| 21 | `lemma` | [exists_equivalence_of_sieve_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/exists-equivalence-of-sieve-eq.md) | 406 | `result-track:a9d2e87f937e91247f166da811afe9e27fd344dba97fc904936cc89709f5e79a` |
| 22 | `lemma` | [nonempty_fullyFaithful_toDescentData_iff_of_sieve_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/nonempty-fullyfaithful-todescentdata-iff-of-sieve-eq.md) | 425 | `result-track:8ad4864c60e6b91fcd2b0123a45ad99ad244f2bc7746a2b53384f61e42beefe8` |
| 23 | `lemma` | [isEquivalence_toDescentData_iff_of_sieve_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isequivalence-todescentdata-iff-of-sieve-eq.md) | 435 | `result-track:f0187ff8e1b5458d60f19cfc0f02779565083fd7bee0a90b613b4582515f4b64` |
| 24 | `def` | [subtypeCompatibleHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/subtypecompatiblehomequiv.md) | 449 | `declaration-track:02c1ca52736fcb6d4cf431cf5f0ab6f36773f6b0137ca74599067af26afa3edf` |
| 25 | `lemma` | [subtypeCompatibleHomEquiv_toCompatible_presheafHomObjHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/subtypecompatiblehomequiv-tocompatible-presheafhomobjhomequiv.md) | 466 | `result-track:f5adebb5e6d29c92338a5a110869553cad6e0f54d5add9a306c41ba7a62512e5` |
| 26 | `structure` | [IsPrestackFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestackfor.md) | 480 | `declaration-track:2148fed54ef7e0e436a36e2c5662de72ec6ff64310229bc655853538ad136196` |
| 27 | `def` | [IsPrestackFor.fullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestackfor-fullyfaithful.md) | 487 | `declaration-track:ac55f762f31494aea50ea7bcf6ac696b982f96d4346d1befa4a9f9bcb27d1ec0` |
| 28 | `lemma` | [isPrestackFor_iff_of_sieve_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestackfor-iff-of-sieve-eq.md) | 491 | `result-track:03eafcf50970f59d674d9bc6bc5d2aace478608dfad8f7c8baa0b92f0724cf63` |
| 29 | `lemma` | [IsPrestackFor_generate_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestackfor-generate-iff.md) | 501 | `result-track:e0633d4039f1038d550d1caa0337d3934d3fe19e0f95861d75e31984f4780699` |
| 30 | `lemma` | [isPrestackFor_ofArrows_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestackfor-ofarrows-iff.md) | 505 | `result-track:35c36e61a802903e6d5f6d0cbd2c4fea8ff49d980e79a3b6c7b63f86999433d7` |
| 31 | `structure` | [IsStackFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isstackfor.md) | 515 | `declaration-track:b9306848841c0efab93bb538bd827c475880d6ba44d978b873b30db1fec8d6cc` |
| 32 | `lemma` | [IsStackFor.isPrestackFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isstackfor-isprestackfor.md) | 520 | `result-track:ab5cbf7025987577b3cf98225bb6bc6cea1516662284d709c3cbff521dd22986` |
| 33 | `lemma` | [IsStackFor.essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isstackfor-esssurj.md) | 527 | `result-track:ef137f84283ad5347f997336db0de78e57822ebeba71b2e20e2e965374a2ede1` |
| 34 | `lemma` | [isStackFor_iff_of_sieve_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isstackfor-iff-of-sieve-eq.md) | 532 | `result-track:3d55306b04d9fb8f4219a121986cfa60897bdbecd226551b702270c8bbdbc3ee` |
| 35 | `lemma` | [IsStackFor_generate_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isstackfor-generate-iff.md) | 542 | `result-track:266a8a563790291b9904700cc49f598c7c69ee583a2715b00570803bcd72832c` |
| 36 | `lemma` | [isStackFor_ofArrows_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isstackfor-ofarrows-iff.md) | 546 | `result-track:94ae2780edc5f322afab2c07aef154f5f1c8e0f12fe0996eea7761fef1b5f012` |
| 37 | `lemma` | [bijective_toDescentData_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/bijective-todescentdata-map-iff.md) | 554 | `result-track:82e7446696979ae6b269f15c605d8d32c590cb7ce57021e515002ae4a77ba9e4` |
| 38 | `lemma` | [isPrestackFor_iff_isSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestackfor-iff-issheaffor.md) | 565 | `result-track:06a963ae7aba3cc5e6540c81330787e6a5d015d17e7bbc601db70177125f27ef` |
| 39 | `lemma` | [isPrestackFor_iff_isSheafFor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestackfor-iff-issheaffor-source-edition-2.md) | 581 | `result-track:a5a31dcb3a0e73a6489edf8b2888de8895940c9b74cebe5c0077b57a8ca48ce6` |
| 40 | `lemma` | [IsPrestackFor.isSheafFor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestackfor-issheaffor.md) | 603 | `result-track:4940b142f0ca53f005e0c10f781d5192fd6bde069590fdd369e7dde447a4c162` |
| 41 | `def` | [fullyFaithfulToDescentData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/fullyfaithfultodescentdata.md) | 615 | `declaration-track:5c0253b7ee6e42b4863c8d3f645f928421d6822b911616d3c90b3a39be48d491` |
| 42 | `lemma` | [isPrestackFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestackfor-source-edition-2.md) | 625 | `result-track:23b905bba8aa9acd581d7ecb48840c9251d8f63c4ea7378c5b033266aeb7f64c` |
| 43 | `lemma` | [isPrestackFor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestackfor-source-edition-3.md) | 630 | `result-track:ea7d88c40b0f172bee97c18845b58454f6654e38c857bd696025db29801fa47e` |
| 44 | `lemma` | [IsPrestack.of_isPrestackFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DescentDataNamespacedPublic.lean/declarations/isprestack-of-isprestackfor.md) | 635 | `result-track:1f5028a8cc7663c760c807d63ac1c9bb3928897d6e7285b88ce815724abc82b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a42ac35fef671d17eaee9a06d720bf6f0eb4400e69e49c4bb924310b868a815 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
