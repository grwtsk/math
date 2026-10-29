# Verification target: Foundations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "375d35c6a0db8bf9b7e20f7b0fa3008260d48fb9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Foundations/Variant96e03ad3b8037738aef29df33452afb68574bd75e4ec9d20e9deaed3687b65f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `375d35c6a0db8bf9b7e20f7b0fa3008260d48fb9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Foundations/Variant96e03ad3b8037738aef29df33452afb68574bd75e4ec9d20e9deaed3687b65f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Foundations/Variant96e03ad3b8037738aef29df33452afb68574bd75e4ec9d20e9deaed3687b65f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Foundations` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArtifactKind](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/artifactkind.md) | 14 | `declaration-track:80417e049c221fea8b99cc375bf27b7afe166bb0b27faefe79be73c7f63987e9` |
| 2 | `structure` | [ArtifactRef](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/artifactref.md) | 76 | `declaration-track:0df7f0eac2200be0c61ba764d93818c36c781964fb2406154bab146b72696720` |
| 3 | `structure` | [ValidationExecution](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/validationexecution.md) | 84 | `declaration-track:c72601c2d63e406cf23ee97518797e1e6f0210b917574cd0808f72f86dc1e107` |
| 4 | `structure` | [ValidationResult](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/validationresult.md) | 89 | `declaration-track:3f424e9a4853bdabb423b7a1343a2b00082e129f9ece13864eda1a1cb91b7f4d` |
| 5 | `structure` | [AcceptanceDecision](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/acceptancedecision.md) | 97 | `declaration-track:32dab2dc9acc09871c1f8c2ed00b976274554632be6d6b258c29593fd5136897` |
| 6 | `structure` | [TemporalInstant](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/temporalinstant.md) | 108 | `declaration-track:caffcbdc90e4d329eca6f8385c11cd9f8a8850172684701acb9a565b69b879c8` |
| 7 | `structure` | [HalfOpenTemporalInterval](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/halfopentemporalinterval.md) | 116 | `declaration-track:25504fc026a6b3f5573776d9a5c40cc8f1c9d31846ed747a6e72fa87a2a0e08f` |
| 8 | `structure` | [CommitmentAdoptionEvent](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/commitmentadoptionevent.md) | 125 | `declaration-track:4e4ff3366cdb996e7ab0efdb644bc8598e1556928061cbd9363eb26a8cf595ab` |
| 9 | `structure` | [CommitmentSupersessionEvent](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/commitmentsupersessionevent.md) | 134 | `declaration-track:69ecad7a8a65dea05b33d7fc869aa07fc3c73478af56cb77a8f8adda021464a5` |
| 10 | `structure` | [CommitmentWithdrawalEvent](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/commitmentwithdrawalevent.md) | 143 | `declaration-track:df2c88cbd1a65e97d3257b30c4f399751acb40415169ce34370448424855c8cb` |
| 11 | `inductive` | [OperationalCommitmentStatus](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/operationalcommitmentstatus.md) | 152 | `declaration-track:86f012f8fa0099df5dcbf823a8de38d4632c2957b240ea06195a6739aaa3da1c` |
| 12 | `inductive` | [OperationalCommitmentState](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/operationalcommitmentstate.md) | 164 | `declaration-track:5cf29fc832734ada8acfee13f54c8a464b443d0944c21a67df81a836876aa17b` |
| 13 | `structure` | [OperationalCommitment](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/operationalcommitment.md) | 184 | `declaration-track:18a09eccb92601275b8ef5090f69588c70dd2e3630dbf99a285915d5ab4d7450` |
| 14 | `inductive` | [BoundaryMode](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/boundarymode.md) | 206 | `declaration-track:60a2635bf46c69975506795992a5d38240f713b022be2ee1213e91c39eef6cfe` |
| 15 | `inductive` | [IntervalOrientation](../../../../../MathematicalLogicAndFoundations/SetTheory/Foundations.lean/declarations/intervalorientation.md) | 212 | `declaration-track:d71fbeb8845d9051fd60a895f65b4d48d425ae1d21b2ba718fc6a38e6521ee3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ddd1d62f231027b44cda3eca4d14c7b47b5b7dc4ea9f85166dedf49c99292bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Foundations/Variant96e03ad3b8037738aef29df33452afb68574bd75e4ec9d20e9deaed3687b65f2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Foundations/Variant96e03ad3b8037738aef29df33452afb68574bd75e4ec9d20e9deaed3687b65f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
