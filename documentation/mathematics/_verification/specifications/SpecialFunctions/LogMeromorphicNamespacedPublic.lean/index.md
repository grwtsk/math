# Verification target: Log Meromorphic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fafe191204e54d6cb1317536e05416b2747721b6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fafe191204e54d6cb1317536e05416b2747721b6`.

Source path: `GRWTSK/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeromorphicOn.intervalIntegrable_log_norm](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/declarations/meromorphicon-intervalintegrable-log-norm.md) | 54 | `result-track:8eb496aef87a2cb2146e83545e0fe9ffd989c340c1345ffa367e9c5e3d79a17f` |
| 2 | `theorem` | [MeromorphicOn.intervalIntegrable_posLog_norm](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/declarations/meromorphicon-intervalintegrable-poslog-norm.md) | 93 | `result-track:b582fa04c166239fe7839238fdd513cdb97f9489a392b7dadfacfa16b53b6bba` |
| 3 | `theorem` | [Log Meromorphic Namespaced Public](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/declarations/intervalintegrable-log.md) | 107 | `result-track:942241052c0abb971a4cb5d5987bc596d3af2a7bb14ffaa02bc811e43f97104e` |
| 4 | `theorem` | [intervalIntegrable_log_sin](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/declarations/intervalintegrable-log-sin.md) | 116 | `result-track:c1a486945b004bb195e02540d98b2a049007408aa50755d221bf96c044b79f24` |
| 5 | `theorem` | [intervalIntegrable_log_cos](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/declarations/intervalintegrable-log-cos.md) | 123 | `result-track:2e0fd153332b3f0a7b351f8337ae2be618a9c4c55f75305d6fa5a6278a7612c6` |
| 6 | `theorem` | [MeromorphicOn.circleIntegrable_log_norm](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/declarations/meromorphicon-circleintegrable-log-norm.md) | 142 | `result-track:602d744f4e4b333c8102c34c704e76be444e6bc882756b187daac56adc89275f` |
| 7 | `theorem` | [MeromorphicOn.circleIntegrable_log_norm_of_nonneg](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/declarations/meromorphicon-circleintegrable-log-norm-of-nonneg.md) | 182 | `result-track:a62e5dde7f0b6349d2883d5f00cff697a54e882eb8b12e87778e2f7ebf47e412` |
| 8 | `theorem` | [circleIntegrable_log_norm_factorizedRational](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/declarations/circleintegrable-log-norm-factorizedrational.md) | 196 | `result-track:f147981d5c56b73437470621922ee8cef591ef5bcb89e738184fb9fd43731236` |
| 9 | `theorem` | [MeromorphicOn.circleIntegrable_posLog_norm](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/declarations/meromorphicon-circleintegrable-poslog-norm.md) | 205 | `result-track:79f2028d859b0f358443f20305c58d50997461acb280b65e591d31ea53ba4fee` |
| 10 | `theorem` | [MeromorphicOn.circleIntegrable_posLog_norm_of_nonneg](../../../../SpecialFunctions/LogMeromorphicNamespacedPublic.lean/declarations/meromorphicon-circleintegrable-poslog-norm-of-nonneg.md) | 218 | `result-track:e20e6bc3e0d6199d3928dccfa1136aa79682069c446ded1804a62d8ad13b7d8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e37683d5e03c788a7e9dfcc166a6089915e70c70c7ba48b081e195f7e7342d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean","GRWTSK/_verification/specifications/Analysis/LogMeromorphic/Variant4212ddac3147f6a20a8ddd9a0edaf300d93c9a8eadad207ca51bc04bddd57b4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
