# Verification target: Separation Profinite Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bbf7a14918ffd6933e8fedca0e83a5977d34e3c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Profinite/Variantc2b47204ec841145d0055db49de6659b3944fb70880d40d73ee9442ef8b98ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SeparationProfinitePublic.lean/index.md) · [Full source](../../../../GeneralTopology/SeparationProfinitePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bbf7a14918ffd6933e8fedca0e83a5977d34e3c`.

Source path: `GRWTSK/Topology/GeneralTopology/Profinite/Variantc2b47204ec841145d0055db49de6659b3944fb70880d40d73ee9442ef8b98ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Profinite/Variantc2b47204ec841145d0055db49de6659b3944fb70880d40d73ee9442ef8b98ae4.lean.json)

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
| 1 | `theorem` | [totallySeparatedSpace_of_t0_of_basis_clopen](../../../../GeneralTopology/SeparationProfinitePublic.lean/declarations/totallyseparatedspace-of-t0-of-basis-clopen.md) | 27 | `result-track:1740183811e37923766e5d8261b812696b9261cc5c9b2708b4fdffce80f6ec51` |
| 2 | `theorem` | [nhds_basis_clopen](../../../../GeneralTopology/SeparationProfinitePublic.lean/declarations/nhds-basis-clopen.md) | 43 | `result-track:53af7d80b5013b8b0095357b6a24dd8ab197421f9581ad35b4a380ffdbbd6e70` |
| 3 | `theorem` | [isTopologicalBasis_isClopen](../../../../GeneralTopology/SeparationProfinitePublic.lean/declarations/istopologicalbasis-isclopen.md) | 66 | `result-track:f074c91c58a2e790b8591cab6c467882b32b92f1cca159d3ca0ac18281bc929d` |
| 4 | `theorem` | [compact_exists_isClopen_in_isOpen](../../../../GeneralTopology/SeparationProfinitePublic.lean/declarations/compact-exists-isclopen-in-isopen.md) | 76 | `result-track:95f873d0831ad0cda0c987a16245ec1569af36bc48bccaffd3360bce5362c996` |
| 5 | `theorem` | [loc_compact_Haus_tot_disc_of_zero_dim](../../../../GeneralTopology/SeparationProfinitePublic.lean/declarations/loc-compact-haus-tot-disc-of-zero-dim.md) | 87 | `result-track:42ca2d5c2a79fde55450886b8bd0113d68f2ae519acddb8bf50b235b0b13c5a6` |
| 6 | `theorem` | [loc_compact_t2_tot_disc_iff_tot_sep](../../../../GeneralTopology/SeparationProfinitePublic.lean/declarations/loc-compact-t2-tot-disc-iff-tot-sep.md) | 118 | `result-track:79dddf715a75c2c7302d1e312243025a7b758ee5eeb2d16b8a7e054abb6fbec6` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationProfinitePublic.lean/declarations/instance.md) | 126 | `declaration-track:9ce71442d418d1423ce586b72f7a8cbcf9b785d54a8c25f09ff345f2e7172e54` |
| 8 | `lemma` | [exists_clopen_of_closed_subset_open](../../../../GeneralTopology/SeparationProfinitePublic.lean/declarations/exists-clopen-of-closed-subset-open.md) | 131 | `result-track:21a17ee256b82c59341110d2ec1e2e489a2ebb90387b76812eb86f9879248fc4` |
| 9 | `lemma` | [exists_clopen_partition_of_clopen_cover](../../../../GeneralTopology/SeparationProfinitePublic.lean/declarations/exists-clopen-partition-of-clopen-cover.md) | 147 | `result-track:e93bed2c1cf4d89853754b9562956bd41cc24baf259b5e541038a1cd7ca886fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b28c60a925366a1a247e88fadf694d68bdc177d693027f879dd0ae93209e52a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Profinite/Variantc2b47204ec841145d0055db49de6659b3944fb70880d40d73ee9442ef8b98ae4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Profinite/Variantc2b47204ec841145d0055db49de6659b3944fb70880d40d73ee9442ef8b98ae4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
