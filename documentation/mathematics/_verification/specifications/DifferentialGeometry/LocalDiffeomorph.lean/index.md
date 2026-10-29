# Verification target: Local Diffeomorph

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2e98974713c04f90bde224c81ee6a3b23f652a2",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/LocalDiffeomorph.lean/index.md) · [Full source](../../../../DifferentialGeometry/LocalDiffeomorph.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2e98974713c04f90bde224c81ee6a3b23f652a2`.

Source path: `GRWTSK/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Diffeomorph` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.IsLocalHomeomorph` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialDiffeomorph](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/partialdiffeomorph.md) | 73 | `declaration-track:d40d256143b88e7a35cafa46afffc570f65769e8e203a31b4105cac461deb7f0` |
| 2 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/instance.md) | 82 | `declaration-track:f0a0ddd6c4ac7c140aa155b3916913734e5414862c3b0c6d2c53d7af28c83f5c` |
| 3 | `def` | [Diffeomorph.toPartialDiffeomorph](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/diffeomorph-topartialdiffeomorph.md) | 88 | `declaration-track:c64b6540bc4ab1116e0672cad8e3f373c16df7bf85c21cbeede81c86ba306e39` |
| 4 | `def` | [toPartialHomeomorph](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/topartialhomeomorph.md) | 101 | `declaration-track:ce9048f4e1991332eb7e48ef29564843dffc253b27f768d7351464a60ba12930` |
| 5 | `def` | [symm](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/symm.md) | 109 | `declaration-track:cf032fcd358f2751ea87b37515022f1eb5d96c011f311bb9bed02729571ebaad` |
| 6 | `theorem` | [contMDiffOn](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/contmdiffon.md) | 116 | `result-track:13053398395bd24e86d4f628ecd511bb4f43659039fb9a1456bde6645c35c6a0` |
| 7 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/mdifferentiableon.md) | 119 | `result-track:311ea9e8584b463319d2df7d73dc6e224e9a0fb23766f8d2cb5235ad7df914b2` |
| 8 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/mdifferentiableat.md) | 122 | `result-track:dfd0f4c441a5c5b93b1fbbeb10ae210ed6364629cdce40eaedd633d6129aba4b` |
| 9 | `def` | [IsLocalDiffeomorphAt](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorphat.md) | 137 | `declaration-track:e375948d76c25b75dc132ffd1291a428e31adff2b4d94aa33f39c337b53d05d2` |
| 10 | `lemma` | [PartialDiffeomorph.isLocalDiffeomorphAt](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/partialdiffeomorph-islocaldiffeomorphat.md) | 140 | `result-track:be9b1d030f86b45bdbda0316f62a9b5eb6654f7050e094433c52c875adcf750f` |
| 11 | `def` | [localInverse](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse.md) | 151 | `declaration-track:0758313424b012b4b715c4c5d175cf663898c29614b326052c831e04d1a67f0f` |
| 12 | `lemma` | [localInverse_open_source](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-open-source.md) | 154 | `result-track:190739b3deeb891e1229361766c92ae0025006e2c970cbf6194cc95ba57d7aa0` |
| 13 | `lemma` | [localInverse_mem_source](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-mem-source.md) | 158 | `result-track:7ef75adb34ab498ca322cda12fe4a7b3b9a3a8dfd62e2f420fe1fb8e67701ac9` |
| 14 | `lemma` | [localInverse_mem_target](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-mem-target.md) | 163 | `result-track:d76113f80c958b236b7a209a05eb7bcbdfe512a6e5be2d7a8c7cda8e335d75b2` |
| 15 | `lemma` | [contmdiffOn_localInverse](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/contmdiffon-localinverse.md) | 167 | `result-track:8c2eff087c05da3db11e86142d8a0f73b2b418b9c360e1828197893eeddf212b` |
| 16 | `lemma` | [localInverse_right_inv](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-right-inv.md) | 171 | `result-track:c578e67236b8d32cbb335d28edf458e0c288affb4ffaaf84b0a193e334fa04b1` |
| 17 | `lemma` | [localInverse_eqOn_right](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-eqon-right.md) | 179 | `result-track:38725ac0ee99f63e81dac35d869ef08313b0717ce46a87ce744700255cbdb3c4` |
| 18 | `lemma` | [localInverse_eventuallyEq_right](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-eventuallyeq-right.md) | 183 | `result-track:b14ba0c1635bca8049f43b880a871414e74fd25c888d8c8689194c991252d38f` |
| 19 | `lemma` | [localInverse_left_inv](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-left-inv.md) | 189 | `result-track:07d77c335989dbe5a02920b4d9dbaa0d59313df7fda8dc087617bcfdb30c1c79` |
| 20 | `lemma` | [localInverse_eqOn_left](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-eqon-left.md) | 194 | `result-track:6fa5a0b828060017dca0058d396e7e36a3eb961ae6eaccc523d3e8d7def83c8d` |
| 21 | `lemma` | [localInverse_eventuallyEq_left](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-eventuallyeq-left.md) | 198 | `result-track:0edfaee615176581425e7746935ff060e036b1d1d8ad18525f2bb1f1534aa125` |
| 22 | `lemma` | [localInverse_isLocalDiffeomorphAt](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-islocaldiffeomorphat.md) | 203 | `result-track:85977f8414014a86503fd9c11a3c2fa733494d5f55f297646351a0b91857d207` |
| 23 | `lemma` | [localInverse_contMDiffOn](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-contmdiffon.md) | 207 | `result-track:92163edc67fd3accaf927852d6c34b4b244e9d79fe7eee758e1869cb7c6048dc` |
| 24 | `lemma` | [localInverse_contMDiffAt](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-contmdiffat.md) | 211 | `result-track:9c8aaaae2fd84d4751dd761fa99fbd6e1828086c44864acd7e0bdc250cf23e5b` |
| 25 | `lemma` | [localInverse_mdifferentiableAt](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/localinverse-mdifferentiableat.md) | 216 | `result-track:c7fba0b4a156fb698b9064e2554b3aa766ac3e9af3bc53aecf530845e0094c6d` |
| 26 | `def` | [IsLocalDiffeomorphOn](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorphon.md) | 224 | `declaration-track:2714ec773a03b4ab9b12ae7160da88d35489e98fa5f8a118ec3c7ca279bee05f` |
| 27 | `def` | [IsLocalDiffeomorph](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph.md) | 229 | `declaration-track:c527c1ee866f5a54e6e0001b30e4238966504fb08c8e3d2ef291a2ccd170bd78` |
| 28 | `lemma` | [isLocalDiffeomorphOn_iff](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorphon-iff.md) | 233 | `result-track:0a4f65d4e3efd445e2c43420ce990639dea16e9b6a3a08c711f06b1c8c60b50f` |
| 29 | `lemma` | [isLocalDiffeomorph_iff](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-iff.md) | 237 | `result-track:4d08ecd6cc20b9c833571727423817379c138bce790a3eb7e23f12b743538495` |
| 30 | `theorem` | [isLocalDiffeomorph_iff_isLocalDiffeomorphOn_univ](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-iff-islocaldiffeomorphon-univ.md) | 241 | `result-track:5994e144d08ec795485049bd5bec2c0d1d1937d42ae325d5568b1a0bf3085188` |
| 31 | `lemma` | [IsLocalDiffeomorph.isLocalDiffeomorphOn](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-islocaldiffeomorphon.md) | 246 | `result-track:dc25b922415ababe1f8d86167de1098fa3950b5f513e4fdcaa803f5713cd94fe` |
| 32 | `lemma` | [IsLocalDiffeomorphAt.contMDiffAt](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorphat-contmdiffat.md) | 256 | `result-track:6f18dd23af0c037e8cd47b7d4ab3294febc7a8307715c2ec8c8cfc1cc066be5c` |
| 33 | `lemma` | [IsLocalDiffeomorphAt.mdifferentiableAt](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorphat-mdifferentiableat.md) | 263 | `result-track:ef4c82a4eb96d05000d625b8895f39c07d58edae4637e559c42f874c8607bafc` |
| 34 | `lemma` | [IsLocalDiffeomorphOn.contMDiffOn](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorphon-contmdiffon.md) | 268 | `result-track:44df8fbce3285e968e23ebb40908a8a7fad8616fa8334d7cee2ab92965f3df3c` |
| 35 | `lemma` | [IsLocalDiffeomorphOn.mdifferentiableOn](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorphon-mdifferentiableon.md) | 273 | `result-track:25d69ad33bf2e46162436a0acb294beff50f373fd7ee98d836224ea5890b698b` |
| 36 | `lemma` | [IsLocalDiffeomorph.contMDiff](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-contmdiff.md) | 278 | `result-track:071294055c7e4ee68b19b5acf5253ac69e0cd24cc9160a9a6aac3a8f6e252b4d` |
| 37 | `lemma` | [IsLocalDiffeomorph.mdifferentiable](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-mdifferentiable.md) | 282 | `result-track:f9d80b5c784339789ef180a4e072049226653414a396c238e60219580267e9be` |
| 38 | `lemma` | [Diffeomorph.isLocalDiffeomorph](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/diffeomorph-islocaldiffeomorph.md) | 287 | `result-track:d39326175dc16cd0215739aae029ec943f14c0f80089961c69702d0a55657ba5` |
| 39 | `theorem` | [IsLocalDiffeomorphOn.isLocalHomeomorphOn](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorphon-islocalhomeomorphon.md) | 293 | `result-track:0607578463ed132bff3fa08020a2c0457ee4a9e1b28da5a6305d6a39479ccd18` |
| 40 | `theorem` | [IsLocalDiffeomorph.isLocalHomeomorph](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-islocalhomeomorph.md) | 301 | `result-track:c063274704d2b58e59c4041047d0bbeff9689ed8c49b3233757df75127a49390` |
| 41 | `lemma` | [IsLocalDiffeomorph.isOpenMap](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-isopenmap.md) | 308 | `result-track:22c02bf6fdcfd20bda9328a01402100452105b2b6f254da9b43ac232befd8e47` |
| 42 | `lemma` | [IsLocalDiffeomorph.isOpen_range](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-isopen-range.md) | 312 | `result-track:d6d1653288b2994fadba9f444643fe5c2e87314e6da51404d2ce001a883a5a86` |
| 43 | `def` | [IsLocalDiffeomorph.image](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-image.md) | 316 | `declaration-track:6f2d6d2142c182fa236a08435087d1f737330c99a97ebbe67ffa2abadeff40c5` |
| 44 | `lemma` | [IsLocalDiffeomorph.image_coe](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-image-coe.md) | 319 | `result-track:ac90fd5bc06e96076da2d12766db46a9d619a6d813781be062f4b0d69dba2ff8` |
| 45 | `def` | [IsLocalDiffeomorph.diffeomorph_of_bijective](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-diffeomorph-of-bijective.md) | 326 | `declaration-track:356ec06dadfb8129b35363a2fd6f62974ad99f61bf2509de74d55590b8984382` |
| 46 | `def` | [IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorphat-mfderivtocontinuouslinearequiv.md) | 367 | `declaration-track:9678ea95c77593dafef09372c2ccfee121d0b766039c7210d34367b135abab24` |
| 47 | `lemma` | [IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv_coe](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorphat-mfderivtocontinuouslinearequiv-coe.md) | 392 | `result-track:b5ca6dabb0d9c41b805be092edb1933b596c7c043ab8ad990fc1c733736a6220` |
| 48 | `def` | [Diffeomorph.mfderivToContinuousLinearEquiv](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/diffeomorph-mfderivtocontinuouslinearequiv.md) | 398 | `declaration-track:6316fdcdaf387a3290e99917dbd41a9d0fe8f67ac23c4cc0c07ea8509f6a3f40` |
| 49 | `lemma` | [Diffeomorph.mfderivToContinuousLinearEquiv_coe](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/diffeomorph-mfderivtocontinuouslinearequiv-coe.md) | 403 | `result-track:17b5806da7374f86b7d81299343a7b47067c3bb43419596921d224b64e45ef8a` |
| 50 | `def` | [IsLocalDiffeomorph.mfderivToContinuousLinearEquiv](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-mfderivtocontinuouslinearequiv.md) | 408 | `declaration-track:4bac7d50cecbf437a1bbd54715ccc0067c76291213a30b5a73fe805338bd8cec` |
| 51 | `lemma` | [IsLocalDiffeomorph.mfderivToContinuousLinearEquiv_coe](../../../../DifferentialGeometry/LocalDiffeomorph.lean/declarations/islocaldiffeomorph-mfderivtocontinuouslinearequiv-coe.md) | 413 | `result-track:d2bf02e9e12e92310b4a0fd4fb6ce6a52efac0102b1c80c4545e40a53220e2c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7cc42873f5e21dcc02c93aa5deb1af60014379327310d3b0edcdcbe2873be61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean","GRWTSK/_verification/specifications/Geometry/LocalDiffeomorph/Variant57a65a93d1871ceba8922297e1f55095db4b645ce49308e8c51d11db05eece45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
