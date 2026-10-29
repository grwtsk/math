# Verification target: Is Closed Restrict Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3daeeeb0e4b249fa2fc33d2d44c387a102705ee3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3daeeeb0e4b249fa2fc33d2d44c387a102705ee3`.

Source path: `GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reorderRestrictProd](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/reorderrestrictprod.md) | 43 | `declaration-track:69dd007c5c5a06f2be0d22bf58ac20875ff98fb9e35dd61212410cff1082563a` |
| 2 | `lemma` | [reorderRestrictProd_of_mem](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/reorderrestrictprod-of-mem.md) | 51 | `result-track:3180f564ae5332ac0267713519997cf1f1e3e23a73511ca230122588c5131ee3` |
| 3 | `lemma` | [reorderRestrictProd_of_compl](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/reorderrestrictprod-of-compl.md) | 57 | `result-track:f41adc39de34025ed7db2ac613e5323258032d4b6e04631c400bfe33739251bf` |
| 4 | `lemma` | [restrict_compl_reorderRestrictProd](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/restrict-compl-reorderrestrictprod.md) | 63 | `result-track:9e98d79d6bda96a9a006beb85d3ead703b7d870a0172e999e16fa6239fc44610` |
| 5 | `lemma` | [continuous_reorderRestrictProd](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/continuous-reorderrestrictprod.md) | 66 | `result-track:6180a75e3a21c314db5190ccb8ad6a5867c57f781d3c70d330b1ff0338ba487b` |
| 6 | `lemma` | [reorderRestrictProd_mem_preimage_image_restrict](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/reorderrestrictprod-mem-preimage-image-restrict.md) | 74 | `result-track:c5fa0927e89ff778060bd57434e5dbfda0f9372bf3f57fbc1849af1f1038cb43` |
| 7 | `lemma` | [reorderRestrictProd_restrict_compl](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/reorderrestrictprod-restrict-compl.md) | 80 | `result-track:69bef140b04437938a61770bf6cca18b715f5b561831fd3cf8b85c0b03d45729` |
| 8 | `def` | [Is Closed Restrict Namespaced](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/preimageimagerestrict.md) | 87 | `declaration-track:89b538eb22a370b955e3ae7f520c132b7b823f196d46427dab78e710b858ac89` |
| 9 | `lemma` | [image_snd_preimageImageRestrict](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/image-snd-preimageimagerestrict.md) | 107 | `result-track:45b60b220e4b9c6f58a94b80c4801c48faffdcf9787e931818536024d74cc6a7` |
| 10 | `theorem` | [IsCompact.isClosed_image_restrict](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/iscompact-isclosed-image-restrict.md) | 129 | `result-track:1644b765a6f9098853f9ef19aaf7cc2eca1e041cc1e9d50553119eb109115c94` |
| 11 | `lemma` | [isClosedMap_restrict_of_compactSpace](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/isclosedmap-restrict-of-compactspace.md) | 139 | `result-track:89c8d051fdcdef87d2dac757c06f563078cfe203d1949cba250da78ba1bcfc93` |
| 12 | `lemma` | [IsClosed.isClosed_image_eval](../../../../GeneralTopology/IsClosedRestrictNamespaced.lean/declarations/isclosed-isclosed-image-eval.md) | 146 | `result-track:73e9781159d243f866147b27c93e844c9bc2136da7c15bdd9af23c92f35b7bb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5df3e1d5c9c70f6164781e3a413b43e7b403c53683dd59b957be4e01ce0a7c52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/IsClosedRestrict/Varianta59b4220aba9119985c9a973ff405de64e45bf9acc54fe7eca604f3589c31a9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
