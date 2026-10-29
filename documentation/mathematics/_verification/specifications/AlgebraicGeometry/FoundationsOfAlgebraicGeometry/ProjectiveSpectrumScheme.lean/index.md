# Verification target: Projective Spectrum Scheme

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eee3c4e44223e35ba4e3b87bf41994db9ed08ae8",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant5f62a093de0d1fa3dbdf30f5b590ad3b6f4fb4a103c79fe5d7b73ad0ec1ffc02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eee3c4e44223e35ba4e3b87bf41994db9ed08ae8`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant5f62a093de0d1fa3dbdf30f5b590ad3b6f4fb4a103c79fe5d7b73ad0ec1ffc02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Scheme/Variant5f62a093de0d1fa3dbdf30f5b590ad3b6f4fb4a103c79fe5d7b73ad0ec1ffc02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.ProjectiveSpectrum.StructureSheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.GammaSpecAdjunction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Radical` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/macro.md) | 124 | `declaration-track:af061f54b4580178f83a61d1cbc17a29e39fd606a4309b3cf90f4b640f871961` |
| 2 | `def` | [carrier](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier.md) | 168 | `declaration-track:7f7517fb0c05bccbc095dec331443fc5dbc940635ab14a42fcf6a7b5a593e123` |
| 3 | `theorem` | [mk_mem_carrier](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/mk-mem-carrier.md) | 173 | `result-track:fbc7e8a6447f8802937da2d15bce4c0543269bfc5daa81173d68cb33fa3f7c67` |
| 4 | `theorem` | [isPrime_carrier](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/isprime-carrier.md) | 184 | `result-track:22218482c7918c7342a6e390acdba6e421abab42c24030492aed61ee4ea5ff74` |
| 5 | `def` | [toFun](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tofun.md) | 196 | `declaration-track:ccc7d5824405b277d37070d0205bc830bbbdd5376157999beb16992eed67b9f5` |
| 6 | `theorem` | [preimage_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/preimage-basicopen.md) | 204 | `result-track:dd49dc0a7b347012435d643a477ce0e0191549bd9cab6c0c1364a4af7ea8bac5` |
| 7 | `def` | [toSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec.md) | 216 | `declaration-track:22b1fa5ee79082519a39f537f6df3dd2139a3095b1d2d4cd72098eb1f461b1ad` |
| 8 | `lemma` | [toSpec_preimage_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec-preimage-basicopen-source-edition-2.md) | 227 | `result-track:eedd5a8ce055ecd0ac49860b0788395767f9739c13bb8295ceed5b6a48fc7724` |
| 9 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/macro-source-edition-3.md) | 247 | `declaration-track:d2986cf3cbb9e0b42a4a33f71c986095ad6d3a7d202f4c9a761d90bbab7193f4` |
| 10 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/macro-source-edition-2.md) | 251 | `declaration-track:c243adf5f7942708fad2733452b50602af0cff933b99ad7a7567a5e38f430b4b` |
| 11 | `def` | [carrier](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-source-edition-2.md) | 267 | `declaration-track:f86a13942dc2a2b8de1aa8a3b732118a916946e96469983507a593c5400a92db` |
| 12 | `theorem` | [mem_carrier_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/mem-carrier-iff-source-edition-2.md) | 271 | `result-track:ddc0b4a00dd4180658f0fd6babc5401473d1bea184c64a544041f625c602e9da` |
| 13 | `theorem` | [mem_carrier_iff'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/mem-carrier-iff.md) | 277 | `result-track:6f3ae7b0ece834173acd4e9d98fb953bab062f5e76992ff387c160f8e66fbd69` |
| 14 | `theorem` | [mem_carrier_iff_of_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/mem-carrier-iff-of-mem.md) | 291 | `result-track:293e6d4a72d05984951e895303a336d6330306a864a70020d9c90c80add7c22d` |
| 15 | `theorem` | [mem_carrier_iff_of_mem_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/mem-carrier-iff-of-mem-mul.md) | 304 | `result-track:8f992eb6e96ee3b478a4f37f365ec1011614df31652536514e59bd7a9d41a1b4` |
| 16 | `theorem` | [num_mem_carrier_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/num-mem-carrier-iff.md) | 316 | `result-track:c53f140d64a77f46a125ada0ea556649e3f4fcfc365196384b147302b485e155` |
| 17 | `theorem` | [carrier.add_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-add-mem.md) | 328 | `result-track:3d1531b14ff38321f0b7f528444103e3566e868c287b6407381486630c58cc9b` |
| 18 | `theorem` | [carrier.zero_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-zero-mem.md) | 382 | `result-track:a2f53e12f0ae41a9817c009cb03d6ebfef2712498eb0697eefc6368868fb3ae0` |
| 19 | `theorem` | [carrier.smul_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-smul-mem.md) | 388 | `result-track:5ab83602fd5b93ac0acf3a8829b5a30663f21103e7ac1e61e378aa1b4175bb63` |
| 20 | `def` | [carrier.asIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-asideal.md) | 419 | `declaration-track:9adc0649dc56ed1be2299f30021a86d626071f79c7011d8a1be4deb7b1e94ef4` |
| 21 | `theorem` | [carrier.asIdeal.homogeneous](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-asideal-homogeneous.md) | 426 | `result-track:8b0215d30515f71783233fd0fff1590728b33cc06adc25f4054a6ead11e8ef9d` |
| 22 | `def` | [carrier.asHomogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-ashomogeneousideal.md) | 435 | `declaration-track:4541d949f11c619cd92335e5b217bc32610273babd5eed6c589fe0d96e0d4c50` |
| 23 | `theorem` | [carrier.denom_notMem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-denom-notmem.md) | 438 | `result-track:61cbc89d67f3b7ae5f3e95745ca6c89d8924bd12c6e62aa8545c94132d61d830` |
| 24 | `theorem` | [carrier.relevant](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-relevant.md) | 451 | `result-track:8242bb16aad5916a61ebb0013e8ede3bea4eced790dd09fd9491f7f35d6ba3bd` |
| 25 | `theorem` | [carrier.asIdeal.ne_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-asideal-ne-top.md) | 454 | `result-track:9c7667e6c9e4a76a964f0a55c2b188b5352568ca97988e95cc662836b7dd98f7` |
| 26 | `theorem` | [carrier.asIdeal.prime](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/carrier-asideal-prime.md) | 457 | `result-track:ce85eab258c97c786bd7956ffc00f3271f20001c4192fda674229e72a134c9d7` |
| 27 | `def` | [toFun](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tofun-source-edition-2.md) | 479 | `declaration-track:e320430fdf04621e28383ed499b172c69de0b4e3f5d7a706ffecf0ac937af488` |
| 28 | `lemma` | [toSpec_fromSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec-fromspec.md) | 488 | `result-track:2a204636a6b33d3c809512c1d9bfd968fb4c9e2cb4842e1b41947109311ad49f` |
| 29 | `lemma` | [fromSpec_toSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/fromspec-tospec.md) | 501 | `result-track:8a997b20a03ec2a4f8e517d5f8609ee0f9429c73adbbcd472e5f5fd64e768c9b` |
| 30 | `lemma` | [toSpec_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec-injective.md) | 508 | `result-track:32a9d3e0483621dd8e3c36c433419b77a31deaa271c4697af53f9b945afe46b2` |
| 31 | `lemma` | [toSpec_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec-surjective.md) | 514 | `result-track:3b71b6558bec0589a426c86697201112c9c8612b924961c32e44c475fd11851e` |
| 32 | `lemma` | [toSpec_bijective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec-bijective.md) | 519 | `result-track:0231546b3af25bbb74175fbb374141893d5c7d8a414c67a90993e62d82953cae` |
| 33 | `lemma` | [image_basicOpen_eq_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/image-basicopen-eq-basicopen.md) | 531 | `result-track:13eb9e1bf86c1284e9b28ee657094eda909d27705e741ee00e2cb8e2a85b9bbc` |
| 34 | `def` | [fromSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/fromspec.md) | 547 | `declaration-track:42685e831054a48a8869dba2a06e484fda750cca3e0eacfc27c04bb1cc7b82e0` |
| 35 | `def` | [projIsoSpecTopComponent](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/projisospectopcomponent.md) | 573 | `declaration-track:bc66bd5331bc95fa8cea939ea4a9395256eae6bb35d0ec79420e6a981ff6a380` |
| 36 | `def` | [awayToSection](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/awaytosection.md) | 588 | `declaration-track:71df08af08f9c08126271f14b3075c8bb32f572368b61e02ed8b6b061808d8d5` |
| 37 | `lemma` | [awayToSection_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/awaytosection-germ.md) | 604 | `result-track:ca8d9f35a50e364f8e1e0ac4943b4a0f6714917e7b53b8ab0240bcab4a35835b` |
| 38 | `lemma` | [awayToSection_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/awaytosection-apply.md) | 612 | `result-track:c2b1f675191acd2e7f3b31fc5bb9c543c2bba5f46e5ae91fd6e102c73c6a854b` |
| 39 | `def` | [awayToΓ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/awayto.md) | 628 | `declaration-track:28e7a29f3a3880e38c5057869030c9a9d6aab84c22cf00b6d43f5aa31be80ada` |
| 40 | `lemma` | [awayToΓ_ΓToStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/awayto-tostalk.md) | 632 | `result-track:c1e8db34bffe8f175adf6a49e4755ababa275ab78a8f3fdf14f1dbee74c82b3e` |
| 41 | `def` | [toSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec-source-edition-2.md) | 648 | `declaration-track:cc3339b302a67a9388a21a8157d6414b83829aa80752707de148bbff98de69c3` |
| 42 | `lemma` | [toSpec_base_apply_eq_comap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec-base-apply-eq-comap.md) | 654 | `result-track:9206ce3ffa5977341c0745170671b6107ac2ef50a65a4418476a666acc5a21b2` |
| 43 | `lemma` | [toSpec_base_apply_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec-base-apply-eq.md) | 664 | `result-track:3e6693cbbc965b836f292059ead8139f3feec7a0a83741d076d5e8dc8fe73be1` |
| 44 | `lemma` | [toSpec_base_isIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec-base-isiso.md) | 675 | `result-track:19bc4332d530b104a6c39c4c8c47eabb1e1e15d90ad5927e9391ab1675bfb2d0` |
| 45 | `lemma` | [mk_mem_toSpec_base_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/mk-mem-tospec-base-apply.md) | 680 | `result-track:20014b143f92faa86abd31d6fde9dffdde9a5d25f6e4661ac40a91c23c4e5a27` |
| 46 | `lemma` | [toSpec_preimage_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tospec-preimage-basicopen.md) | 686 | `result-track:0d32171e248da8e8c54c09243c33f60f990dda03688ce8dfb696e52e1cf84ae7` |
| 47 | `lemma` | [toOpen_toSpec_val_c_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/toopen-tospec-val-c-app.md) | 695 | `result-track:f519d9bfbd272da18b9afc36224c600e0ccd28d1f1ac19960aa3f8a69e9712ff` |
| 48 | `lemma` | [toStalk_stalkMap_toSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tostalk-stalkmap-tospec.md) | 701 | `result-track:7dd504d7897c99e4e0c5a7056c9b14017100ae49bd5eb99473bc664695896bb1` |
| 49 | `lemma` | [isLocalization_atPrime](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/islocalization-atprime.md) | 716 | `result-track:88e882bd088d0a021b14b1eefa1c39d95a457fe4e664acc80fed06ce511a7c40` |
| 50 | `def` | [specStalkEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/specstalkequiv.md) | 775 | `declaration-track:8225c0195419b878cccbe14110b87e2d8b0d0fbd78406d1d2244821beb0b4106` |
| 51 | `lemma` | [toStalk_specStalkEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/tostalk-specstalkequiv.md) | 787 | `result-track:cc22e8b539909c8d9512993bc3a600a1431fb782b02d3703da943dce14c762d9` |
| 52 | `lemma` | [stalkMap_toSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/stalkmap-tospec.md) | 799 | `result-track:c4a6e3eb7ddeb1a83d322bbe34279dd7cd49b798422e24d3c05c315a5d522321` |
| 53 | `lemma` | [isIso_toSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/isiso-tospec.md) | 810 | `result-track:b76c3bcb3e4dbc9a1357dafab588e2be958c3176d2d43de0b6536b5756c0dcb0` |
| 54 | `def` | [projIsoSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/projisospec.md) | 827 | `declaration-track:07ff42b5eaea9f8bde0ac7b3192f86aacc725f17834ddbed21981c43936d0045` |
| 55 | `def` | [«Proj»](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumScheme.lean/declarations/proj.md) | 834 | `declaration-track:d7bc47bed5a76014c536fa2f3d6461d63652ec371edeaae156a0d77d1a64f489` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4abdcaab96dbb2c546d9bb0849b866a67c558a2ce8f65ec213d62e46c401619e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant5f62a093de0d1fa3dbdf30f5b590ad3b6f4fb4a103c79fe5d7b73ad0ec1ffc02.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Scheme/Variant5f62a093de0d1fa3dbdf30f5b590ad3b6f4fb4a103c79fe5d7b73ad0ec1ffc02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
