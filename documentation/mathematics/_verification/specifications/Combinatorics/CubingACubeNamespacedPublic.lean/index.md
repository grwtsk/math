# Verification target: Cubing ACube Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "665ab04f8dd696df288baad6819bd671f1607043",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `665ab04f8dd696df288baad6819bd671f1607043`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean.json)

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
| 1 | `theorem` | [Ico_lemma](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/ico-lemma.md) | 48 | `result-track:fe0d4569699708d58a891baa033a1d43a2539cc2f4caf44eb25bce8606b90a13` |
| 2 | `structure` | [Cube](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/cube.md) | 60 | `declaration-track:6bc4584cd7c9857c6a9dcac38b8f84265e34afc95d03542399e835359136a1bc` |
| 3 | `theorem` | [hw'](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/hw.md) | 67 | `result-track:e6352c1e8ca88473495dc1e3afea62556617d6cfafc48d4bab01f6ab19b4de96` |
| 4 | `def` | [side](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/side.md) | 71 | `declaration-track:171003aad440e66a21c1b62004297d15ac5d11ea01694bdd72bababbf77bc961` |
| 5 | `theorem` | [b_mem_side](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/b-mem-side.md) | 75 | `result-track:00a3990023319a12c8fb8a4976f054d293107472f37b45aa5831146e3ca2b1b9` |
| 6 | `def` | [toSet](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/toset.md) | 77 | `declaration-track:5f0f0990818af6981bef0815d2d604744ea089240b48e3323f89c1b2e165ef4f` |
| 7 | `theorem` | [side_nonempty](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/side-nonempty.md) | 80 | `result-track:22a94f81318df3753a238e05c906cd1c43eec9bf820206f6f58c422799db1851` |
| 8 | `theorem` | [univ_pi_side](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/univ-pi-side.md) | 82 | `result-track:760476538c638f51a85afd29a2037eb8f26cc4e4717f254c0a87bf80baf21db3` |
| 9 | `theorem` | [toSet_subset](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/toset-subset.md) | 85 | `result-track:0eeb52c3319b1953d7675b02454e8db498247b938f6a19b00a8342494f27ce6e` |
| 10 | `theorem` | [toSet_disjoint](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/toset-disjoint.md) | 89 | `result-track:c34f2de8e3eb60c92cec675255b8574524d08c262137eecded52afa3d81223ad` |
| 11 | `theorem` | [b_mem_toSet](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/b-mem-toset.md) | 93 | `result-track:b6ed233a7eee70b421e6248973c9c9d43579e5e62d9b2555739b3c213669916d` |
| 12 | `def` | [tail](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/tail.md) | 95 | `declaration-track:7256ffa22074bd56e387b5a16e8f98018017bec7c3218c7e405bc81a5034543a` |
| 13 | `theorem` | [side_tail](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/side-tail.md) | 98 | `result-track:dc7bba337133d132ac55fb5da1192020e1dfa155872ffc080126cab245ad6c84` |
| 14 | `def` | [bottom](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/bottom.md) | 101 | `declaration-track:1c37ebd507f212c45edb21565da8a5eaa2cba56a73ba53aa6d1711e869d7dbbf` |
| 15 | `theorem` | [b_mem_bottom](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/b-mem-bottom.md) | 104 | `result-track:de30f965dbaf1dd57d7eae7ac6ad505c8f1a374bf51b8101a02368a15089dbf1` |
| 16 | `def` | [xm](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/xm.md) | 107 | `declaration-track:72612d0c75293cb87e625220c15d500f4b2095dd49557e439e923d13a3a4abde` |
| 17 | `theorem` | [b_lt_xm](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/b-lt-xm.md) | 110 | `result-track:53242cbed6e4c4d5a5be62994976d3d78411a0639222f72d4da3cc56da5ebd48` |
| 18 | `theorem` | [b_ne_xm](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/b-ne-xm.md) | 112 | `result-track:d8b62d1fd90e777cdc3fe044aad8435c31bf669b8c1b354cbaa186f19acfd966` |
| 19 | `def` | [shiftUp](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/shiftup.md) | 115 | `declaration-track:8c679d88e61607ae49f57dad78d5f24ca0abd41e4dfb3a8db10bacffdab503dd` |
| 20 | `theorem` | [tail_shiftUp](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/tail-shiftup.md) | 119 | `result-track:c5c2486fea38f1e86aeff0646f07669143d63671a8511e51346c4448d05e2b29` |
| 21 | `theorem` | [head_shiftUp](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/head-shiftup.md) | 122 | `result-track:45466b7afb450870183a8268da11ffceda8e5f64117454182ea145f9eefd15a3` |
| 22 | `def` | [unitCube](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/unitcube.md) | 125 | `declaration-track:6983c8cc46cd427077642bd50dc6106e42249f17268f6bcaa52181ab999f3d8b` |
| 23 | `theorem` | [side_unitCube](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/side-unitcube.md) | 129 | `result-track:5a6fee7a7eebb074885039563bc5337ea89630c4b83e7e457915c699c40436d5` |
| 24 | `structure` | [Correct](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/correct.md) | 139 | `declaration-track:5481a541d6dd3b16abaa35fe4f2ca7e1a8a4daa33325a6751e752b928bef4c23` |
| 25 | `theorem` | [toSet_subset_unitCube](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/toset-subset-unitcube.md) | 150 | `result-track:9e66cd5396f8a3a464965751b0edf2634edb7e4d91197f522f068d9bb0ce87ff` |
| 26 | `theorem` | [side_subset](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/side-subset.md) | 153 | `result-track:acf8c9a59e24a040f4555cb3d64f8f5681e5a9c325addc7b8f9cfe527c202223` |
| 27 | `theorem` | [zero_le_of_mem_side](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/zero-le-of-mem-side.md) | 156 | `result-track:7f6fe3d022e36243ca7e3cc5c6044dcfceda02ccca35875007ca52e4c035584a` |
| 28 | `theorem` | [zero_le_of_mem](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/zero-le-of-mem.md) | 159 | `result-track:0a435f1c0f9c703bb8173e65f51d043606e6ea83baf695ca73d427c5d079bb90` |
| 29 | `theorem` | [zero_le_b](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/zero-le-b.md) | 162 | `result-track:511b493f2504c2e0665f8aef4bef11e1b351e2c1aa5d46597bc2e09d7e04972b` |
| 30 | `theorem` | [b_add_w_le_one](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/b-add-w-le-one.md) | 165 | `result-track:b41385e4e6c85b9c9e13072b67b6cb48e3dc0adc55d0d01eef7ed2ef4a48ad71` |
| 31 | `theorem` | [nontrivial_fin](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/nontrivial-fin.md) | 171 | `result-track:f4faa4468b802b26b737552694b1ab85eb0eb92f1ba9e285d889a4a83e0a80cc` |
| 32 | `theorem` | [w_ne_one](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/w-ne-one.md) | 175 | `result-track:1e28e2e91cf0d81bc6d2429bba8f7f0a6cdd08dc090679855df555c8d56203bd` |
| 33 | `theorem` | [shiftUp_bottom_subset_bottoms](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/shiftup-bottom-subset-bottoms.md) | 193 | `result-track:d82b2fda19f877801bf7be37c1e12b8fa6e781cd8896a065c831c359ce786615` |
| 34 | `def` | [Valley](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/valley.md) | 225 | `declaration-track:0a9189cfdd6eec394c59b614dd9d7f879f5111f28a1cc75385cc4f3e3fca2fb3` |
| 35 | `theorem` | [valley_unitCube](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/valley-unitcube.md) | 234 | `result-track:da5f4d64a9eec3f7e6afbc5f2734e024d8ee1c7df7ec2bacf1ca942cae773ec8` |
| 36 | `def` | [bcubes](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/bcubes.md) | 255 | `declaration-track:6b7e52a6b7865efaa0dbc9bade454bb1a07dd2c0af0ba3491c11354b0a8a1315` |
| 37 | `def` | [OnBoundary](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/onboundary.md) | 259 | `declaration-track:cc4a7ee94018b56cb442bc31656061787b483bea10aa340c072b81c238b7a49b` |
| 38 | `theorem` | [tail_sub](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/tail-sub.md) | 262 | `result-track:5d01bc818d2231e2287e94489e3a6f9dc28e3faa0bef77bf5d9ed46353a92b2b` |
| 39 | `theorem` | [bottom_mem_side](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/bottom-mem-side.md) | 265 | `result-track:809bdca286bb75ab6b4474f4796354effd8081a29e939b5add0fd389105e7f8e` |
| 40 | `theorem` | [b_le_b](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/b-le-b.md) | 268 | `result-track:cb35c31253cfbe3ac2a409f72989f0abb5279cffcef498aa1b36208eefe2b483` |
| 41 | `theorem` | [t_le_t](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/t-le-t.md) | 271 | `result-track:a17c9abaa8474af2a6a737b3a26db47a06f7619e55a894d39a1b80879261b759` |
| 42 | `theorem` | [w_lt_w](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/w-lt-w.md) | 281 | `result-track:826d2ff643da2f6f35a74b4bfb24be855105034688b7140441c3153c194ddcab` |
| 43 | `theorem` | [nontrivial_bcubes](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/nontrivial-bcubes.md) | 288 | `result-track:a91cef779365c088dedc39ebb8dc16d8e13192a992bbecd90e903f3606c10a87` |
| 44 | `theorem` | [nonempty_bcubes](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/nonempty-bcubes.md) | 314 | `result-track:045fa4504c2e1d7cd70e434fe29a4950ff09c5c97bb81d1344eadd688041d33a` |
| 45 | `theorem` | [exists_mi](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/exists-mi.md) | 320 | `result-track:b1ecddc26684f9ae85f0d047215e7e911f095d76ce8b98d9a8a92e4dc95f0205` |
| 46 | `def` | [mi](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/mi.md) | 324 | `declaration-track:c526bd00c6ab5150e5ffbff3ecd9f53face6e320516c8f5817b58ecb7fa3d0a0` |
| 47 | `theorem` | [mi_mem_bcubes](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/mi-mem-bcubes.md) | 329 | `result-track:6922c2c59f9ace69d8f2b3f034913959cb091a844f22252d200f890f2be8e18b` |
| 48 | `theorem` | [mi_minimal](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/mi-minimal.md) | 332 | `result-track:5f350b7ff16728d30aab974f13a49b718bbb805854e5b6db5affbd52e80bb8d9` |
| 49 | `theorem` | [mi_strict_minimal](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/mi-strict-minimal.md) | 335 | `result-track:b594c7a47ed6cc4950444b1322a75134fa0facda1ee3f8449fa088949e3dc526` |
| 50 | `theorem` | [mi_xm_ne_one](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/mi-xm-ne-one.md) | 340 | `result-track:2d8573f7475cfc3e1ca88ff0983f429be3100e4881ee22a8d91bafbb8192f661` |
| 51 | `theorem` | [smallest_onBoundary](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/smallest-onboundary.md) | 353 | `result-track:82178ecf91189a7f4fae01ceedf86a5fb5fe221aad934a98833a0995c5fd0588` |
| 52 | `theorem` | [mi_not_onBoundary](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/mi-not-onboundary.md) | 390 | `result-track:2c79f7d47dd25fc90d2509158ddf959c205a509c8b922f39a6f5a3a1625310e0` |
| 53 | `theorem` | [mi_not_onBoundary'](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/mi-not-onboundary-source-edition-2.md) | 447 | `result-track:7832a747692860048863f6b2d4bf4b396d92b161f7bf6525737468bde3cae650` |
| 54 | `theorem` | [valley_mi](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/valley-mi.md) | 460 | `result-track:960d6bdcce5f3fb7d92bdcb0c171d4fef6fb968fe829167bfac11b96c710c3d5` |
| 55 | `def` | [sequenceOfCubes](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/sequenceofcubes.md) | 516 | `declaration-track:a6627014062dd10e58be2a58e333ba73ae675b90d5615a20e8b565f4491dfd05` |
| 56 | `def` | [decreasingSequence](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/decreasingsequence.md) | 524 | `declaration-track:30636ace44b774c5b20d3ac96d6981c0caa2b6adf539e73a24e9b4ef2cf56070` |
| 57 | `theorem` | [strictAnti_sequenceOfCubes](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/strictanti-sequenceofcubes.md) | 532 | `result-track:edf7ad25fc656554c47d636091da209c23346d5bfff89e314d0dfc0d6879d249` |
| 58 | `theorem` | [injective_sequenceOfCubes](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/injective-sequenceofcubes.md) | 537 | `result-track:1ecddf899d081ed7211dfbb8e03a540619010caaae7fbfe7e905abf17d3ba8b9` |
| 59 | `theorem` | [not_correct](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/not-correct.md) | 542 | `result-track:306a18d6242186aa3cba7bf5da96c53a24dc6ab27119c6d929030ae3b33ff5f9` |
| 60 | `theorem` | [cannot_cube_a_cube](../../../../Combinatorics/CubingACubeNamespacedPublic.lean/declarations/cannot-cube-a-cube.md) | 546 | `result-track:b8ee7c2b382a337c3ecac416c6e2bec0a2ef574f91490cde18d1a74ab9191210` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3286f99319a82db0432174910c39d589202145028c1951e933e42bc80af26695 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
