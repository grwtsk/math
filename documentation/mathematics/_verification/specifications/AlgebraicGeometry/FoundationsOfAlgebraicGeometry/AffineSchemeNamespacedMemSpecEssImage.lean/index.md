# Verification target: Affine Scheme Namespaced Mem Spec Ess Image

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7419be8a90ea807aa3d0f0926d47c4493835a7a1",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7419be8a90ea807aa3d0f0926d47c4493835a7a1`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.GammaSpecAdjunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.OpenImmersion.Scheme` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.InvSubmonoid` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AffineScheme](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/affinescheme.md) | 58 | `declaration-track:7f501c616f2977ccdc6bd4449965dbb0146c39886b3b5b612132a88418b6c426` |
| 2 | `class` | [IsAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffine.md) | 64 | `declaration-track:30745c1b2d37e7c0c808caa898cad86a0823417c6430e8033e38689d4896c514` |
| 3 | `def` | [Scheme.isoSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/scheme-isospec.md) | 71 | `declaration-track:4bb078d3f7e8152f9a13175e91c218ce39fad349a880a4076102e8a465ba3eaa` |
| 4 | `def` | [AffineScheme.mk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/affinescheme-mk.md) | 78 | `declaration-track:7487b8552e45f438c1b0462c4c3a6f41717b92f5deb95ffc219f914f29b670d1` |
| 5 | `def` | [AffineScheme.of](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/affinescheme-of.md) | 84 | `declaration-track:67bdf9554581f74563e62b0c0afb0bfeca40d835f27d5838a7b0f0bcf3809562` |
| 6 | `def` | [AffineScheme.ofHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/affinescheme-ofhom.md) | 89 | `declaration-track:7b8b732287cc4d318387776bb44d8fca556f0b59180df6b651e7f3f480c696da` |
| 7 | `theorem` | [mem_Spec_essImage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/mem-spec-essimage.md) | 94 | `result-track:ec008acfeb6bfd9cf479e6fd80c36b8a1f5b08be286e2e2ab7656ed8abe5413a` |
| 8 | `instance` | [isAffineAffineScheme](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineaffinescheme.md) | 98 | `declaration-track:c1ddf5ffcf2dd4799e37d71a47d6911e1f7848f8975e736c3ba0b6ffbcf8342a` |
| 9 | `instance` | [SpecIsAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/specisaffine.md) | 102 | `declaration-track:101a86e3f45464feb30b7c3c6b63e4c7c4d35621d7f58711b3deb899c50ba661` |
| 10 | `theorem` | [isAffineOfIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineofiso.md) | 106 | `result-track:f886c2f6b8a9c0ba9886712e9f06bd11edadf37e79e877e25afc6e9b1f3d3486` |
| 11 | `def` | [Spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/spec.md) | 113 | `declaration-track:238268c61dcfa485c27a0378ef9be58441e0a308be62ca375ce4340496a7bbf2` |
| 12 | `instance` | [Spec_full](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/spec-full.md) | 118 | `declaration-track:0e5e7d87054021e315c867e8f1f8bb483fa9eb66bf261f2b110b917b8f25f934` |
| 13 | `instance` | [Spec_faithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/spec-faithful.md) | 121 | `declaration-track:f09024f781b7f40fe61bec9ea4203204dcac2b566023f58b4210f3af9cf976c1` |
| 14 | `instance` | [Spec_essSurj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/spec-esssurj.md) | 124 | `declaration-track:7b0ce6e4e83354ad4974485da2eb4e6d3f2eb9ee54f2230135ed961497d3d6f9` |
| 15 | `def` | [forgetToScheme](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/forgettoscheme.md) | 128 | `declaration-track:d8a3b49722b4a2ffecfa0f3c42fe0bdbc8db9b1e60699d1eccb82f48bbb90cb0` |
| 16 | `instance` | [forgetToScheme_full](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/forgettoscheme-full.md) | 133 | `declaration-track:8d10648f6efad62db6a6701908df7edb289274fbf19b84a8b2893242bad27f65` |
| 17 | `instance` | [forgetToScheme_faithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/forgettoscheme-faithful.md) | 137 | `declaration-track:3d60e32e5845c027d0bf238e2d54a21f2afe1f553765267ae46a2cbebc869203` |
| 18 | `def` | [Γ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/anonymous.md) | 141 | `declaration-track:6a40a2e38c09d381284090d1f63bc4df548309138fe8ad664ca6a4c9376aeec2` |
| 19 | `def` | [equivCommRingCat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/equivcommringcat.md) | 146 | `declaration-track:5ead4d22fac578f8ee61f6a372869a2fd18a0d968b98dff9a20db7890cea2d64` |
| 20 | `instance` | [ΓIsEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isequiv.md) | 150 | `declaration-track:5b88d95f54144cade601e4b9a8278170f28dde1fc3d80dd433d7c74e7e594568` |
| 21 | `instance` | [hasColimits](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/hascolimits.md) | 155 | `declaration-track:b0f449a9047f0019e5383e8daaac2de4fea39e4b381116c259d882cd62246ab6` |
| 22 | `instance` | [hasLimits](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/haslimits.md) | 159 | `declaration-track:07874b2fadd2220926dcb5c14f262228b77d9ea5bb92af8fd3b2763c8bd73011` |
| 23 | `instance` | [Γ_preservesLimits](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/preserveslimits.md) | 164 | `declaration-track:03d717d813a7d23c79a1f306da055ac6bc46fc63e2a6c99bddbe1087de73469b` |
| 24 | `instance` | [forgetToScheme_preservesLimits](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/forgettoscheme-preserveslimits.md) | 168 | `declaration-track:20316fddb5f8a5759c072ba86ed8c9c3170ffc461b9028db4aead03a8451e5be` |
| 25 | `def` | [IsAffineOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen.md) | 178 | `declaration-track:14e2f6b643bb4f45394a3522546d876f75bfc02fe33125dab1e78d489eb9f8b0` |
| 26 | `def` | [Scheme.affineOpens](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/scheme-affineopens.md) | 183 | `declaration-track:da604e173fac301124a18ddcf507a27e25881af4edd62d74784010da21a55361` |
| 27 | `theorem` | [rangeIsAffineOpenOfOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/rangeisaffineopenofopenimmersion.md) | 187 | `result-track:4552412b7f98cdce52704d7b0330c941f155cd180461b2cfa5e95a58bda58ded` |
| 28 | `theorem` | [topIsAffineOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/topisaffineopen.md) | 193 | `result-track:71e808414b7066e224e16d9873b30e6003a4ec875d95ccd6ebc660127ea5ff5b` |
| 29 | `instance` | [Scheme.affineCoverIsAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/scheme-affinecoverisaffine.md) | 199 | `declaration-track:917e1a6919159659426eb46e9e8790258a061cde6dfa51357ddf1d694ef097a2` |
| 30 | `instance` | [Scheme.affineBasisCoverIsAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/scheme-affinebasiscoverisaffine.md) | 204 | `declaration-track:ab2083cdb4f00fc4f1daaa95acf7e341a1d846b8847d06b9712c12df1ce16b14` |
| 31 | `theorem` | [isBasis_affine_open](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isbasis-affine-open.md) | 209 | `result-track:a845b64c6b0277351685e308f48fc80e2bfc2ff092be19aa41b59d08eafd7a2a` |
| 32 | `def` | [IsAffineOpen.fromSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-fromspec.md) | 219 | `declaration-track:984f12c3fb91424f9398ad1e704ecdfef220ce7ace89976d3aa8de97b0b047cf` |
| 33 | `instance` | [IsAffineOpen.isOpenImmersion_fromSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-isopenimmersion-fromspec.md) | 229 | `declaration-track:73f3376ce69af03d539281724295bc6e626e562d41829fe0504ead67c615253d` |
| 34 | `theorem` | [IsAffineOpen.fromSpec_range](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-fromspec-range.md) | 236 | `result-track:741bfb530c01175e171a3eeb0b6603be44c5f1616a21e261ac9a7ad1379b955c` |
| 35 | `theorem` | [IsAffineOpen.fromSpec_image_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-fromspec-image-top.md) | 246 | `result-track:d8fde5e3365de15e65cfa943afd2ef01fe2cf6117eb601a9faeccc6af5e2e27e` |
| 36 | `theorem` | [IsAffineOpen.isCompact](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-iscompact.md) | 251 | `result-track:be887ff07405042aa0a0d7883f2627883d6ac6a766965b99f404fceed0684567` |
| 37 | `theorem` | [IsAffineOpen.imageIsOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-imageisopenimmersion.md) | 259 | `result-track:c6ca9e67086ae1eb3ce63f13b592d03e65838d72119c3c72438ad4a0df623b51` |
| 38 | `theorem` | [isAffineOpen_iff_of_isOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-iff-of-isopenimmersion.md) | 269 | `result-track:7e7bf4e084f134a4f6837fe786037ad48cdb627990cfefd47f6f63e48f4fb6ac` |
| 39 | `instance` | [Scheme.quasi_compact_of_affine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/scheme-quasi-compact-of-affine.md) | 284 | `declaration-track:319979e99f9570f0ae50eb0911620df89be3735c491a53fd3f909880032d4013` |
| 40 | `theorem` | [IsAffineOpen.fromSpec_base_preimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-fromspec-base-preimage.md) | 288 | `result-track:c4180ca48bf46de75ec7fb24f2385f5087a93874db6ab396532d6aaaed314f4a` |
| 41 | `theorem` | [Scheme.Spec_map_presheaf_map_eqToHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/scheme-spec-map-presheaf-map-eqtohom.md) | 296 | `result-track:05edc8f112839231e088948141c42673ac922d4cac13dce557f627351e287cb9` |
| 42 | `theorem` | [IsAffineOpen.SpecΓIdentity_hom_app_fromSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-spec-identity-hom-app-fromspec.md) | 309 | `result-track:4b63c06c62732350a7259727556ff502f1edf1713e2b15505f1b7bc05d497860` |
| 43 | `theorem` | [IsAffineOpen.fromSpec_app_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-fromspec-app-eq.md) | 342 | `result-track:fc4ec23d06a9d5563bc14bbefc591cd3df2d267c7070909f67a803301ce743c3` |
| 44 | `theorem` | [IsAffineOpen.basicOpenIsAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-basicopenisaffine.md) | 349 | `result-track:79de3478f43b9f3797c507adbac9d0126268f763ef2d14d8ff9d46e9d5e85dca` |
| 45 | `theorem` | [IsAffineOpen.mapRestrictBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-maprestrictbasicopen.md) | 393 | `result-track:598dc0185e7692739f4975cf7277fb39dad5a4f93a7d15aa1f2429be8bfb9fc3` |
| 46 | `theorem` | [Scheme.map_PrimeSpectrum_basicOpen_of_affine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/scheme-map-primespectrum-basicopen-of-affine.md) | 405 | `result-track:3e4ac88c480e2bd0d4679a2dd06985fa8b75c75a2adeb94a242ed15e9a89f902` |
| 47 | `theorem` | [isBasis_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isbasis-basicopen.md) | 427 | `result-track:75f14750ba1c5b2549585468a4ef02b96e5b68f94c30fea253064a6c09de39e9` |
| 48 | `theorem` | [IsAffineOpen.exists_basicOpen_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-exists-basicopen-le.md) | 443 | `result-track:ba35b5c6f47591905417716e3c68338b8191e701340180b349980051de797bff` |
| 49 | `instance` | [algebra_section_section_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/algebra-section-section-basicopen.md) | 464 | `declaration-track:ed212395f8df701a8e1156546f3d342a727a3a9acd4845322c69b78554d282fa` |
| 50 | `theorem` | [IsAffineOpen.opens_map_fromSpec_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-opens-map-fromspec-basicopen.md) | 468 | `result-track:6b3ae71c30e32a338651b8275b2a58fb020983d5100dc61125b464173ab8ca70` |
| 51 | `def` | [basicOpenSectionsToAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/basicopensectionstoaffine.md) | 491 | `declaration-track:e06c5e991ea7ea74779502f33dceb4e9530ce22411f55ff7bd078953a78e1629` |
| 52 | `instance` | [basicOpenSectionsToAffine_isIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/basicopensectionstoaffine-isiso.md) | 501 | `declaration-track:e90c0a83ffb6ce61569257c2861f0e269a1a393a3c079aaccef0ec508d70a37e` |
| 53 | `theorem` | [isLocalization_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/islocalization-basicopen.md) | 510 | `result-track:2138ca0731c90e5452aae489cf5e062cbb5ff4483d931208ded7f54e65477cd0` |
| 54 | `instance` | [isLocalization_away_of_isAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/islocalization-away-of-isaffine.md) | 538 | `declaration-track:a8f265d67cd44c5c2776a67273e5e1859078112800915ff8874161996a0bc153` |
| 55 | `theorem` | [isLocalization_of_eq_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/islocalization-of-eq-basicopen.md) | 542 | `result-track:4c4bec511a5f93be12d2c63c562bfc648e64aa0efbe7ea99e738bb185213a22e` |
| 56 | `instance` | [ΓRestrictAlgebra](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/restrictalgebra.md) | 548 | `declaration-track:ee144f9a726fe28b7416e6e6bf28a1a7400d0540339a93529e28c35815d47ebb` |
| 57 | `instance` | [Γ_restrict_isLocalization](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/restrict-islocalization.md) | 553 | `declaration-track:06cf577ec6ad183d7c136ec88d92fe349f6312a6f0d6fd59ec448a7a699e538a` |
| 58 | `theorem` | [basicOpen_basicOpen_is_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/basicopen-basicopen-is-basicopen.md) | 558 | `result-track:a4778af115df7ac6f88ab3ce5b582ab535d203957989fe73f8c7cdecf28bd71d` |
| 59 | `theorem` | [exists_basicOpen_le_affine_inter](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/exists-basicopen-le-affine-inter.md) | 576 | `result-track:d210f9645aefcd607498111896ecb0fa8772abb121017795eeb0e511dd051d37` |
| 60 | `def` | [IsAffineOpen.primeIdealOf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-primeidealof.md) | 589 | `declaration-track:1ea4f324f58300dccce9dc2b82c94aae18e369dec3fa8f9077ffc85620cdf72e` |
| 61 | `theorem` | [IsAffineOpen.fromSpec_primeIdealOf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-fromspec-primeidealof.md) | 599 | `result-track:7f06fed86c7b9090c27ecc7d8059bc6550b6fd0479d8265e3d3668d3629b6011` |
| 62 | `theorem` | [IsAffineOpen.isLocalization_stalk_aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-islocalization-stalk-aux-source-edition-2.md) | 615 | `result-track:ee3529f898795fc429ddfcad966902e133ff960b72f7de78645f4fb7c92b983d` |
| 63 | `theorem` | [IsAffineOpen.isLocalization_stalk_aux'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-islocalization-stalk-aux.md) | 638 | `result-track:c0ef0496460e1d0f00e518ae703c140a003003eb2735e1831e7956f9f9c296cd` |
| 64 | `theorem` | [IsAffineOpen.isLocalization_stalk'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-islocalization-stalk.md) | 669 | `result-track:8589a383c450314293e26968d8ff2289744efbea6c5c6a5077ecca109bd9ee5e` |
| 65 | `theorem` | [IsAffineOpen.isLocalization_stalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-islocalization-stalk-source-edition-2.md) | 693 | `result-track:e3b525329d92e56db6a04972b2e368206dd483450a1020e4c8aa371bdb0bc45b` |
| 66 | `def` | [Scheme.affineBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/scheme-affinebasicopen.md) | 708 | `declaration-track:f44abcad21a7cf190c95e38bae04e62170f8cc00455d4d9bc399a82f8f4b0f92` |
| 67 | `theorem` | [IsAffineOpen.basicOpen_fromSpec_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-basicopen-fromspec-app.md) | 718 | `result-track:0d4ab4ec156d41ea0e2e02939a88c87cd987ce518fdf7ae1b92e56eb097179e6` |
| 68 | `theorem` | [IsAffineOpen.fromSpec_map_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-fromspec-map-basicopen.md) | 737 | `result-track:847622554b03f2227119599e12cd2a73a3db64d6ca1575fa459011b24a0351cc` |
| 69 | `theorem` | [IsAffineOpen.basicOpen_union_eq_self_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-basicopen-union-eq-self-iff.md) | 743 | `result-track:f1ec471a0dd4068f3e1938aab5bed5659b2fcc9080d927c9b5ad069e95980f47` |
| 70 | `theorem` | [IsAffineOpen.self_le_basicOpen_union_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/isaffineopen-self-le-basicopen-union-iff.md) | 775 | `result-track:14d2dd5ecf843908d1aa82cb96bceb049c0bfe88f6800d7dd1d9c698983800b3` |
| 71 | `theorem` | [of_affine_open_cover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/declarations/of-affine-open-cover.md) | 794 | `result-track:112a82eadfd32eab8ff2920f97b08c4e0c15676ccce66b94116952a94f251497` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=646d7670bf393adb402e02c0306fc005e20a9902e264c39bc3d3be67624430db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
