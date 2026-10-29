# Verification target: Transcendence Basis Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28bab1de2f9509d8e20552883cc6faf3014bf1f7",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28bab1de2f9509d8e20552883cc6faf3014bf1f7`.

Source path: `GRWTSK/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isTranscendenceBasis_superset](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/exists-istranscendencebasis-superset.md) | 59 | `result-track:3526fcccf3cb22d81af6887d2257bd0c22ff3fee70b165a42c98709ad159bef3` |
| 2 | `theorem` | [exists_isTranscendenceBasis](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/exists-istranscendencebasis-source-edition-2.md) | 66 | `result-track:813550191175bd0cd7cd3862432381f69e7080f01d759ed8c39291b38da45873` |
| 3 | `theorem` | [exists_isTranscendenceBasis'](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/exists-istranscendencebasis.md) | 72 | `result-track:0655e5f11447929d4cfc36a5683842dd7ad8ab4729528ba9ff82850578911955` |
| 4 | `theorem` | [trdeg_eq_iSup_cardinalMk_isTranscendenceBasis](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/trdeg-eq-isup-cardinalmk-istranscendencebasis.md) | 80 | `result-track:e06154b690c66d87cd2f49b1072bef8e7cf7c9ef4f5ffbbea9f2c528ce571cf2` |
| 5 | `theorem` | [AlgebraicIndependent.isTranscendenceBasis_iff](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/algebraicindependent-istranscendencebasis-iff.md) | 89 | `result-track:96d3d0815ddda5d57d4857f2370ac2a66ed5c2d82763ec36903982be6316c067` |
| 6 | `theorem` | [IsTranscendenceBasis.isAlgebraic](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-isalgebraic.md) | 107 | `result-track:8a92f2d8ce1a0616a9aade6d164783c7f27a998108af85f12bade7986493b675` |
| 7 | `theorem` | [AlgebraicIndependent.isTranscendenceBasis_iff_isAlgebraic](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/algebraicindependent-istranscendencebasis-iff-isalgebraic.md) | 127 | `result-track:cd1552fc437e43b4bc1e784d249159644b83e2b9f46c7d8c00c3466194f500a8` |
| 8 | `theorem` | [isTranscendenceBasis_iff_algebraicIndependent_isAlgebraic](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-iff-algebraicindependent-isalgebraic.md) | 138 | `result-track:90cc2a67d07cfc388054c069fb8393b1e5599fd805f543a7edbcd9940b2db8fe` |
| 9 | `lemma` | [IsTranscendenceBasis.algebraMap_comp](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-algebramap-comp.md) | 144 | `result-track:4c1179c8ed350d89b550893747bf30da4caec72ec4c2664e541400ea294f927e` |
| 10 | `lemma` | [IsTranscendenceBasis.isAlgebraic_iff](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-isalgebraic-iff.md) | 159 | `result-track:82fe973a3bdf78b1f48a6ac7646461337de7971e842174620917204ef2e4419f` |
| 11 | `theorem` | [IsTranscendenceBasis.mvPolynomial](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-mvpolynomial.md) | 178 | `result-track:392b3c591c2fdc059f03325b833954f142a8d299051dddcb6b44d2d688fa227a` |
| 12 | `theorem` | [IsTranscendenceBasis.mvPolynomial'](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-mvpolynomial-source-edition-2.md) | 186 | `result-track:b1b82b63621b2be76297b60024bfaa81cffb3587891c29b7e292e0f0d77a8cd4` |
| 13 | `theorem` | [IsTranscendenceBasis.polynomial](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-polynomial.md) | 189 | `result-track:1f7f4498ce5ba4a7b5ca278c04737cc1dc88724dc2bf8cb4a10b9c918cd93457` |
| 14 | `theorem` | [IsTranscendenceBasis.sumElim_comp](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-sumelim-comp.md) | 200 | `result-track:95724b45aa0beaf2c0976f3e59f590cff5711a392b233b0d7966436fb78359b8` |
| 15 | `theorem` | [IsTranscendenceBasis.isEmpty_iff_isAlgebraic](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-isempty-iff-isalgebraic.md) | 230 | `result-track:f83f28a4da404c0463fea80fe628ba0cd6f4ece3412bb87d0975029bbc0e3adb` |
| 16 | `theorem` | [IsTranscendenceBasis.nonempty_iff_transcendental](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-nonempty-iff-transcendental.md) | 240 | `result-track:96ff9f01cf3b068955f287bdc51d925ea4bb6705b4ab85df679e9ae6d36a7e35` |
| 17 | `theorem` | [IsTranscendenceBasis.isAlgebraic_field](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-isalgebraic-field.md) | 245 | `result-track:522d512fd766bed4794307518af5a0485a104a1cf5df7a85e4f13cf7891e17fe` |
| 18 | `def` | [indepMatroid](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/indepmatroid.md) | 265 | `declaration-track:d671f38bbdb940daf6a0bba3defe83633192a491140ca4ef9b607ef1d4219e24` |
| 19 | `def` | [matroid](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid.md) | 292 | `declaration-track:50add2289142484bd67574d0347e60b86e72511c3b0f3ba8c503bd5710c22534` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/instance.md) | 296 | `declaration-track:174f92791a77795f1c72b96002c1606e74b3d4493eb68cd9da158e46cb04061e` |
| 21 | `theorem` | [matroid_e](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-e.md) | 299 | `result-track:add5f9f70b7d4ee41b0b2979669d79bc3a802916ff04821fdfa9e0392f833125` |
| 22 | `theorem` | [matroid_cRank_eq](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-crank-eq.md) | 301 | `result-track:2dc7f0c5da2423a76a18801911267cd8941d0c0a9ae9775c771d97ce8a408d41` |
| 23 | `theorem` | [matroid_indep_iff](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-indep-iff.md) | 306 | `result-track:15e60b0a42a3c09d746d0bdc8a2df11e386b81ae8586e9cf1f7fdc3e38667230` |
| 24 | `theorem` | [matroid_isBase_iff](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-isbase-iff.md) | 309 | `result-track:9cfd5165171f6326fd759be5ef406fc35ac947374c747a707830125e6cea5e0a` |
| 25 | `theorem` | [matroid_isBasis_iff](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-isbasis-iff.md) | 316 | `result-track:73103f28b261103e0c2f2dd56bd5652da73d2dad8d16339caf5657527f4c584a` |
| 26 | `theorem` | [matroid_isBasis_iff_of_subsingleton](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-isbasis-iff-of-subsingleton.md) | 327 | `result-track:f17df8dffad0cd064a7e2a57a43755945622315a8455fc96cd296a365c214fd6` |
| 27 | `theorem` | [isAlgebraic_adjoin_iff_of_matroid_isBasis](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/isalgebraic-adjoin-iff-of-matroid-isbasis.md) | 333 | `result-track:f702916b15b89af7ed93aa868414513a1896f8a5882179798f4e337ad43cb140` |
| 28 | `theorem` | [matroid_closure_eq](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-closure-eq.md) | 341 | `result-track:95c4d6b43b63d8e3709aef13304a46fe826b5f0b1bf480a9401c57ae1ad63397` |
| 29 | `theorem` | [matroid_isFlat_iff](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-isflat-iff.md) | 351 | `result-track:4638205a362aa87a11668c814520d7b94159a9105494258a43732beb00406406` |
| 30 | `theorem` | [matroid_spanning_iff](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-spanning-iff.md) | 361 | `result-track:6345f3d792974dfb9bb8057b31b8a85575ae17f3a146a8c4408e1a47f8a74907` |
| 31 | `theorem` | [matroid_isFlat_of_subsingleton](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-isflat-of-subsingleton.md) | 368 | `result-track:ffa4db275a8e1312bfcc792e820ca8c6dd45717d081457061a81bd47115bf027` |
| 32 | `theorem` | [matroid_closure_of_subsingleton](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-closure-of-subsingleton.md) | 373 | `result-track:b3fd181974191a2688767b678ce3b9a2fca377d254f23d3c33be5af69d2c169e` |
| 33 | `theorem` | [matroid_spanning_iff_of_subsingleton](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/matroid-spanning-iff-of-subsingleton.md) | 378 | `result-track:9462563f8e45cc32fcad32cdb262d692bb1d2c102b7fc23fbb0e901b1b1bb5f9` |
| 34 | `theorem` | [exists_isTranscendenceBasis_between](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/exists-istranscendencebasis-between.md) | 393 | `result-track:ced305e183adb5c488ac4d13c3258478340afe4f9885003cab4efb6d44655b33` |
| 35 | `theorem` | [exists_isTranscendenceBasis_subset](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/exists-istranscendencebasis-subset.md) | 405 | `result-track:ca2941ca4075b97a16a0e30751025f0bf6d06712ad5b5ee850855cd424094d5a` |
| 36 | `theorem` | [isAlgebraic_iff_exists_isTranscendenceBasis_subset](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/isalgebraic-iff-exists-istranscendencebasis-subset.md) | 412 | `result-track:a7f3904d4d1c3137ee522d71b64f4762d973562afd0d371cf2d5e32132b0899b` |
| 37 | `theorem` | [lift_cardinalMk_eq_trdeg](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/lift-cardinalmk-eq-trdeg.md) | 425 | `result-track:61a8192f091e4c7168a2bd823e4d96192c294f0801290eadbc95a2917dea86e3` |
| 38 | `theorem` | [cardinalMk_eq_trdeg](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/cardinalmk-eq-trdeg.md) | 431 | `result-track:cf4b879be055bbfb2f8123db3ef65ba0b05d0941cac38dd3e3adeb0a349076b2` |
| 39 | `theorem` | [lift_cardinalMk_eq](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/lift-cardinalmk-eq.md) | 438 | `result-track:7dbea0d9a3d9faee9bd95c256d6c6d1258d1b3a6cde3e1e76e2ab74cc44a84fe` |
| 40 | `theorem` | [cardinalMk_eq](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/cardinalmk-eq.md) | 443 | `result-track:837e62c8e76e5f9c2e6cf610528af1e0430c3d90e7f143c58506e77c54fa8c5c` |
| 41 | `theorem` | [MvPolynomial.trdeg_of_isDomain](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/mvpolynomial-trdeg-of-isdomain.md) | 452 | `result-track:2762004729a8b32e681243c9ba8042fb75dc56c3b58b66cffe7033dc84c96d6b` |
| 42 | `theorem` | [Polynomial.trdeg_of_isDomain](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/polynomial-trdeg-of-isdomain.md) | 458 | `result-track:e53ccbeabd90876fb7ac3b1f5164dd1b64bed6b957175539aba6ebcb20072985` |
| 43 | `theorem` | [trdeg_lt_aleph0_of_finiteType](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/trdeg-lt-aleph0-of-finitetype.md) | 462 | `result-track:ee3de67d910b9099d506bfcb441514f4f85046f8c74d798aa48d41968f625ba5` |
| 44 | `lemma` | [isDomain_of_adjoin_range](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/isdomain-of-adjoin-range.md) | 472 | `result-track:339ea23986ff83ee221d2bb3ae0d98a391367dfcd2d4c269bde427d2a7e66f33` |
| 45 | `theorem` | [trdeg_le_cardinalMk](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/trdeg-le-cardinalmk.md) | 477 | `result-track:d605dfdfef7db1d19bc10a14aee1ccd7f1ca8cf2cb330e71dd80cd0916794295` |
| 46 | `theorem` | [isTranscendenceBasis_of_lift_le_trdeg_of_finite](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-of-lift-le-trdeg-of-finite.md) | 487 | `result-track:0092d1f0ae18fec5d116e01408a95e413b7e4faaf2fe5babf6b65ec4473afc2c` |
| 47 | `theorem` | [isTranscendenceBasis_of_le_trdeg_of_finite](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-of-le-trdeg-of-finite.md) | 497 | `result-track:8ee651904fb4ce8ff0d6c92a372209b6af7c17ed401bc41c78e509a457d1dc43` |
| 48 | `theorem` | [isTranscendenceBasis_of_lift_le_trdeg](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-of-lift-le-trdeg.md) | 502 | `result-track:486aa79b98b1aea0ed80bf8f3ed03522ae862b42ab3da26b9531cf2a4727d34f` |
| 49 | `theorem` | [isTranscendenceBasis_of_le_trdeg](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-of-le-trdeg.md) | 508 | `result-track:e7cf03a858756e98415cdf2da932728891f002f2aa73ae466d65e4b4fefd8817` |
| 50 | `theorem` | [isTranscendenceBasis_of_lift_trdeg_le](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-of-lift-trdeg-le.md) | 519 | `result-track:7b79dcb4a1da2bb4e8fc28a909b039c57d1f8a889bd6ac323199ee7d4ba79a2c` |
| 51 | `theorem` | [isTranscendenceBasis_of_trdeg_le](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-of-trdeg-le.md) | 528 | `result-track:50f7f7ff851a6055c202ba89983fde61687a98e271ccdee7a4afe6da133b56c1` |
| 52 | `theorem` | [isTranscendenceBasis_of_lift_trdeg_le_of_finite](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-of-lift-trdeg-le-of-finite.md) | 532 | `result-track:947fd6af9e3ae1c6d9c73db4c83cae91910b0c234da90bb7364b24de22b4d6b0` |
| 53 | `theorem` | [isTranscendenceBasis_of_trdeg_le_of_finite](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/istranscendencebasis-of-trdeg-le-of-finite.md) | 537 | `result-track:a5a7e33be80423f6150bfac8b3fd5364e5f1896d11cc9e7363886db68ec94d44` |
| 54 | `theorem` | [lift_trdeg_add_eq](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/lift-trdeg-add-eq.md) | 545 | `result-track:1de731cc30310eaba2857fe38441a6d4c305f94e53773092267151c0e6735681` |
| 55 | `theorem` | [trdeg_add_eq](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/trdeg-add-eq.md) | 554 | `result-track:f7ac909289af4594cc20b5621df3581286a117f46d13680b10c80488ab09b75c` |
| 56 | `lemma` | [of_isAlgebraic_adjoin_insert_sdiff](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/of-isalgebraic-adjoin-insert-sdiff.md) | 566 | `result-track:fe4ba4d33354b56d2d9896afe806439d8c1c57400f0c71a3468ee818975bbe8d` |
| 57 | `lemma` | [of_isAlgebraic_adjoin_image_compl](../../../../CommutativeAlgebra/TranscendenceBasisNamespacedPublic.lean/declarations/of-isalgebraic-adjoin-image-compl.md) | 609 | `result-track:01bb05d4cff382baa445fd2b03f59e173d8707e93c4aa071db88e1a51ac980c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c5f3d0883484699d388ce5776495ceab273a8a0aa7479927ca23044c1cc32b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean","GRWTSK/_verification/specifications/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
