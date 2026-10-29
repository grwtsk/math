# Verification target: Covering Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dac948c572ccfdaca84fcf7883f36c11c1cc2d1",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant544b95eac88753cb8b62da947813c7bbf746c9bbb66ebe19b464e99957f9d112.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dac948c572ccfdaca84fcf7883f36c11c1cc2d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant544b95eac88753cb8b62da947813c7bbf746c9bbb66ebe19b464e99957f9d112.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant544b95eac88753cb8b62da947813c7bbf746c9bbb66ebe19b464e99957f9d112.lean.json)

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
| 1 | `abbrev` | [Quiver.Star](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-star.md) | 59 | `declaration-track:42ccc3ca7fbfd954af6a95544b7e70ea0fdd33be9cd673bfa5dcbcec8cb2875e` |
| 2 | `abbrev` | [Quiver.Star.mk](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-star-mk.md) | 63 | `declaration-track:d4b0f44abedc77ef4c759b7812ef4baf2487e6a20cc46cfbbfb435945e5fbd48` |
| 3 | `abbrev` | [Quiver.Costar](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-costar.md) | 68 | `declaration-track:841e67f2ae7144d9263922cfbfd7683d9bddd7630a86e1bd7d5e6f2503870efd` |
| 4 | `abbrev` | [Quiver.Costar.mk](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-costar-mk.md) | 72 | `declaration-track:ed92ab94b582ad0a01392f4dab18d3a52865244b529982e4fcef0fce195e9db1` |
| 5 | `def` | [Prefunctor.star](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-star.md) | 77 | `declaration-track:91228debcc4c95e360d47eab9e9e105cad1a7074cf0b4cfc3863f897689024c6` |
| 6 | `def` | [Prefunctor.costar](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-costar.md) | 82 | `declaration-track:707ed6e05d8e78e02ec0a75579e5eecb50df56f1e7160e146cd7f43a24034ff0` |
| 7 | `theorem` | [Prefunctor.star_apply](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-star-apply.md) | 86 | `result-track:9e41f0486714a8ab32c01318fa72ed4a40866914c66f494306f8fab8987f9b04` |
| 8 | `theorem` | [Prefunctor.costar_apply](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-costar-apply.md) | 91 | `result-track:9b2e5a51c7648404af68ebce532705a40ac620042ae5e014c2ed438b13d7ae38` |
| 9 | `theorem` | [Prefunctor.star_comp](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-star-comp.md) | 95 | `result-track:597f1bf2a891f3df95df015365500c7bf55191919f7e713a33972b1c4d3c0868` |
| 10 | `theorem` | [Prefunctor.costar_comp](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-costar-comp.md) | 98 | `result-track:f06ab79922b771a43723e785797d9c7fcf5b013c6cb3e0eb51c5d6cbb9a1dbf9` |
| 11 | `structure` | [Prefunctor.IsCovering](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-iscovering.md) | 102 | `declaration-track:3f4055f4a995579ab1bd574e8e99a1b3ed8f4895741b7f9c8ce5f5801d214067` |
| 12 | `theorem` | [Prefunctor.IsCovering.map_injective](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-iscovering-map-injective.md) | 107 | `result-track:1d7b883d28aca6e54a9f188a207efd815d7a8e478ac243695f8b26083f17eca0` |
| 13 | `theorem` | [Prefunctor.IsCovering.comp](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-iscovering-comp.md) | 113 | `result-track:4a15e9e3755aa289366796b3e170bc77d2f5a498f8aa62ab4c63d6590f836d04` |
| 14 | `theorem` | [Prefunctor.IsCovering.of_comp_right](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-iscovering-of-comp-right.md) | 117 | `result-track:34ebd63f49b2ead7092da53c080ba5588a9d240bd3fa50b46afc3f133d11752b` |
| 15 | `theorem` | [Prefunctor.IsCovering.of_comp_left](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-iscovering-of-comp-left.md) | 122 | `result-track:33653bb4f62f765667b4472d48dde260efb1d2a7f5ec37138c1ca85f9a37d8e5` |
| 16 | `def` | [Quiver.symmetrifyStar](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-symmetrifystar.md) | 130 | `declaration-track:80fedc7d03c0eac9a23681401778694c253db09840581ed35c81832ece89a9f5` |
| 17 | `def` | [Quiver.symmetrifyCostar](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-symmetrifycostar.md) | 136 | `declaration-track:e560cb4eecd3c8e5a5fdffe5e64d32bb755bbdd45b32fb4c42ffbce5884d447e` |
| 18 | `theorem` | [Prefunctor.symmetrifyStar](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-symmetrifystar.md) | 141 | `result-track:94f26910c3c4f3ee20910f5e6ec7507d657048886f60841f8d10c27393762bc5` |
| 19 | `theorem` | [Prefunctor.symmetrifyCostar](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-symmetrifycostar.md) | 153 | `result-track:4a8480f7bf1f54195fcd681bafc517b7c304005b9b9105dae695416add1f7f66` |
| 20 | `theorem` | [Prefunctor.IsCovering.symmetrify](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-iscovering-symmetrify.md) | 166 | `result-track:6e3afd0a2bff252f5fbf97e741a7e271bd1feadd8d6ebe5dc14da76f6b79e05c` |
| 21 | `abbrev` | [Quiver.PathStar](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-pathstar.md) | 173 | `declaration-track:9d60dbb79a3d05bf8f49f1deeebe3d3e91dee29cee598c85d66946e210deee4c` |
| 22 | `abbrev` | [Quiver.PathStar.mk](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-pathstar-mk.md) | 177 | `declaration-track:cdcb94035a89161126baf69ecd41e3afc973e2f10db2a77fd81e0d925094167f` |
| 23 | `def` | [Prefunctor.pathStar](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-pathstar.md) | 181 | `declaration-track:647a42d27530d6b0aadf3390de6e68728769e8ff5186d50d6b8cf34e98a4ef3b` |
| 24 | `theorem` | [Prefunctor.pathStar_apply](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-pathstar-apply.md) | 185 | `result-track:485eac494a463340f8116e97d656f56ae5a63c49821e8adff475150ff1b31bea` |
| 25 | `theorem` | [Prefunctor.pathStar_injective](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-pathstar-injective.md) | 189 | `result-track:33de6f112eac91305b2f4f797bc54e93ce81c62d6d1e0c0b80b1f452eede0d11` |
| 26 | `theorem` | [Prefunctor.pathStar_surjective](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-pathstar-surjective.md) | 230 | `result-track:c598cffb1252589a4f03e7dc3550031c7613d15a43c129bf0040e3d614f7c3da` |
| 27 | `theorem` | [Prefunctor.pathStar_bijective](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-pathstar-bijective.md) | 251 | `result-track:c71fdec96a2a338b1c048d64347a451072c2ebcd07b1f624b786ca42db2b1769` |
| 28 | `theorem` | [pathStar_bijective](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/pathstar-bijective.md) | 259 | `result-track:7228d539476b434c97ec4617b2ac32fd23f9d970dbb7ea2f00f12c8840a7ee40` |
| 29 | `def` | [Quiver.starEquivCostar](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-starequivcostar.md) | 271 | `declaration-track:263ae140a6650bd7fcb00384e8fa3b79ae64a6035a661a42309b2807d42c5759` |
| 30 | `theorem` | [Quiver.starEquivCostar_apply](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-starequivcostar-apply.md) | 278 | `result-track:d8776ca481ec01eeb2f0353dbd4273a56115d6cd229067f8935fc038aef66167` |
| 31 | `theorem` | [Quiver.starEquivCostar_symm_apply](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/quiver-starequivcostar-symm-apply.md) | 283 | `result-track:bffc455d88553e953dfe6c62a5689cd92f98bb3b1fa640164d43c1676826a079` |
| 32 | `theorem` | [Prefunctor.costar_conj_star](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-costar-conj-star.md) | 289 | `result-track:0aa816f764ef37d32ca1568da90d41bc7fcbf978a1d6fec6fcc21b9823ed2adb` |
| 33 | `theorem` | [Prefunctor.bijective_costar_iff_bijective_star](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-bijective-costar-iff-bijective-star.md) | 293 | `result-track:4bbc01c741837dcf41d99958fafb9a7c377dd6a7a6abb6dc3fbdc204588d699e` |
| 34 | `theorem` | [Prefunctor.isCovering_of_bijective_star](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-iscovering-of-bijective-star.md) | 297 | `result-track:2251e69bf0b9066324e75c022347ebe6a695af94e9025df849d9017760e15976` |
| 35 | `theorem` | [Prefunctor.isCovering_of_bijective_costar](../../../../../Combinatorics/GraphTheory/CoveringPublic.lean/declarations/prefunctor-iscovering-of-bijective-costar.md) | 300 | `result-track:22345b1b292f5dccc61170ee65bb8217e0e7d30f1cf8e8aa73f62e1a1d88d51c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75da5fc7c7345a379e0eb44850552b7b74a5ff0e38505364d7b663bdb390554a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant544b95eac88753cb8b62da947813c7bbf746c9bbb66ebe19b464e99957f9d112.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variant544b95eac88753cb8b62da947813c7bbf746c9bbb66ebe19b464e99957f9d112.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
