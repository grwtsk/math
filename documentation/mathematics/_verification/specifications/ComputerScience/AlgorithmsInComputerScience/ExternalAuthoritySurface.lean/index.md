# Verification target: External Authority Surface

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fba531f5fb91dac4210bdf547b7727afe0acc78f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f45787465726e616c417574686f72697479537572666163652e6c65616e/Variantf15b665ed2253b3f4f99daf8af7a6a2a53e1de276ea5b8d668f9f9c7f008d00c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fba531f5fb91dac4210bdf547b7727afe0acc78f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f45787465726e616c417574686f72697479537572666163652e6c65616e/Variantf15b665ed2253b3f4f99daf8af7a6a2a53e1de276ea5b8d668f9f9c7f008d00c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f45787465726e616c417574686f72697479537572666163652e6c65616e/Variantf15b665ed2253b3f4f99daf8af7a6a2a53e1de276ea5b8d668f9f9c7f008d00c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M4b65726e656c2f417574686f72697479476174652e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExternalSurfaceKind](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/externalsurfacekind.md) | 10 | `declaration-track:98160e371063f82d716c98fa9042751c318eeb04b1c38d60cc216957eb6ad3bd` |
| 2 | `inductive` | [CanonicalStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/canonicalstatus.md) | 33 | `declaration-track:ff0508418ffcab8d81c40a5d74ef4235cb79604f1fb016c41605a00a99add8b8` |
| 3 | `def` | [defaultExternalStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/defaultexternalstatus.md) | 50 | `declaration-track:835aa2e7e535c6ef907fa66a350afc3a7baf22101f5b3540698512de7cb564aa` |
| 4 | `structure` | [SourcePin](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/sourcepin.md) | 72 | `declaration-track:0483142fb5791f242d4db60c0e39bc4965b977a77931bcb94378457629d2be1d` |
| 5 | `structure` | [ClaimMap](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/claimmap.md) | 76 | `declaration-track:e30aa4c21f05fe000bab5e60274e57c3069336847a2e4b37c595adbcc59ba250` |
| 6 | `structure` | [ReplayWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/replaywitness.md) | 81 | `declaration-track:0dfcd537f4443f7e25820e41f6e7f4fb855e54bdb53e5bd0ced2806170ff9130` |
| 7 | `structure` | [ExternalSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/externalsurface.md) | 85 | `declaration-track:c8e2813c3e570895e135b5623aa877cf234482ded91046d56967f3e7381dbc09` |
| 8 | `def` | [sourcePinned](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/sourcepinned.md) | 93 | `declaration-track:fea36c0562cbfb2625d52af151306c42caebbbfa14f2b28739609bbbe452a928` |
| 9 | `def` | [exactClaimMapPresent](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/exactclaimmappresent.md) | 98 | `declaration-track:c7fa2e84dfaaf39d188c4123ff54089ec16367b0dbea2b3a7e7bf495ec624351` |
| 10 | `def` | [replayPassed](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/replaypassed.md) | 102 | `declaration-track:5ef7a4155d0d66ae7b59153f68876e02472a21466e9c01f8dcc545f85b008b3b` |
| 11 | `def` | [mayPromoteToTrustedImport](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/maypromotetotrustedimport.md) | 107 | `declaration-track:c4f1f498ce4f21b88304a62ab96cf6349a327db7eb05dec5ffecdf3541fa5b7c` |
| 12 | `def` | [mayPromoteToCheckedProof](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/maypromotetocheckedproof.md) | 112 | `declaration-track:587d4f0537679ad10bb82587360574ca380e66f1aadb2b07e5ca0234cab3a24c` |
| 13 | `theorem` | [arxiv_default_not_checkedProof](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/arxiv-default-not-checkedproof.md) | 119 | `result-track:7b790a53e2fa673f4e2d57a6fa63e283f80e38d0121345018c5e32351766d7a1` |
| 14 | `theorem` | [llm_output_default_not_trustedImport](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/llm-output-default-not-trustedimport.md) | 124 | `result-track:99b6e237e4d36b98803d3ee0a0f8b40f969aa4dea5d397603d582d5da3bdb2ba` |
| 15 | `theorem` | [jepa_prediction_default_not_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/jepa-prediction-default-not-authority.md) | 129 | `result-track:587777957c2f0dcaa4a38f6fcfe8ec8df20ba2545fa0bfa2e0b8203a598771bd` |
| 16 | `theorem` | [expert_review_default_not_checkedProof](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/expert-review-default-not-checkedproof.md) | 134 | `result-track:c8859281000a77e5fb8ef811b349744c2effd6c7a164d456cac45dcbac38cd48` |
| 17 | `theorem` | [arxiv_without_gate_not_checkedProof](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/arxiv-without-gate-not-checkedproof.md) | 139 | `result-track:ae02eff86b28f420f61ff33bbd7d29a976f87d5bbfb9ee59661281cd9fdb26ef` |
| 18 | `theorem` | [llm_output_without_gate_not_trustedImport](../../../../../ComputerScience/AlgorithmsInComputerScience/ExternalAuthoritySurface.lean/declarations/llm-output-without-gate-not-trustedimport.md) | 149 | `result-track:fd16b9cc1c2b8adffeddd223bad2df009d9b337f3dfc6dc477548bde7c035470` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91b03ee860ef423671f14e76b2b20d771f33016484c949d300774473d8d7a28b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f45787465726e616c417574686f72697479537572666163652e6c65616e/Variantf15b665ed2253b3f4f99daf8af7a6a2a53e1de276ea5b8d668f9f9c7f008d00c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f45787465726e616c417574686f72697479537572666163652e6c65616e/Variantf15b665ed2253b3f4f99daf8af7a6a2a53e1de276ea5b8d668f9f9c7f008d00c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
