# Verification target: Hecke Ring Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de55879d2044bc0163723f550618c888800a018a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de55879d2044bc0163723f550618c888800a018a`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean.json)

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
| 1 | `class` | [IsHeckeTriple](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/ishecketriple.md) | 83 | `declaration-track:7cbdcc50ae74b6871927f70ece6dfd5fc9e35356b9f8a2f4fa69e3d84e0a47d8` |
| 2 | `theorem` | [of_diagonal](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/of-diagonal.md) | 99 | `result-track:cf4935acce6825ca1ee2b82146838072aac0b68c57bfdfd40cac05916ca92a5c` |
| 3 | `theorem` | [mem_of_mem_left](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/mem-of-mem-left.md) | 104 | `result-track:c67d50f26caa3f9a1439fb4fd74191acf96a481847a8182693abe8368aed16b9` |
| 4 | `theorem` | [mem_of_mem_right](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/mem-of-mem-right.md) | 108 | `result-track:2d3a58c12a0f5195cb2ffca45ddbf42305bba4a5bfa902b31d4df7f40f7a7936` |
| 5 | `theorem` | [le_commensurator_left](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/le-commensurator-left.md) | 112 | `result-track:a87b794fdbad352237f04ddbffb08799162699d96b88edfbedfa3fca77c93e89` |
| 6 | `theorem` | [mem_commensurator_right](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/mem-commensurator-right.md) | 118 | `result-track:19b0e39c577d7e2697e60b16d3de9e14a37f3f0e4513d88bb4908166cbcecb2a` |
| 7 | `theorem` | [mem_commensurator_left](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/mem-commensurator-left.md) | 123 | `result-track:3a6b25e508b90d44a3809ea7272214bc92e5d99e613902b72d3d1a5d1e9fefad` |
| 8 | `theorem` | [commensurable_conjAct_right](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/commensurable-conjact-right.md) | 129 | `result-track:8bc20f946a94d2de6ad629b9dcf0ea7938d9b1b4681c8d3400ad78b8c01cdf6b` |
| 9 | `theorem` | [trans](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/trans.md) | 136 | `result-track:eec26f100cc8ab6981befc1e5bf7f2c3ba994736c608fda3d0dd3b9801ef3ad8` |
| 10 | `theorem` | [diag_left](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/diag-left.md) | 144 | `result-track:3c234ff3d5cfe1a70bb904aaa1abe6233f4ef9b7e8b0ab7406d435199a899de7` |
| 11 | `theorem` | [diag_right](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/diag-right.md) | 148 | `result-track:8e3631adf2afbc2efb367c66f2f3acf9e5293ad598ec769213b7d165c4526051` |
| 12 | `abbrev` | [HeckeCoset.setoid](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/heckecoset-setoid.md) | 160 | `declaration-track:d573c91a013c2fdf8a9d89bc641de689d54c6e383ea711ea7202bfcadb59a327` |
| 13 | `def` | [HeckeCoset](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/heckecoset.md) | 165 | `declaration-track:3cdd08745a26ee600b0d6f1a30d21d53fe4edcd598dba74e85c4e3431f405f71` |
| 14 | `def` | [mk](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/mk.md) | 172 | `declaration-track:1f34875442a2d62cf36f8a1858dcb59764f6d7fc9739482858ca0625fa2d8022` |
| 15 | `instance` | [(anonymous)](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 176 | `declaration-track:e6d3a667715243bd051785a1de5b599ed0eed1640b6d806ad01971c2f6b654e3` |
| 16 | `instance` | [(anonymous)](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 180 | `declaration-track:f9b1db1709ab33ca0a3cbc67a0d6357238391282085300968a5f15dd7afeb261` |
| 17 | `lemma` | [one_def](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/one-def.md) | 182 | `result-track:6583451808d63e0fc6796ae206a1fc58050f66ae20266b1b005cb58a1af2bf07` |
| 18 | `def` | [HeckeCosetModule](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/heckecosetmodule.md) | 191 | `declaration-track:c21dc9502a1c149dcca007366912b97f90aa56bd809c143e63667462f77b2489` |
| 19 | `abbrev` | [HeckeRing](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/heckering.md) | 197 | `declaration-track:bdb322e814ca82d2e12ec8b79feb430c7be5b5b1e2c32d4358c1f79c0cefa56c` |
| 20 | `instance` | [(anonymous)](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/instance.md) | 210 | `declaration-track:1e05df01f3dca89d9ca03cc0f4f89186b06175def75c6ca423540be2e68f0ecc` |
| 21 | `instance` | [(anonymous)](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 213 | `declaration-track:d69960902ab75e1d800d4c1981cebdaeb771bd2eec906e14c20e5e0e89a8b821` |
| 22 | `instance` | [(anonymous)](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 216 | `declaration-track:37e30f41aafc546d6ec3f35fa538e1681d8b3183bd8dbc6c278b2fba8da67a99` |
| 23 | `def` | [of](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/of.md) | 222 | `declaration-track:ca15c0984edf73ee3c379fdc7e8e2af180d471bdbe0f012521082adad351e7a8` |
| 24 | `lemma` | [of_apply](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/of-apply.md) | 227 | `result-track:46bf209226509451abf23d1f53ddc49aa0b88784e664e605e62dc8edfed62981` |
| 25 | `lemma` | [ext](../../../../NumberTheory/HeckeRingDefsNamespacedPublic.lean/declarations/ext.md) | 232 | `result-track:d64511e4c0b71ae89cd2d4a0f1916adb9cdce0a93d7eee23463115b0fd98385e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb7d2381029ca56fa6edba233b07807f841830fda3f218a128cd4f58f9ac7171 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Varianta6775e91c80e5a6967bdd5d8a2af33c350003f01873e11f6c2876a947ed5a6e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
