# Verification target: Group Action Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42292725a209cfc7224d0d6ffe490f0c90b57e63",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42292725a209cfc7224d0d6ffe490f0c90b57e63`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean.json)

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
| 1 | `lemma` | [fst_mem_orbit_of_mem_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/fst-mem-orbit-of-mem-orbit.md) | 59 | `result-track:44380139a67bde4c06a0787836e27ad73d674aa1fbb2190aec176a8c56906df0` |
| 2 | `lemma` | [snd_mem_orbit_of_mem_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/snd-mem-orbit-of-mem-orbit.md) | 65 | `result-track:594fd13ff74b03dbcd8fd58a6cde31735e55bde53ba47c6ead201910255080aa` |
| 3 | `lemma` | [Group Action Basic Namespaced Public](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/finite-mulaction-orbit.md) | 71 | `result-track:cb276063ce9d99257cb59a8347a439d38a9c4074d9f26c8fae72015fcaeda5ab` |
| 4 | `theorem` | [orbit_eq_univ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/orbit-eq-univ.md) | 77 | `result-track:66b88f27fcb6be49c075edf0057ea65506ee31ea98b9ec7238730348271dfcfb` |
| 5 | `theorem` | [subsingleton_orbit_iff_mem_fixedPoints](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/subsingleton-orbit-iff-mem-fixedpoints.md) | 87 | `result-track:f626f224faa09bad0cde4102b284dfcf0d118a80d3c670fc96812f92bd5d0f2e` |
| 6 | `theorem` | [mem_fixedPoints_iff_card_orbit_eq_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/mem-fixedpoints-iff-card-orbit-eq-one.md) | 96 | `result-track:331f7111f661cc0015703ae4554083a5d5f05115e2eab8ba620b67b07b0256eb` |
| 7 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/instance.md) | 103 | `declaration-track:240360c54c4ee3e9aadd5ef039db7799279bb6d3bd8741de4826596a91a63b31` |
| 8 | `theorem` | [smul_cancel_of_non_zero_divisor](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/smul-cancel-of-non-zero-divisor.md) | 115 | `result-track:235cca7eb1870ff93da3342ec66f3718849c3ae92d2b53d0b74555845bb287e3` |
| 9 | `theorem` | [fixedPoints_of_subsingleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/fixedpoints-of-subsingleton.md) | 125 | `result-track:352aace9479135b845e296585ad5ff7e1c9ce935b34562e0e58225d9c2a32e72` |
| 10 | `theorem` | [nontrivial_of_fixedPoints_ne_univ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/nontrivial-of-fixedpoints-ne-univ.md) | 134 | `result-track:aa3328cf3e4c2044a038f9ed1df63e2d58914e7fb6e4b0750e86da78ce2d2256` |
| 11 | `theorem` | [smul_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/smul-orbit.md) | 143 | `result-track:afe2701283db4f63a45dfd022911744c83a2646c16a399980fd0e14546e717ca` |
| 12 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 151 | `declaration-track:c570a01f0b6ff765866545575249793eef93f86a06da67869e816fa092f2fc61` |
| 13 | `lemma` | [orbitRel_subgroup_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/orbitrel-subgroup-le.md) | 159 | `result-track:663710e48eb61923cb5bc050717b0a60b94fa326bba20493cba0f63a4c7069cc` |
| 14 | `lemma` | [orbitRel_subgroupOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/orbitrel-subgroupof.md) | 163 | `result-track:6cbbcc2e86d84a4ece712e7428127040db3da5bbf0d67e2a08d8ccf8453b7e70` |
| 15 | `theorem` | [pretransitive_iff_subsingleton_quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/pretransitive-iff-subsingleton-quotient.md) | 187 | `result-track:fd94913ae7869eef5fc34b3e4fe53a3b4af6bba57285dcd43a615d01e59102bd` |
| 16 | `theorem` | [pretransitive_iff_unique_quotient_of_nonempty](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/pretransitive-iff-unique-quotient-of-nonempty.md) | 199 | `result-track:afba56553e2a83756f14f91107c2720ea3488d5b118b33ea4bce6d2019fdafed` |
| 17 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 208 | `declaration-track:299c01795b4f8ee1ad0805b5fb392c5a103d5c8686bc17a04d622be19b5272bf` |
| 18 | `lemma` | [Group Action Basic Namespaced Public](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/of-finite-mulaction-orbitrel-quotient.md) | 224 | `result-track:82fbd3869a81ed0088d93c2326fe960985f1309c99778ac69c0d39df7e4142ad` |
| 19 | `lemma` | [orbitRel_le_fst](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/orbitrel-le-fst.md) | 235 | `result-track:7942848433fb0b078e4514f45e02a18ad54c36d5e644500987ca09e20f712688` |
| 20 | `lemma` | [orbitRel_le_snd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/orbitrel-le-snd.md) | 240 | `result-track:11780b9beb4ced0685b97e82431f55c7bf8891488114f1dc6784c88e163a03dd` |
| 21 | `lemma` | [Group Action Basic Namespaced Public](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/stabilizer-eq-bot.md) | 249 | `result-track:ce3de6d421b4daf47e551d7cebe016c9be7a2ac42f0e6b49743f18e4e6d7a38a` |
| 22 | `lemma` | [Group Action Basic Namespaced Public](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/iscancelsmul-iff-stabilizer-eq-bot.md) | 254 | `result-track:fb7eae338b9eb6d93d07e5f583672ef3e9d62ac651d9055a984f4073fb01990b` |
| 23 | `theorem` | [stabilizer_smul_eq_stabilizer_map_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/stabilizer-smul-eq-stabilizer-map-conj.md) | 260 | `result-track:277ff226885180d938cfd77cf2a143deee7417de0b1f6b2c249cd3921466992d` |
| 24 | `def` | [stabilizerEquivStabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/stabilizerequivstabilizer.md) | 270 | `declaration-track:59a3bcdecd8e3a9699f89dd89644f96b2b0b2a207321112ba8e9621fbd5f4a1f` |
| 25 | `theorem` | [stabilizerEquivStabilizer_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/stabilizerequivstabilizer-apply.md) | 276 | `result-track:c443f1b42bbdefa17d738c685ba06605630fcfdf228b50ea491da2af290ad7af` |
| 26 | `theorem` | [stabilizerEquivStabilizer_symm_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/stabilizerequivstabilizer-symm-apply.md) | 281 | `result-track:f50ee15ee5932654db92fad0414950805c6a3390a57d1aaa6fc0232463ceb426` |
| 27 | `theorem` | [stabilizerEquivStabilizer_trans](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/stabilizerequivstabilizer-trans.md) | 286 | `result-track:9e9c0be836a9932f7096fe387a2d1ce7535392d0b9475151974664f8246bf2fb` |
| 28 | `theorem` | [stabilizerEquivStabilizer_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/stabilizerequivstabilizer-one.md) | 293 | `result-track:91171f762c32263a98dc81410494bca1bb19e3b3fb065546a4374baf871e3d86` |
| 29 | `theorem` | [stabilizerEquivStabilizer_symm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/stabilizerequivstabilizer-symm.md) | 298 | `result-track:e33ff56ee220649d39456b5d7afd8c65a9bd19bcb10e338ebf3be940b4145a6f` |
| 30 | `theorem` | [stabilizerEquivStabilizer_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/stabilizerequivstabilizer-inv.md) | 304 | `result-track:59c1730f604ace6356071815fabcab1a62b02c25632eb4186bb8d6845d471373` |
| 31 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/stabilizerequivstabilizeroforbitrel.md) | 311 | `declaration-track:e22dff04a234b6397bbe5bebbdca64ab142d135efd42f8555922b6a11229ba92` |
| 32 | `theorem` | [Equiv.swap_mem_stabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/equiv-swap-mem-stabilizer.md) | 326 | `result-track:3c6b87ea2c6e2df640b57da9b019010de9d5af472d53329a56bfdb3ffefbf131` |
| 33 | `theorem` | [le_stabilizer_iff_smul_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/le-stabilizer-iff-smul-le.md) | 339 | `result-track:8d50ca4b7ca85307a3fa81cab072aae99ea5a3839f68f73f105b5dbbcfb1616d` |
| 34 | `lemma` | [Module.stabilizer_units_eq_bot_of_ne_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/module-stabilizer-units-eq-bot-of-ne-zero.md) | 362 | `result-track:2158b411e75a4198dbc8e1fa579feabdf234757af9e0cc379f29da5b7e5fffa4` |
| 35 | `lemma` | [Multiplicative.mulAction_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/multiplicative-mulaction-orbit.md) | 371 | `result-track:7c5b08353d0b5d126df71d4645c7dd13dfa0e2654c2a35d8be325db3fc6d4f9b` |
| 36 | `lemma` | [Additive.mulAction_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedPublic.lean/declarations/additive-mulaction-orbit.md) | 375 | `result-track:56d617092911e024454b1161ecdb1746bf136fff975510ff6a87cd7c2893e29c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af6d1307a414e94e6103bac194155dad3acd997a42ae1857cf722e4da7a35383 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
