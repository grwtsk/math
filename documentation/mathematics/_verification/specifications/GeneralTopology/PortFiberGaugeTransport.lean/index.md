# Verification target: GRWTSK.Interfaces.PortFiberGaugeTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a42301b8476e0e9f013ef31f6bddba4a596f6c35",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberGaugeTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PortFiberGaugeTransport.lean/index.md) · [Full source](../../../../GeneralTopology/PortFiberGaugeTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a42301b8476e0e9f013ef31f6bddba4a596f6c35`.

Source path: `GRWTSK/Interfaces/PortFiberGaugeTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberGaugeTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberLineBundle`](../../../../GeneralTopology/PortFiberLineBundle.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicLineGaugePort`](../../../../OperatorTheory/HolomorphicLineGaugePort.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AddedIndex](../../../../GeneralTopology/PortFiberGaugeTransport.lean/declarations/addedindex.md) | 24 | `declaration-track:03b301b3cf10e0240d29e93aba32d7c68dc1fa1a9b8ddbc7f06c67c3fa32226c` |
| 2 | `def` | [AddedClaim](../../../../GeneralTopology/PortFiberGaugeTransport.lean/declarations/addedclaim.md) | 34 | `declaration-track:9dcd4f185ceba33cd6e950367a5e0e5627d6e8802b82a1e8fac16a402f9f0a07` |
| 3 | `theorem` | [addedClaim_proof](../../../../GeneralTopology/PortFiberGaugeTransport.lean/declarations/addedclaim-proof.md) | 68 | `result-track:5057c46f3473ef484fabf7704033962f95fdacda6e9dbae430717d102e418ebd` |
| 4 | `def` | [portfolio](../../../../GeneralTopology/PortFiberGaugeTransport.lean/declarations/portfolio.md) | 92 | `declaration-track:f662a0161b4708d6fd025f8c8d281349699e26c515e2b3be8de7d69e585140eb` |
| 5 | `def` | [architecture](../../../../GeneralTopology/PortFiberGaugeTransport.lean/declarations/architecture.md) | 95 | `declaration-track:718453caa2c49563a48cb99a32b18cb59b705b8d7146524f65cbaf03899b4258` |
| 6 | `abbrev` | [PreviousIndex](../../../../GeneralTopology/PortFiberGaugeTransport.lean/declarations/previousindex.md) | 99 | `declaration-track:a265299591cf786cf35143f91f89dfd16973bdcd8c378bd9bbd9fb7c992f43ee` |
| 7 | `theorem` | [original_branch_unchanged](../../../../GeneralTopology/PortFiberGaugeTransport.lean/declarations/original-branch-unchanged.md) | 103 | `result-track:508181c564e3945d66884cd8029f609d685bb88238bcbc0ec1bd50635c9a2743` |
| 8 | `theorem` | [new_branch_proved](../../../../GeneralTopology/PortFiberGaugeTransport.lean/declarations/new-branch-proved.md) | 109 | `result-track:cf9da5d4db322f18a0a8b0db31c35b8b1b9dd11c20688b581f8d7dd57c033447` |
| 9 | `theorem` | [target_unchanged](../../../../GeneralTopology/PortFiberGaugeTransport.lean/declarations/target-unchanged.md) | 114 | `result-track:537907e43ce4254c5f740f0bbe59c237593d6229c4d1378d53b715d020527ae7` |
| 10 | `theorem` | [retarget_preserves_new](../../../../GeneralTopology/PortFiberGaugeTransport.lean/declarations/retarget-preserves-new.md) | 119 | `result-track:ca53b37902f084e4b6641bc19e340120edabff14b1013b28cea562a3cad7d574` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb3d4b423941415ebcfbc02b71a4916c749c3ac98fc979c7221942a72546161d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Interfaces/PortFiberGaugeTransport.lean","GRWTSK/_verification/specifications/Analysis/OperatorTheory/PortFiberGaugeTransport.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
