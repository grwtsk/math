# Verification target: Preadditive Injective Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "748efc8adb0bfc020bd783b7c35067c2c6919acb",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2386f8c536ae7c6231a5422021a39d763c637ed71d17cb667cc6c3808637da4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `748efc8adb0bfc020bd783b7c35067c2c6919acb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2386f8c536ae7c6231a5422021a39d763c637ed71d17cb667cc6c3808637da4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2386f8c536ae7c6231a5422021a39d763c637ed71d17cb667cc6c3808637da4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/injective.md) | 36 | `declaration-track:c1482c42aadd48d666a6bf858e6f2e23f2655ce14adcc8844eedc10085602c84` |
| 2 | `lemma` | [Limits.IsZero.injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/limits-iszero-injective.md) | 41 | `result-track:60580f7358de2d9935ff835494846a9a0de936ab7e1b7236e611db4e35243914` |
| 3 | `structure` | [InjectivePresentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/injectivepresentation.md) | 49 | `declaration-track:ac422f2c1c5d65ef2b305b788f183f0a5ea0a1430eb670263ce2b838c2b8df4a` |
| 4 | `class` | [EnoughInjectives](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/enoughinjectives.md) | 64 | `declaration-track:f6c2ee697173a339d94631dd4404fb770dfbb0001dc89d1bea1be61dd877f50b` |
| 5 | `def` | [factorThru](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/factorthru.md) | 76 | `declaration-track:bd126f92bafda3a34ec6a51f5e2a87102796f3f54f2219ed9d10b18bec2d7335` |
| 6 | `theorem` | [comp_factorThru](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/comp-factorthru.md) | 80 | `result-track:9043c31f11ced258a3b103a1ff4a11261299e02f456d9558b8484f01e0aa24a1` |
| 7 | `instance` | [zero_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/zero-injective.md) | 88 | `declaration-track:c01d8a5c95f82c957e9ec3032693b0159a21ad92a5ead944f5099704e2b26e53` |
| 8 | `theorem` | [of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/of-iso.md) | 93 | `result-track:3b46588c36254d3b15add71c626c0f26511daae83f1b72d4bf184402eb41bde1` |
| 9 | `theorem` | [iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/iso-iff.md) | 100 | `result-track:4f642ac14916e96153657f73a2bec1272663af6d7e9e745a60c9b3e2ffc9a7b8` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 104 | `declaration-track:598d9ac9da8c6ed73a57bc1dfe3c4b86328cf3bb6913600820321fdfb9013365` |
| 11 | `instance` | [Type.enoughInjectives](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/type-enoughinjectives.md) | 118 | `declaration-track:0925fdada100c3c73b050894cffa67ce1e2f39cbf66c6a996606ed00ddc79667` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 128 | `declaration-track:87c9f7ac442708255a7125214566558c19955b918c577bedd4ca4a63735334ef` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 136 | `declaration-track:73ecfb84579f60b8ae1734b6075d171ebe10851a15a665b32075a2bde6a15416` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 142 | `declaration-track:8f58d7742dc9ee5ec8a0db6c14fc1d35bca1066d36b42edadddb1f4a9a158b8d` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 150 | `declaration-track:259db29385f3f5b5c285048b2902166a657daffb875ad33dced28dc606f5f436` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 157 | `declaration-track:d194e1feceaa6a07e3294613652acc07fe015a6cec07e5cfd0831812c0861cec` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance.md) | 161 | `declaration-track:082c63504c84e58a28ba8903bcc5707284df1e7e4d734564408fbf8774a1beee` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 165 | `declaration-track:a41d75f24acafbb9df72512bf1a3498611adfabd9fe2a16a97745fcaa83cea73` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 169 | `declaration-track:6c77e81035f84570536d7fc964d507dfbc2c502d5d12bad5269e20ad290d22ca` |
| 20 | `theorem` | [injective_iff_projective_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/injective-iff-projective-op.md) | 173 | `result-track:e2d857aead666908a74b841201cdb26dec085c741e96229378b6cd2e625ccc56` |
| 21 | `theorem` | [projective_iff_injective_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/projective-iff-injective-op.md) | 176 | `result-track:bdde1b6364e51441a66e484ac14c93de3c4db7f2a33fd1488013f4aa66197319` |
| 22 | `theorem` | [injective_iff_preservesEpimorphisms_yoneda_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/injective-iff-preservesepimorphisms-yoneda-obj.md) | 179 | `result-track:89f198b3aa26667a24c4faa0f0a551b1532555738f460ebdbb184c2a26c49e0d` |
| 23 | `theorem` | [injective_of_adjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/injective-of-adjoint.md) | 191 | `result-track:ecab2f23fb9522905ae331f29064c4cff4d2677be5ac26f6fd7749a29248d446` |
| 24 | `def` | [under](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/under.md) | 206 | `declaration-track:3826fdddf9d43726056d683f2208c6a2a170d3f4b3e79239cc0160a2b075769b` |
| 25 | `instance` | [injective_under](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/injective-under.md) | 209 | `declaration-track:595048264ba1752c4157c4de79790dbbabb22b339e92f89fdd49159af3384a76` |
| 26 | `def` | [ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/anonymous.md) | 215 | `declaration-track:0aeba5209c3123f2978820d3141b71848113fd0a7413fee37bd9982ac8677025` |
| 27 | `instance` | [ι_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/mono.md) | 218 | `declaration-track:fdbcaf0755223eef5b305319710ee17a4d8b894d4e8959e2c8c21e75dadacd38` |
| 28 | `def` | [syzygies](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/syzygies.md) | 228 | `declaration-track:a8e535cdf880069b58d731e7c4b70c6e0cacf9f689e2f1205e72768399fefe1a` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 233 | `declaration-track:4947a0f48a7561508cdc7b3afca266896996082d25a87090d943a6cb06eb1a72` |
| 30 | `abbrev` | [d](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/d.md) | 241 | `declaration-track:ca3f57aa6f409f9140ebc44cee7c82fc86b667dc97b25191c9fc92e629b549fa` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 248 | `declaration-track:a90fe173bdb722aa6f59fe62b8137274e94ad488f7b4c8f4b742a363531e140d` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 251 | `declaration-track:a5f3b7779f72738f932cf013215edcf1a65eaedef05bf81d3d2a245a695d7639` |
| 33 | `theorem` | [enoughProjectives_of_enoughInjectives_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/enoughprojectives-of-enoughinjectives-op.md) | 254 | `result-track:e01e9754504e6048a0a13ed433d4cfafee7002f9db1260f6b238f7380465a190` |
| 34 | `theorem` | [enoughInjectives_of_enoughProjectives_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/enoughinjectives-of-enoughprojectives-op.md) | 257 | `result-track:6bdf3b76eb08d1143291038cf096dae5ec6286b486227ff8743d0f912d06a55a` |
| 35 | `theorem` | [map_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/map-injective.md) | 266 | `result-track:9720c4c462fb2c62cc9393135596ac73f114200c96ad72d9c0432f1fcc12bdce` |
| 36 | `theorem` | [injective_of_map_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/injective-of-map-injective.md) | 275 | `result-track:fa5454efa71ec943f397c253d65d5e8503b1bcfaaf9035633391b67a079780a0` |
| 37 | `def` | [mapInjectivePresentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/mapinjectivepresentation.md) | 286 | `declaration-track:62e2666889341584df282ee57ae306b031246f2ad73b25b82e9b1ae8bc4a1055` |
| 38 | `def` | [injectivePresentationOfMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/injectivepresentationofmap.md) | 297 | `declaration-track:e9652d9218272a3d7fa2abbccb2b5ce85c559255bd7d4000f87d5691b89910c8` |
| 39 | `lemma` | [EnoughInjectives.of_adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/enoughinjectives-of-adjunction.md) | 310 | `result-track:8645aaf89eb74fde4de0b1244c5e8ca12dfd097fd60ae129f8090c509306a78d` |
| 40 | `lemma` | [EnoughInjectives.of_equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/enoughinjectives-of-equivalence.md) | 318 | `result-track:0bb006fe1e158580ad67c8ae38caccf375c15ea1408685f422908f64c1215015` |
| 41 | `theorem` | [map_injective_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/map-injective-iff.md) | 327 | `result-track:17d1e6235fc446a84cc8abd844d8dd4ad2fa29ed24a26aadad94ca885b389d35` |
| 42 | `def` | [injectivePresentationOfMapInjectivePresentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/injectivepresentationofmapinjectivepresentation.md) | 332 | `declaration-track:c51ab571efe6b65856e99332dc5d86f6c31f076a404664f15402cbeaf95bbc33` |
| 43 | `theorem` | [enoughInjectives_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveBasicNamespaced.lean/declarations/enoughinjectives-iff.md) | 336 | `result-track:f27fb8a5b51e6181576acf780476d8918278b331d2fc0ac96336c30c074d1e0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1ba9c1db4a1cc3237ab66d6783750d7e2ab076be331d5ec948ac7624e9ec9ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2386f8c536ae7c6231a5422021a39d763c637ed71d17cb667cc6c3808637da4e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2386f8c536ae7c6231a5422021a39d763c637ed71d17cb667cc6c3808637da4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
