# Verification target: Separation Profinite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cca9a9fa294e526b3e00dce3c45e10033d61bca",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SeparationProfiniteNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/SeparationProfiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cca9a9fa294e526b3e00dce3c45e10033d61bca`.

Source path: `GRWTSK/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Regular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [totallySeparatedSpace_of_t1_of_basis_clopen](../../../../GeneralTopology/SeparationProfiniteNamespaced.lean/declarations/totallyseparatedspace-of-t1-of-basis-clopen.md) | 31 | `result-track:320d9bcd479235ade6416aae355c6fa1f800aba81f1018b6f79e4d6457163df2` |
| 2 | `theorem` | [nhds_basis_clopen](../../../../GeneralTopology/SeparationProfiniteNamespaced.lean/declarations/nhds-basis-clopen.md) | 41 | `result-track:aa6e235e0597286070e1521114e7e8352650fb1281d0492028b3ed19c575738d` |
| 3 | `theorem` | [isTopologicalBasis_isClopen](../../../../GeneralTopology/SeparationProfiniteNamespaced.lean/declarations/istopologicalbasis-isclopen.md) | 64 | `result-track:63f26e6151679ff5bd831d9c715cb9414cbc6200c24fa01eb0924a609e60c09d` |
| 4 | `theorem` | [compact_exists_isClopen_in_isOpen](../../../../GeneralTopology/SeparationProfiniteNamespaced.lean/declarations/compact-exists-isclopen-in-isopen.md) | 74 | `result-track:b092852daacb7196f181e25c5cd893ca3db093830bfba1bc77c04bff94900424` |
| 5 | `theorem` | [loc_compact_Haus_tot_disc_of_zero_dim](../../../../GeneralTopology/SeparationProfiniteNamespaced.lean/declarations/loc-compact-haus-tot-disc-of-zero-dim.md) | 85 | `result-track:3dc95825873527da1372302b9137e41454e4377a17f9dc0797a84d85df912010` |
| 6 | `theorem` | [loc_compact_t2_tot_disc_iff_tot_sep](../../../../GeneralTopology/SeparationProfiniteNamespaced.lean/declarations/loc-compact-t2-tot-disc-iff-tot-sep.md) | 116 | `result-track:2693a6c4bbbfc5ae59d168e3b6695e51cf6fa1debb43baf73bad02c5a175f968` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationProfiniteNamespaced.lean/declarations/instance.md) | 127 | `declaration-track:fe2eab8c2b39539066f5e3ec651f5ddd8a98d48450f1f0c4a7f73264f8beff31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=718af843a540b44c3faa4490cdd03722aa9e5ab8fe36e3a40ccf1f5607b46ec1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
