# Verification target: Basic Basic List Foldl Abs Nonneg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalReal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_foldl_abs_nonneg](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/list-foldl-abs-nonneg.md) | 47 | `result-track:9ecbc13631579a1861402a7943d8ac95acd8df5d3de25bb158b1a1b2293370ca` |
| 2 | `structure` | [AffineForm](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/affineform.md) | 62 | `declaration-track:4027982708ce9873d5e5788ecf90b203e94e425197d8bbde793cb54f73cdfe19` |
| 3 | `def` | [const](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/const.md) | 71 | `declaration-track:fba0dcc7db74defb14a28a520c907c12309b735818f897c69cc98f1c1a7e805a` |
| 4 | `def` | [zero](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/zero.md) | 74 | `declaration-track:dc3a86ebb2a8a6496d9a85ef173247b3b586b911c94c27a675d709453fad45c3` |
| 5 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/instance.md) | 76 | `declaration-track:a7fa8477621d6336d88b9302096a51b2d3ff058481d083a726061f82ec7b6aad` |
| 6 | `def` | [sumAbs](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/sumabs.md) | 80 | `declaration-track:4ae16b0f7990f48b85e4438fe0bc45b5eb315a8c80f3b026ae257253b156c8db` |
| 7 | `theorem` | [sumAbs_nonneg](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/sumabs-nonneg.md) | 82 | `result-track:c0e98a06dca8db611e310c14577e44152ac4bd613ad1bc5d16988c1523b03674` |
| 8 | `def` | [deviationBound](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/deviationbound.md) | 85 | `declaration-track:ca45cef029379747708877a8978fbb4e3c61715272c57a011e7e5268496071ec` |
| 9 | `theorem` | [deviationBound_nonneg](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/deviationbound-nonneg.md) | 87 | `result-track:c096acbc719b887e593f22137d4c3bab80d93e44be5644f0d0cb02736393db13` |
| 10 | `def` | [zipWithPad](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/zipwithpad.md) | 93 | `declaration-track:741f2572d0864c0966bf666012a10498896f0efdeb84056c7ef9b830c8f5da9b` |
| 11 | `def` | [add](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/add.md) | 102 | `declaration-track:7698cf4d78ead3e21695e75d633c9ca2c243e707661b431be1318bf605e4a688` |
| 12 | `def` | [neg](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/neg.md) | 108 | `declaration-track:5646345608f2cb7a375a4355a1f719cd6847ce17a180b7a79f00a3363738b4af` |
| 13 | `def` | [sub](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/sub.md) | 114 | `declaration-track:bf3e22660b1462d554f68b0903ef442d82b276a862950cb1a32b070899ab1674` |
| 14 | `def` | [scale](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/scale.md) | 116 | `declaration-track:4013e7234e86094058cb1107146f6df60ad73b261a28bff537da96c6cda6479c` |
| 15 | `def` | [mul](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mul.md) | 124 | `declaration-track:872e53ae3678faa9cfaa9730ba25b7de09630313f25ddc1147f6b27ee8fbef21` |
| 16 | `def` | [sq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/sq.md) | 141 | `declaration-track:b4d85d5bbf2c9c9b96a1720d4b60dffad706dbea5516af172ea977beee52769a` |
| 17 | `def` | [ofInterval](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/ofinterval.md) | 157 | `declaration-track:cd77de0aa258452e061c5bb5212e0f851f27cc4dffef9ef0b7d11f08f65f66fc` |
| 18 | `def` | [toInterval](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/tointerval.md) | 163 | `declaration-track:7cc70be3ac508fb71ac51f34c64609d80be1411bba5b76b1b5c831c028f2949f` |
| 19 | `theorem` | [sub_self_c0](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/sub-self-c0.md) | 172 | `result-track:ce29358039639189fac0cd9645c5740bb2203015390a30515116fcc575b90df3` |
| 20 | `theorem` | [sub_self_radius_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/sub-self-radius-zero.md) | 176 | `result-track:02721ed03605a21fb0914afe8be906c8fd8e0d67c86280e1a48e39697909ef70` |
| 21 | `theorem` | [zipWithPad_add_neg_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/zipwithpad-add-neg-zero.md) | 180 | `result-track:542e621c9a19d365755fa6f5c6ce4c22fd64c09a734312e3f677139febb2870d` |
| 22 | `theorem` | [sub_self_coeffs_allzero](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/sub-self-coeffs-allzero.md) | 197 | `result-track:07c590c550c270ca84888ec51990bd61cca93722705089714e0886e87a151404` |
| 23 | `abbrev` | [NoiseAssignment](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/noiseassignment.md) | 204 | `declaration-track:47122cf324486b139f8bd20052c33ba97d63988393005a92c0763d43da09f50e` |
| 24 | `def` | [validNoise](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/validnoise.md) | 206 | `declaration-track:a254adf12392dd4b5afb26b570b7202511028824a22abca46dea088d8a16913b` |
| 25 | `def` | [linearSum](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/linearsum.md) | 209 | `declaration-track:3d842e3f490fb006e0aeb5ff35460bf255c408acf93b6953490106e4bcc735f9` |
| 26 | `def` | [evalLinear](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/evallinear.md) | 212 | `declaration-track:ea3c9fcedd5d5cdd879888b9d58e79faa1a36dd65440ac6c81792c6a92972e72` |
| 27 | `def` | [mem_affine](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-affine.md) | 215 | `declaration-track:94154fd3251db7092be7cac20db037f6f12de9c350ecfcfc300c49bdf5f586ec` |
| 28 | `theorem` | [linearSum_zipWithPad_add](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/linearsum-zipwithpad-add.md) | 221 | `result-track:861fdb6f85e34d6bcc91751c098942bd16947e1e0ac9f6ff105c4f17dfce45ac` |
| 29 | `theorem` | [linearSum_map_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/linearsum-map-neg.md) | 257 | `result-track:08a295011a9383375f6cce5a703acdd9a1d5c51a1fd993ea5f39c2580dead92b` |
| 30 | `theorem` | [mem_const](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-const.md) | 277 | `result-track:84a53a67bb1d2a8f4fc628675c32c993c8085191c46876bc668014de6a751316` |
| 31 | `theorem` | [linearSum_map_mul](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/linearsum-map-mul.md) | 285 | `result-track:03e037102cf03ecd1fe1bf3876f9179a71ac5bdb20d1afb79913e1195ec05eb8` |
| 32 | `theorem` | [mem_scale](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-scale.md) | 300 | `result-track:4116e1eff69f92d11333cd5a0e4bcc309594f0e821a2e5e3e55a50de1d1cd439` |
| 33 | `theorem` | [mem_add](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-add.md) | 316 | `result-track:7ea377dfcec654828d79eda59c0f780f8a481dba0a30254c78baa221b702b98b` |
| 34 | `theorem` | [mem_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-neg.md) | 337 | `result-track:0b52fa30cb1a7a5300f9cd9971e7cdc04609d040724b5e2a40da69035e0b6353` |
| 35 | `theorem` | [mem_sub](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-sub.md) | 350 | `result-track:01bdb863c4222f09bf1f8b7c097c7288212fb3c06cf7f4fafca548a0032c72e3` |
| 36 | `theorem` | [sumAbs_foldl_add](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/sumabs-foldl-add.md) | 359 | `result-track:39007c8692ad7108085f3e9ba3c6ff07a3eead9491b6460baa033b48124da85f` |
| 37 | `theorem` | [linearSum_bounded_by_sumAbs](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/linearsum-bounded-by-sumabs.md) | 374 | `result-track:273c5b340f2ebb26d0e0f92637cb529c3c9a2061e0fa72eec96de5b61be5a454` |
| 38 | `theorem` | [deviation_from_center](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/deviation-from-center.md) | 412 | `result-track:fb831dea96ac25ed52a244bdf6631ee58de906573481e7f12fdcd65d4a64a01f` |
| 39 | `theorem` | [linearSum_zipWithPad_scale](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/linearsum-zipwithpad-scale.md) | 431 | `result-track:cf5e5e4ad9409e52440fbd32752ad8e75994f2eeb8b4be5a5890da9bbacb8528` |
| 40 | `theorem` | [linearSum_bounded_weak](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/linearsum-bounded-weak.md) | 470 | `result-track:c48e69997789e923b44f194d018686269e7cdbb02a2df9e0bfc5039d7bed0b56` |
| 41 | `theorem` | [mem_mul](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-mul.md) | 502 | `result-track:6ce2b89acf14492bc3d52eb83685bf19f4a88664528d1f10e2f9d58b0f3a48cc` |
| 42 | `theorem` | [mem_sq](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-sq.md) | 573 | `result-track:f99a9a1bf2c364426c4217430b7b0e32d9417820876866b67497cddb8eb9c597` |
| 43 | `theorem` | [mem_toInterval](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-tointerval.md) | 638 | `result-track:d68cd1db92aa3145884dec76a10e05e7e6c5e793877f2a95c775ddd421fd0759` |
| 44 | `theorem` | [mem_toInterval_weak](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-tointerval-weak.md) | 675 | `result-track:c20dbc81ba6bc93c337645ba4dae60cde1b92af2173cf1bef8cc9da7b1914770` |
| 45 | `theorem` | [mem_affine_of_interval](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicListFoldlAbsNonneg.lean/declarations/mem-affine-of-interval.md) | 706 | `result-track:254455c1f401bf5d6ee1961c739ddd50fa71c6f6fb82a1e4b1e568d59823b65f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c7d999afd09878ac21ae33d5ac23fe7c82741c42b63f2d7aaece4e190c7068e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
