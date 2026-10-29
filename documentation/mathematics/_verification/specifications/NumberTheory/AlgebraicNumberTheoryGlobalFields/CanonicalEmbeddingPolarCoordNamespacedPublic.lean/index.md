# Verification target: Canonical Embedding Polar Coord Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9c5acef0a49cf0170cb4fb694d3fde14e22f088",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2ad812898fd7cf24f7a76f3eb0906659053deb70a4be23a1034d153097467444.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9c5acef0a49cf0170cb4fb694d3fde14e22f088`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2ad812898fd7cf24f7a76f3eb0906659053deb70a4be23a1034d153097467444.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolarCoord/Variant2ad812898fd7cf24f7a76f3eb0906659053deb70a4be23a1034d153097467444.lean.json)

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
| 1 | `abbrev` | [realMixedSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/realmixedspace.md) | 74 | `declaration-track:e9f9e2ba29fee53cda3a363d1ec946ed6f43b0cb68c9b517b5ce0f92609d02aa` |
| 2 | `def` | [mixedSpaceToRealMixedSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/mixedspacetorealmixedspace.md) | 81 | `declaration-track:8942ea1fca5451f84afc71c7540bdd47b5ea6c1516854a000b39839222419616` |
| 3 | `theorem` | [mixedSpaceToRealMixedSpace_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/mixedspacetorealmixedspace-apply.md) | 85 | `result-track:099847b0d57288cbb731969ddc542b2586652910ab0d66ef0494a940b86c424c` |
| 4 | `theorem` | [volume_preserving_mixedSpaceToRealMixedSpace_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/volume-preserving-mixedspacetorealmixedspace-symm.md) | 91 | `result-track:9498420bb15639ae669904809e9af706589299a08a4ebbfcc1fdde7278e8296f` |
| 5 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/instance.md) | 97 | `declaration-track:33809cdb4b40e1a88b11c740dab933304036b5d0ad8e1e0a30d3a9350f7ee981` |
| 6 | `def` | [polarCoordReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/polarcoordreal.md) | 104 | `declaration-track:79433f31649106999147cb7d5f4ada8ed45ea001761ef71685e08b01630ba567` |
| 7 | `theorem` | [measurable_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/measurable-polarcoordreal-symm.md) | 107 | `result-track:9edfba5740231042c203950b5e2fd354655e6eeebdca847c105f39ed0fce585f` |
| 8 | `theorem` | [polarCoordReal_source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/polarcoordreal-source.md) | 112 | `result-track:9537c79c7eff5814f2a3e34d3e047a57d47d0ac50771c69b6c1913e079a0b571` |
| 9 | `theorem` | [abs_of_mem_polarCoordReal_target](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/abs-of-mem-polarcoordreal-target.md) | 115 | `result-track:64e36a4fede847b648121acc8eb88f33daf0442478b322928a25466436241df3` |
| 10 | `def` | [FDerivPolarCoordRealSymm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/fderivpolarcoordrealsymm.md) | 124 | `declaration-track:5f6146ff06dd0bf92dc20d7f817fb90cc9e62b5e38c23e326a21c1f5f3851569` |
| 11 | `theorem` | [hasFDerivAt_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/hasfderivat-polarcoordreal-symm.md) | 127 | `result-track:7c2a779aa2c5fff8168b7a1b71ff8202e2b2da420598ce75b97d525b3dd52a13` |
| 12 | `theorem` | [det_fderivPolarCoordRealSymm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/det-fderivpolarcoordrealsymm.md) | 133 | `result-track:b0f27008efbcfcc1f9acc7704738519eb8fb7038dbf62df81bd84edf63c0a42a` |
| 13 | `theorem` | [polarCoordReal_symm_target_ae_eq_univ](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/polarcoordreal-symm-target-ae-eq-univ.md) | 141 | `result-track:33a3b11404c687902d2a55fecc1c17e1ec56983b7fbdbfadafb0137da9c6706c` |
| 14 | `theorem` | [integral_comp_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/integral-comp-polarcoordreal-symm.md) | 148 | `result-track:436e54070166467b05b4e88ff8fab961d8449037bff8aef3c8b20c985c76b818` |
| 15 | `theorem` | [lintegral_comp_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/lintegral-comp-polarcoordreal-symm.md) | 162 | `result-track:4512de2827822eb864191873b01498b404beafb231efd623e4c9671d15bb90df` |
| 16 | `def` | [polarCoord](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/polarcoord.md) | 186 | `declaration-track:1c0e2a9d495610d5abdc0b312f7466c7a277649f9a5e07bd11a0c41c3af7de7d` |
| 17 | `theorem` | [polarCoord_target_eq_polarCoordReal_target](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/polarcoord-target-eq-polarcoordreal-target.md) | 189 | `result-track:e318439c94cbb3a668dd835e7cc9dfef48f99e2c030d457b6e65264fcc666dcb` |
| 18 | `theorem` | [polarCoord_symm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/polarcoord-symm-eq.md) | 192 | `result-track:0d40fddc4692e83d0c641e6f3075c5a681f7617f356028d6312ac433721a15ec` |
| 19 | `theorem` | [measurable_polarCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/measurable-polarcoord-symm.md) | 196 | `result-track:b044dd1b0025af3ef31b46d15200bdbebbb250d6fed5107c8b38f5ed9dfd8c40` |
| 20 | `theorem` | [normAtPlace_polarCoord_symm_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/normatplace-polarcoord-symm-of-isreal.md) | 201 | `result-track:bcf0fd5e1d2a71b1215233b47f230c13d4c5a0b81e8966434a9e2c32fee366eb` |
| 21 | `theorem` | [normAtPlace_polarCoord_symm_of_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/normatplace-polarcoord-symm-of-iscomplex.md) | 206 | `result-track:7dcf2645616324ebd38a53b02bd89a79da68e74e60de23d75f08a0a1ff6028a9` |
| 22 | `theorem` | [integral_comp_polarCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/integral-comp-polarcoord-symm.md) | 212 | `result-track:3d85d397159cccb060d81cfbd801269bb77ea47be231638950737349de5806bf` |
| 23 | `theorem` | [lintegral_comp_polarCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/lintegral-comp-polarcoord-symm.md) | 222 | `result-track:4889270e12e37ef55ac134c8faceb8da5172b4d9f0884704375dd2a7fc0af0c0` |
| 24 | `abbrev` | [polarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/polarspace.md) | 239 | `declaration-track:e9791ed8160e3be7c2d4a1a60466ad75377c83f64d7551bdb054184da5313fd1` |
| 25 | `def` | [measurableEquivRealMixedSpacePolarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/measurableequivrealmixedspacepolarspace.md) | 247 | `declaration-track:1c4150a61b36a0f5282f94a399c91087635413db7c9d97660f943fb2a58fc854` |
| 26 | `def` | [homeoRealMixedSpacePolarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/homeorealmixedspacepolarspace.md) | 261 | `declaration-track:a2a84a4ebc430efa1cc32340452f35c6334f961f4ce025d6cb2cd1324d2c63b1` |
| 27 | `theorem` | [homeoRealMixedSpacePolarSpace_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/homeorealmixedspacepolarspace-apply.md) | 274 | `result-track:7a2a871283bd593e3d6eeeb7a10c2fbbe7e5c49c53322f06600d98c56d62cd6c` |
| 28 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_fst_ofIsReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/homeorealmixedspacepolarspace-apply-fst-ofisreal.md) | 279 | `result-track:96bb817cecae7d72c0427933029250e534ae718b27974c13d960bba5071c57a9` |
| 29 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_fst_ofIsComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/homeorealmixedspacepolarspace-apply-fst-ofiscomplex.md) | 284 | `result-track:a0e94d26704bc41669e25d19440553cb4951941b3be9d3a948f745c44b9caad4` |
| 30 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_snd](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/homeorealmixedspacepolarspace-apply-snd.md) | 289 | `result-track:5298cb21720a4266bdca97a85ea71b07bf01f0598cebb92b1211b6f1d3c7c107` |
| 31 | `theorem` | [homeoRealMixedSpacePolarSpace_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/homeorealmixedspacepolarspace-symm-apply.md) | 293 | `result-track:6803ecb9bfa9b07e74b46638d8a8bd5db2dc6cd2df4c0f162bfc6392a578c514` |
| 32 | `theorem` | [volume_preserving_homeoRealMixedSpacePolarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/volume-preserving-homeorealmixedspacepolarspace.md) | 297 | `result-track:f80914c3f0b4bd14abca2aad96fa7057386e3cd542cf5bae70e962dd23ead1ce` |
| 33 | `def` | [polarSpaceCoord](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/polarspacecoord.md) | 313 | `declaration-track:379d19b94a82c115f94790243838b91f83b88598700ffc6cfc1c73651c046b9a` |
| 34 | `theorem` | [measurable_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/measurable-polarspacecoord-symm.md) | 316 | `result-track:fe201c2ec19ea9d04f167e135a5e280d773fed902683aeb2212fbd6f1cc9fd52` |
| 35 | `theorem` | [polarSpaceCoord_target'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/polarspacecoord-target.md) | 322 | `result-track:54ac515d5459701d38359108750ff1170f2a6bb60629b8ab2be610c3a898ab07` |
| 36 | `theorem` | [integral_comp_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/integral-comp-polarspacecoord-symm.md) | 332 | `result-track:f57622a6d8f6872945eba3888a354933907837ace40611c99b1c9812782fd79b` |
| 37 | `theorem` | [lintegral_comp_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/lintegral-comp-polarspacecoord-symm.md) | 346 | `result-track:cc507bc929d914ee305bb6a88ff38a76e82f480b4524329da727c2b1e38b7917` |
| 38 | `theorem` | [normAtComplexPlaces_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/normatcomplexplaces-polarspacecoord-symm.md) | 363 | `result-track:5f792941cc2a4c2b146c05500ed2f4c0ce7c8d28e88df84a84b8d62a42681cd8` |
| 39 | `theorem` | [volume_eq_two_pi_pow_mul_integral_aux](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/volume-eq-two-pi-pow-mul-integral-aux.md) | 372 | `result-track:f0191f306c802490388aa90374b1c16b97e98c11ca8cca057a3138d36e6148b8` |
| 40 | `theorem` | [volume_eq_two_pi_pow_mul_integral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/volume-eq-two-pi-pow-mul-integral.md) | 397 | `result-track:e8675db4f00f768a5e6aa2b614c4332cb71733f9ca8fa8accba349ca0515b6ea` |
| 41 | `theorem` | [volume_eq_two_pow_mul_two_pi_pow_mul_integral_aux](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/volume-eq-two-pow-mul-two-pi-pow-mul-integral-aux.md) | 420 | `result-track:ed172e5459626e7e2c94c2f1e7820c9522f40d34e56cf433c0432357967feb4c` |
| 42 | `theorem` | [volume_eq_two_pow_mul_two_pi_pow_mul_integral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordNamespacedPublic.lean/declarations/volume-eq-two-pow-mul-two-pi-pow-mul-integral.md) | 448 | `result-track:0b0a9e6d45fcec863f84468598cb0a569c20e5ec0c4a8a51b2d71c8e06f190d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56b6239cfe8566ecc77e5c2fd1e9a9b04e0c14d731a5fccc32b5597257d731b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant2ad812898fd7cf24f7a76f3eb0906659053deb70a4be23a1034d153097467444.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PolarCoord/Variant2ad812898fd7cf24f7a76f3eb0906659053deb70a4be23a1034d153097467444.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
