# Verification target: Isolation Machine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cac3b2c43913e1e73ea148ac90ba5427bd66f23",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/IsolationMachine.lean/index.md) · [Full source](../../../../Combinatorics/IsolationMachine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cac3b2c43913e1e73ea148ac90ba5427bd66f23`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.GraphIntegration` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.RHIsolation.Refinement` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RHIsolationState](../../../../Combinatorics/IsolationMachine.lean/declarations/rhisolationstate.md) | 18 | `declaration-track:d58ce6ff4cd4ac006213c002fefc0d570628b53b84e41aa4bde49c6e9a72ffff` |
| 2 | `structure` | [RHIsolationInvariant](../../../../Combinatorics/IsolationMachine.lean/declarations/rhisolationinvariant.md) | 33 | `declaration-track:0f2f9d5d0f91c7966705830b96c4286f1052f6ec0791095513cb9922a4a54602` |
| 3 | `def` | [reorderBySpectralPriority](../../../../Combinatorics/IsolationMachine.lean/declarations/reorderbyspectralpriority.md) | 74 | `declaration-track:3163744a1aa931225c9b3fd9db84fff06f340a1a88f5eabf7a78396f2be0a562` |
| 4 | `theorem` | [spectralPriority_preserves_analytic_frontier](../../../../Combinatorics/IsolationMachine.lean/declarations/spectralpriority-preserves-analytic-frontier.md) | 89 | `result-track:a8fca6f49cd7f758cf7af975a69e53b1b465d4e45ed257bc4e204f7b40ab2f57` |
| 5 | `inductive` | [RHIsolationEvent](../../../../Combinatorics/IsolationMachine.lean/declarations/rhisolationevent.md) | 116 | `declaration-track:ac8f2b13466008e6ae87bc4a049300310b4fdcc21fabe16a2b4a2164f9a777f0` |
| 6 | `def` | [RHIsolationEvent.hasCommittedAnalyticEffect](../../../../Combinatorics/IsolationMachine.lean/declarations/rhisolationevent-hascommittedanalyticeffect.md) | 133 | `declaration-track:ef6e6a1a013a49fda99e49e0ba37cf7505e68515588d2b9da928a7792b1e32ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea68549f54d809a66d403b56a97ea32bd550c4d4508e0efca9efc2681897af44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
