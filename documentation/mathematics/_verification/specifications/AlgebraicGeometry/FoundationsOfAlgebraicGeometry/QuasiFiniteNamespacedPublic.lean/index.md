# Verification target: Quasi Finite Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47be796e20c03ee563fa601d2a4a87163338f74c",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47be796e20c03ee563fa601d2a4a87163338f74c`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean.json)

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
| 1 | `class` | [LocallyQuasiFinite](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/locallyquasifinite.md) | 79 | `declaration-track:6c9371ab1406d86a587c2e64ad4d0b0b785a23a90308ce75af5a0dba4fba3dfa` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 84 | `declaration-track:f3378ad1a476506026d8635a904c5197637b34c3faa44e9bd6ece11a39d7c52e` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 90 | `declaration-track:480e3e410fc44dd15452f83f700f4ed75a4be501d4124a5c23311a3d0e4849a6` |
| 4 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 93 | `declaration-track:29cdb5ebd27ed418afe76fcd30d086581946c9edde0d8810261b49ee4bfcb32e` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 98 | `declaration-track:15f72908aa68961f06bdd8c2253fcaea259b029baa9c3cca530ef4543d42bf1a` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 105 | `declaration-track:36fa00a85cd6267b90690453be94b228ad0a0c69a77ea255fceed87f64abeb1f` |
| 7 | `theorem` | [LocallyQuasiFinite.of_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/locallyquasifinite-of-comp.md) | 111 | `result-track:d738f23af033583a416b35e614531b699a77d8aa80f67eb4224c085fe7c570a9` |
| 8 | `theorem` | [LocallyQuasiFinite.comp_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/locallyquasifinite-comp-iff.md) | 115 | `result-track:c3e4576a9bc596830accb35435bb5d26b953b22167a2204d8bb35db9d1ea69c3` |
| 9 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 120 | `declaration-track:1388886b05956d336188adb3ebaa5cc783086645bb69fd57b3b001723191d40c` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 123 | `declaration-track:cf9c03d47bf196a5d2d0eb05f53e41dbdaaa29ae402d580d896edb90eed6f44e` |
| 11 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 127 | `declaration-track:c4784a4a18c0e654c5ff5279967e70325f768e8e78b6bf7f8330555f369dbdb2` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 132 | `declaration-track:62c7285c53a6327bb89749255d8f732021c3f3398de58f55ad5d9fbbbc4f31ca` |
| 13 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 137 | `declaration-track:79788ee8e00028e1fbb0582abecebd1cdbe18dc26436fe095f74e874c2f00ae6` |
| 14 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 140 | `declaration-track:6931b1eef6e484e5a958e635dbad3ace057c611003fe19739a6e9ac39b6f0ba7` |
| 15 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 144 | `declaration-track:5d64db197084da254c862ba2b82554df1b7cb7937dc802ee6aac3aa1041b2207` |
| 16 | `lemma` | [IsLocallyArtinian.of_locallyQuasiFinite](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/islocallyartinian-of-locallyquasifinite.md) | 150 | `result-track:650ef7fb4491e72d27936d6e155a46e4cec071005edd42139a2b0e43f14a4fc9` |
| 17 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 168 | `declaration-track:c96a08c68db8cdccad298aadabcb7b48688634fd2d9bf5f9720db4a53c6d5ea1` |
| 18 | `lemma` | [Scheme.Hom.isDiscrete_preimage_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-isdiscrete-preimage-singleton.md) | 171 | `result-track:c0c80c0d383989a55df0b0885ec94f4b413f2185468f821bc2c2fb84a975c659` |
| 19 | `lemma` | [Scheme.Hom.isDiscrete_preimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-isdiscrete-preimage.md) | 176 | `result-track:999cc8ea55defd499674ee8c246d03a27faf7325ab1be3f86b1210a9b64f8c5d` |
| 20 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 180 | `declaration-track:7230c5efa9c075c6b5f8e17751fcb306e3e712adbccb7d7ff72d0699a694ce80` |
| 21 | `lemma` | [Scheme.Hom.finite_preimage_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-finite-preimage-singleton.md) | 182 | `result-track:294bf495183c8d566ed53e30e3afd68c5b2d27433a05ee334f7a98936b6cdfa2` |
| 22 | `lemma` | [Scheme.Hom.finite_preimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-finite-preimage.md) | 186 | `result-track:b6041c2e99f01dc1703c002d3a62fee61763c3459494c2ab2bde0c295813f7cb` |
| 23 | `lemma` | [Scheme.Hom.tendsto_cofinite_cofinite](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-tendsto-cofinite-cofinite.md) | 190 | `result-track:14a41a214f4d1860079980c4b10d24a22b2c66dc306e56ce1b5102a86a1f6d5e` |
| 24 | `lemma` | [IsFinite.of_locallyQuasiFinite](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/isfinite-of-locallyquasifinite.md) | 195 | `result-track:958afbf7a29922279d6d4e5cc11b5e3d498d70993e3e658fcc854c463867cbd1` |
| 25 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 215 | `declaration-track:941b06456128a09e5d4b4f23eeaf5a4ae05cfa7bcc5d6a6cf95456f671897bc4` |
| 26 | `lemma` | [LocallyQuasiFinite.of_fiberToSpecResidueField](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/locallyquasifinite-of-fibertospecresiduefield.md) | 220 | `result-track:c94b3b1f318b2ddd59f25c424e2db0e47634e845c3d81afd95e9ae671300efa2` |
| 27 | `lemma` | [locallyQuasiFinite_iff_isFinite_fiber](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/locallyquasifinite-iff-isfinite-fiber.md) | 266 | `result-track:87defc017777663d6ebc3b3bfef4b50a82a98a42a832e0e7dc22455819f873ea` |
| 28 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 270 | `declaration-track:32da3348f58b29904e4a3b435dd18dcc9c2fd7774050cdb3d64d7478a9da07b2` |
| 29 | `lemma` | [locallyQuasiFinite_iff_isDiscrete_preimage_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/locallyquasifinite-iff-isdiscrete-preimage-singleton.md) | 277 | `result-track:5c96d95a3068c8b93a4f6a59c89f18f261f4e955e2ed53e4158c7a4b13258eb0` |
| 30 | `lemma` | [LocallyQuasiFinite.of_finite_preimage_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/locallyquasifinite-of-finite-preimage-singleton.md) | 304 | `result-track:d8e169461c6f10818fe766231eee457e835d17501dfc670007fbbf0dc87dd04e` |
| 31 | `lemma` | [locallyQuasiFinite_iff_finite_preimage_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/locallyquasifinite-iff-finite-preimage-singleton.md) | 326 | `result-track:13924cbd7a6c7a1bc7894ef24759eaa5b05ed3c5ca1f10811294662229cc1372` |
| 32 | `lemma` | [LocallyQuasiFinite.of_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/locallyquasifinite-of-injective.md) | 331 | `result-track:4f9c065711d6ffaea8ac25a1ae1bd3cc09479fac957d0a28d01f1767c08721a7` |
| 33 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/instance.md) | 335 | `declaration-track:0eb63ff6166b9e1233081c333c78212402c8c38574ce9c02ef77025c023a13c3` |
| 34 | `def` | [Scheme.Hom.QuasiFiniteAt](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-quasifiniteat.md) | 340 | `declaration-track:6eed6a503d1d7e24c7b07ddf7beea7a67184e3b3752fec3acb52fa78d9732d4d` |
| 35 | `lemma` | [Scheme.Hom.QuasiFiniteAt.quasiFiniteAt](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-quasifiniteat-quasifiniteat.md) | 344 | `result-track:4b2f63d1876add3ba8a95e0945e47dae604df672577b3f04788b9fc3700c410b` |
| 36 | `lemma` | [Scheme.Hom.quasiFiniteAt](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-quasifiniteat-source-edition-2.md) | 366 | `result-track:bcc775f785ab4a582ba87c0952abd5f5c1d895f3b46dd9cb83790aabcb7bc2c1` |
| 37 | `lemma` | [Scheme.Hom.quasiFiniteAt_comp_iff_of_isOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-quasifiniteat-comp-iff-of-isopenimmersion.md) | 378 | `result-track:e4421cf7927e34e01ab55d7b5623a32d548f09e40e8591df645e7d82f4028b09` |
| 38 | `lemma` | [Scheme.Hom.quasiFiniteAt_comp_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-quasifiniteat-comp-iff.md) | 384 | `result-track:bf2854ddd7f5a8bd84eb158971a28a52470dce6b9bd732022236663cb0b8f768` |
| 39 | `lemma` | [Scheme.Hom.quasiFiniteAt_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-quasifiniteat-iff.md) | 390 | `result-track:2031500ffe2aac42e324c87ac89ffbdc07e3a2a93a01c2c119619f58d0d73381` |
| 40 | `lemma` | [Scheme.Hom.quasiFiniteAt_iff_isOpen_singleton_asFiber](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-quasifiniteat-iff-isopen-singleton-asfiber.md) | 396 | `result-track:12354af12228d084fcc7cf15abe85b2087a17ac3dffbba7a1d48999de5381483` |
| 41 | `lemma` | [Scheme.Hom.QuasiFiniteAt.isClopen_singleton_asFiber](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/QuasiFiniteNamespacedPublic.lean/declarations/scheme-hom-quasifiniteat-isclopen-singleton-asfiber.md) | 443 | `result-track:00c0e66eec4754a12a1d2aa66f1d3d4a51c0b033571c8411f57cd924fc75ca2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0b7d3e4d4b0fbc9761ebc248fc8d36f8a7f372a96c422bb157d535916a2154c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
