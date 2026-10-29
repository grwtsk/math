# Verification target: Smooth Kaehler Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35afb79ea726356586d546a4de1b8fd31ec5b6fc",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35afb79ea726356586d546a4de1b8fd31ec5b6fc`.

Source path: `GRWTSK/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Extension.Cotangent.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivationOfSectionOfKerSqZero](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/derivationofsectionofkersqzero.md) | 79 | `declaration-track:f9406289ce25d9fbd93f7b68a4be75d0a008ebf14158adb0e547c4871c808a8f` |
| 2 | `lemma` | [isScalarTower_of_section_of_ker_sqZero](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/isscalartower-of-section-of-ker-sqzero.md) | 108 | `result-track:8da51b4143f53d7696e9cf10c3e607fd9c5bcfc2ccd5fc85fc8d59b1499be120` |
| 3 | `def` | [retractionOfSectionOfKerSqZero](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/retractionofsectionofkersqzero.md) | 127 | `declaration-track:52bc436708a33725ca78017a5735c16863e59364ca9437745fa1191f2befc676` |
| 4 | `lemma` | [retractionOfSectionOfKerSqZero_tmul_D](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/retractionofsectionofkersqzero-tmul-d.md) | 135 | `result-track:db90616a499cee3f2507c34ba45677e34452980b99a68f63390a56c67f688a89` |
| 5 | `lemma` | [retractionOfSectionOfKerSqZero_comp_kerToTensor](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/retractionofsectionofkersqzero-comp-kertotensor.md) | 147 | `result-track:78fa24c656ce427587f0e075402131e92804822b8649dd9758347d014ad76ffa` |
| 6 | `lemma` | [sectionOfRetractionKerToTensorAux_prop](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/sectionofretractionkertotensoraux-prop.md) | 162 | `result-track:2945872147dc323da338f18dc8b7a7b8f7c5e988217d27680094e8249bec95cf` |
| 7 | `def` | [sectionOfRetractionKerToTensorAux](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/sectionofretractionkertotensoraux.md) | 179 | `declaration-track:43f5ee22d7f9fdbe33ceffbd68935837246b64bd01aa3a5f79ff4493660c6022` |
| 8 | `lemma` | [sectionOfRetractionKerToTensorAux_algebraMap](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/sectionofretractionkertotensoraux-algebramap.md) | 197 | `result-track:54e593a569062ec8a5f9a672c6294d2ec7ea4d7520ab4c56fb14f59ce0f7ad99` |
| 9 | `lemma` | [toAlgHom_comp_sectionOfRetractionKerToTensorAux](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/toalghom-comp-sectionofretractionkertotensoraux.md) | 204 | `result-track:005f3d976e1023005ff06b5b58d1caa3158c34380495e41d5a7cf97c26a97000` |
| 10 | `def` | [sectionOfRetractionKerToTensor](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/sectionofretractionkertotensor.md) | 217 | `declaration-track:b9d79cde3a3e393752e1a02facdbf34683675fa0e15b3dc6c2703d1b0fbe354e` |
| 11 | `lemma` | [sectionOfRetractionKerToTensor_algebraMap](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/sectionofretractionkertotensor-algebramap.md) | 221 | `result-track:200ed881d27a0489da6454d8371f51df44bf6961d3f2d76ef8d00fdca13685ba` |
| 12 | `lemma` | [toAlgHom_comp_sectionOfRetractionKerToTensor](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/toalghom-comp-sectionofretractionkertotensor.md) | 226 | `result-track:9d4292a0d5b91e14305d754d5caf190ecf0119b348b91c7049c63df738c58e52` |
| 13 | `def` | [retractionKerToTensorEquivSection](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/retractionkertotensorequivsection.md) | 242 | `declaration-track:d8fc89dc3ae7c99b8d5f34aa6cdf32c08b7fd61b1043f1c3a2d7d6625ea4471e` |
| 14 | `def` | [derivationQuotKerSq](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/derivationquotkersq.md) | 267 | `declaration-track:936074c5e703b7a4e3b9bfacb67347e8e4fd0577a69a11e72c1e4bbbecc6f464` |
| 15 | `lemma` | [derivationQuotKerSq_mk](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/derivationquotkersq-mk.md) | 292 | `result-track:f783cb6be485715c39d87e6d999be1acd027f71f6c77edf800bdc7a4ab271a50` |
| 16 | `def` | [tensorKaehlerQuotKerSqEquiv](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/tensorkaehlerquotkersqequiv.md) | 301 | `declaration-track:afec57c4987012e7c8b7b24d0126ecb7c8d34839d5c90872cf3d8ba98c6d8767` |
| 17 | `lemma` | [tensorKaehlerQuotKerSqEquiv_tmul_D](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/tensorkaehlerquotkersqequiv-tmul-d.md) | 322 | `result-track:c9db68bf3c007b526529d65ef139f796bc18cc50a7e3656ad0f665765838ecbb` |
| 18 | `lemma` | [tensorKaehlerQuotKerSqEquiv_symm_tmul_D](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/tensorkaehlerquotkersqequiv-symm-tmul-d.md) | 328 | `result-track:56ee8c6cb9cc7f4466e83da5aa90212e06c3c6ae1fa06fca26e48c58913d621b` |
| 19 | `def` | [retractionKerCotangentToTensorEquivSection](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/retractionkercotangenttotensorequivsection.md) | 340 | `declaration-track:5fd7d5891eadd5153743e7bbbe427223661cdaaba7135294b556a855d93c0c73` |
| 20 | `theorem` | [Algebra.FormallySmooth.iff_split_injection](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/algebra-formallysmooth-iff-split-injection.md) | 399 | `result-track:37e1189b26e4773cc5fe9e13a29c2912c4116130230b51cc5efc14bc6ba73de8` |
| 21 | `theorem` | [Algebra.Extension.formallySmooth_iff_split_injection](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/algebra-extension-formallysmooth-iff-split-injection.md) | 411 | `result-track:8b237b2a931f5799883d18a44f4d243579803862fb6049ebf58bda4084dfeef4` |
| 22 | `theorem` | [Algebra.FormallySmooth.iff_injective_and_split](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/algebra-formallysmooth-iff-injective-and-split.md) | 432 | `result-track:e7f8beffc568c2c664cdd27d6e39c0eb22750c00c53e941173385c7bd740e014` |
| 23 | `theorem` | [Algebra.FormallySmooth.iff_injective_and_projective'](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/algebra-formallysmooth-iff-injective-and-projective.md) | 444 | `result-track:61233220c5f8e9fa7db1d2e93c33fa03c14de94bb8080b390e04e10e4a5b88d7` |
| 24 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/instance.md) | 456 | `declaration-track:02dae1e7f16177f5f7d0e55a46467c6ac02182d76fa6f59409776f4c2b573124` |
| 25 | `theorem` | [Algebra.FormallySmooth.iff_injective_and_projective](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/algebra-formallysmooth-iff-injective-and-projective-source-edition-2.md) | 465 | `result-track:aa29eb7b7958fa0edb57b75d62875181570f247b63938088f2d4da30506c04a9` |
| 26 | `theorem` | [Algebra.FormallySmooth.iff_subsingleton_and_projective](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/algebra-formallysmooth-iff-subsingleton-and-projective.md) | 476 | `result-track:42e42604ca20d6efddb95b5a7ea4dbb74a6399e9570a11243c35361d64d187e3` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/instance-source-edition-2.md) | 485 | `declaration-track:b2f3326480f72eed9fec23418ae0f51e6cee90ca65524d463f518542546e7e15` |
| 28 | `lemma` | [CotangentSpace.map_toInfinitesimal_bijective](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/cotangentspace-map-toinfinitesimal-bijective.md) | 490 | `result-track:0481db54fa800e4afb4ed1535501ad711bbb6386ffd14ea2f4dd0fbdf6f7dd69` |
| 29 | `lemma` | [Cotangent.map_toInfinitesimal_bijective](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/cotangent-map-toinfinitesimal-bijective.md) | 503 | `result-track:b951fe692a56689fa31297c1debe27af1b18647424f113eb00cd200a28279a1e` |
| 30 | `lemma` | [H1Cotangent.map_toInfinitesimal_bijective](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/h1cotangent-map-toinfinitesimal-bijective.md) | 524 | `result-track:3fad1408e8fad22a8ea6eabd60b923decfe27dc8645fb3566c1e2b953ed6d2c8` |
| 31 | `def` | [homInfinitesimal](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/hominfinitesimal.md) | 541 | `declaration-track:8d27653f76ce690001be39cd7df643348327ecd3d20d2833d5af13d7cc72e78c` |
| 32 | `def` | [H1Cotangent.equivOfFormallySmooth](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/h1cotangent-equivofformallysmooth.md) | 567 | `declaration-track:b0b0b969cc0335c04209bd50315aa911757cdc88dff857101f83023ed665b0c0` |
| 33 | `lemma` | [H1Cotangent.equivOfFormallySmooth_toLinearMap](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/h1cotangent-equivofformallysmooth-tolinearmap.md) | 574 | `result-track:328562b547299c3126a3851d7cce1a5d990e9493fc3d04ea589f9ad8ad71c85c` |
| 34 | `lemma` | [H1Cotangent.equivOfFormallySmooth_apply](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/h1cotangent-equivofformallysmooth-apply.md) | 583 | `result-track:0a470a3570c88296330c3416cb8ee7f98dc9d177b3338f4ab0322f7c687056cc` |
| 35 | `lemma` | [H1Cotangent.equivOfFormallySmooth_symm](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/h1cotangent-equivofformallysmooth-symm.md) | 588 | `result-track:e6bced42c69b570cf3baccb9a052e014b2eda1336885689bfe0bad016146c8d1` |
| 36 | `def` | [equivH1CotangentOfFormallySmooth](../../../../CommutativeAlgebra/SmoothKaehlerNamespaced.lean/declarations/equivh1cotangentofformallysmooth.md) | 594 | `declaration-track:1dc6a2897e078c3253ff499b5c5ab15a4ef07a584a8be66f30b6353b2c92c6bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d12bb698b753387f991a043e5211f612365fd1cb8f3e164c5f271b3beaac0589 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean","GRWTSK/_verification/specifications/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
