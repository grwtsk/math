# Verification target: Face Lattice Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6482512e9efe335052a045672ccd65b6c861cb1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variante8a1c658d65d7251e4984be828d3a81db2b65e54dfc4eb22a2d45e023c837e38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/FaceLatticePublic.lean/index.md) · [Full source](../../../../Geometry/FaceLatticePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6482512e9efe335052a045672ccd65b6c861cb1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lattice/Variante8a1c658d65d7251e4984be828d3a81db2b65e54dfc4eb22a2d45e023c837e38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lattice/Variante8a1c658d65d7251e4984be828d3a81db2b65e54dfc4eb22a2d45e023c837e38.lean.json)

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
| 1 | `structure` | [Face](../../../../Geometry/FaceLatticePublic.lean/declarations/face.md) | 42 | `declaration-track:ed4eb6bf17d06d65d7a2e1291df1498db2be6081b37dcc5ad894d51c4a5d7875` |
| 2 | `abbrev` | [toPointedCone](../../../../Geometry/FaceLatticePublic.lean/declarations/topointedcone.md) | 55 | `declaration-track:8590a534a58ea4f4dbe47c3d431b9e7c7609c2c8d000f7978bdbfdacad40bd1c` |
| 3 | `instance` | [(anonymous)](../../../../Geometry/FaceLatticePublic.lean/declarations/instance-source-edition-9.md) | 57 | `declaration-track:e2e0e7d0ad0ee2a90acdbdba6fea4eb9f4f0dcce15f9bab59e5ad63997a080d1` |
| 4 | `instance` | [(anonymous)](../../../../Geometry/FaceLatticePublic.lean/declarations/instance-source-edition-2.md) | 59 | `declaration-track:2104523dc188d7988bff3de1afb3ce7893f9d4c480f96e7b7260efed32c80d1c` |
| 5 | `instance` | [(anonymous)](../../../../Geometry/FaceLatticePublic.lean/declarations/instance-source-edition-5.md) | 63 | `declaration-track:b537e842b9a99a6615864d83952b51f21ef0857f0478b24970be756563280c10` |
| 6 | `lemma` | [toPointedCone_le](../../../../Geometry/FaceLatticePublic.lean/declarations/topointedcone-le.md) | 65 | `result-track:c56d908cddb3a9d1142a12b531e7578dd03652aca4f35e474cbb6affbc910ae7` |
| 7 | `theorem` | [ext](../../../../Geometry/FaceLatticePublic.lean/declarations/ext.md) | 68 | `result-track:173f3ce0f5141cd6af8aa452d734237c64ef35d01a573bc12c2bf8691cbb429f` |
| 8 | `theorem` | [toPointedCone_le_toPointedCone](../../../../Geometry/FaceLatticePublic.lean/declarations/topointedcone-le-topointedcone.md) | 71 | `result-track:42287a146c99bfd9d34c6d06862b90a29e7d877d05871512ac2de023654e7cf6` |
| 9 | `theorem` | [toPointedCone_lt_toPointedCone](../../../../Geometry/FaceLatticePublic.lean/declarations/topointedcone-lt-topointedcone.md) | 75 | `result-track:311ecd44f1b51714adc7e461125989e1ac95668f0ad8f08f9d75648f8f319297` |
| 10 | `theorem` | [mem_toPointedCone](../../../../Geometry/FaceLatticePublic.lean/declarations/mem-topointedcone.md) | 79 | `result-track:4c41355d7df75b420f9da92d91de0f7ecd58b1b0c50cdf8f56ca210eed56ac41` |
| 11 | `instance` | [(anonymous)](../../../../Geometry/FaceLatticePublic.lean/declarations/instance-source-edition-3.md) | 84 | `declaration-track:5433ee81a16eec82aa0a7ef4b0470898bace687b49ce2dd5de2e8ac615f9fab8` |
| 12 | `instance` | [(anonymous)](../../../../Geometry/FaceLatticePublic.lean/declarations/instance-source-edition-7.md) | 87 | `declaration-track:da662d1d9d84e8e0c84b1e3150544921340718d579a6fb93aeb9a22b900f41ba` |
| 13 | `instance` | [(anonymous)](../../../../Geometry/FaceLatticePublic.lean/declarations/instance-source-edition-8.md) | 92 | `declaration-track:dbb7fb75ca0b3318c652950757436b2ef13edf0464479a44d5fff95286bbac3f` |
| 14 | `instance` | [(anonymous)](../../../../Geometry/FaceLatticePublic.lean/declarations/instance-source-edition-6.md) | 98 | `declaration-track:c9c5de4329702cb69a887e31c1186987823afd57cf98907de36e03939007d1e9` |
| 15 | `instance` | [(anonymous)](../../../../Geometry/FaceLatticePublic.lean/declarations/instance.md) | 110 | `declaration-track:117cd3deea976df50089d7cf76ca7296619d3742c8d75695e5e95d276d27f92f` |
| 16 | `instance` | [(anonymous)](../../../../Geometry/FaceLatticePublic.lean/declarations/instance-source-edition-4.md) | 115 | `declaration-track:67a7c55c84ffcde6b64a0f3c68d28e9a93cfce50f6c978c77fe22a4e5732c1b0` |
| 17 | `theorem` | [lineal_eq_bot](../../../../Geometry/FaceLatticePublic.lean/declarations/lineal-eq-bot.md) | 129 | `result-track:c886f1311549a8452425ece101d53779442267208aeeede20a7b3c36d3c88427` |
| 18 | `def` | [prod](../../../../Geometry/FaceLatticePublic.lean/declarations/prod.md) | 140 | `declaration-track:ea3589c3ee96c384ae1fd13ed9dd0ab935fb602bafe97ca4a8b05e00fda655ec` |
| 19 | `def` | [fst](../../../../Geometry/FaceLatticePublic.lean/declarations/fst.md) | 143 | `declaration-track:58ff2b953eef7b8e6a19bff69ff8cf0be695244f33080753c6455b53b6def418` |
| 20 | `def` | [snd](../../../../Geometry/FaceLatticePublic.lean/declarations/snd.md) | 146 | `declaration-track:67b7e3a5f24821cf0cf18e6a0f127a869986d79aa0616b9c8fa8c8fbeefcbc6d` |
| 21 | `theorem` | [fst_prod](../../../../Geometry/FaceLatticePublic.lean/declarations/fst-prod.md) | 149 | `result-track:ffdaf48876211cad33d3015d39203de753bccce07423f45b6783ed3e6b5e655a` |
| 22 | `theorem` | [snd_prod](../../../../Geometry/FaceLatticePublic.lean/declarations/snd-prod.md) | 154 | `result-track:be87b012419105dda6a5bde56db7c5b33b9c3221e7afb96a8b7da958be5bd2fa` |
| 23 | `theorem` | [fst_prod_snd](../../../../Geometry/FaceLatticePublic.lean/declarations/fst-prod-snd.md) | 158 | `result-track:1804670ab51c4da8dc305ff8633d8dd468fd85c67024c70ef4ec9a8b93e66c2a` |
| 24 | `theorem` | [prod_mono](../../../../Geometry/FaceLatticePublic.lean/declarations/prod-mono.md) | 174 | `result-track:b2e2946253619ca32140e2e31adbbfbf4f5f6b0d0152e3d667942c55099c48d3` |
| 25 | `def` | [prodOrderIso](../../../../Geometry/FaceLatticePublic.lean/declarations/prodorderiso.md) | 180 | `declaration-track:1d9108244247d66941a566686d5fb48decacb367f00d29ee7dedc3bfd4eac115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3bb06b8c3ba0bd80c86f58f4e33088f853e196c511beb69e3b35d9353e5d0ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Lattice/Variante8a1c658d65d7251e4984be828d3a81db2b65e54dfc4eb22a2d45e023c837e38.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Lattice/Variante8a1c658d65d7251e4984be828d3a81db2b65e54dfc4eb22a2d45e023c837e38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
