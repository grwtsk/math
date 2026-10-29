# Verification target: Replay Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d2bc449d95fa3c0ec680050c1183a860eb3ca70",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Replay/Variant9a95e073aa81f388d7bad9cafdb28964f4c91db48bf4dbd2558673efbea58ff1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ReplayNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/ReplayNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d2bc449d95fa3c0ec680050c1183a860eb3ca70`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Replay/Variant9a95e073aa81f388d7bad9cafdb28964f4c91db48bf4dbd2558673efbea58ff1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Replay/Variant9a95e073aa81f388d7bad9cafdb28964f4c91db48bf4dbd2558673efbea58ff1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Resolver` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutDigest](../../../../Combinatorics/ReplayNamespaced.lean/declarations/cutdigest.md) | 17 | `declaration-track:ba9d53a9b3784da9dd2fda85d22aac5326aad9c9cd4f0da70f9342a239afaa9d` |
| 2 | `def` | [resolutionDigest](../../../../Combinatorics/ReplayNamespaced.lean/declarations/resolutiondigest.md) | 28 | `declaration-track:18927339639c416d0849da61da265718a7806dd6e58a6fb3cd34d1214694571a` |
| 3 | `structure` | [CanonicallyEqualCuts](../../../../Combinatorics/ReplayNamespaced.lean/declarations/canonicallyequalcuts.md) | 34 | `declaration-track:afba5b3b03ed6f582a552a2dcdf91d32fdf9389468571e075d96e7e119ddbdd9` |
| 4 | `theorem` | [deterministic_replay](../../../../Combinatorics/ReplayNamespaced.lean/declarations/deterministic-replay.md) | 39 | `result-track:6b4d223904b60bff27bbcf5928ed25096cdf5da6d59e9726528faf7dec96aad8` |
| 5 | `structure` | [CommitAuthority](../../../../Combinatorics/ReplayNamespaced.lean/declarations/commitauthority.md) | 50 | `declaration-track:7d338f949669b52117a8313c3d9420f3ac960f972404fdab48e5f261d6afe055` |
| 6 | `structure` | [CommitState](../../../../Combinatorics/ReplayNamespaced.lean/declarations/commitstate.md) | 55 | `declaration-track:aacf6de7b5f398bc49f3b20b2c5e1adbffd25df4045cbb6468ed6b632350f735` |
| 7 | `def` | [acceptedEvent](../../../../Combinatorics/ReplayNamespaced.lean/declarations/acceptedevent.md) | 60 | `declaration-track:631538a3a956a170b714b6cc0d72f7a9815c4bc0db8afce48ab6dbcbe954a480` |
| 8 | `def` | [commitResolution](../../../../Combinatorics/ReplayNamespaced.lean/declarations/commitresolution.md) | 69 | `declaration-track:bce7f07737b3bb8510c5b0ce8c7f9e1e2d659e5b33f3f5055cc2a8c8f7899990` |
| 9 | `def` | [EventCountFor](../../../../Combinatorics/ReplayNamespaced.lean/declarations/eventcountfor.md) | 89 | `declaration-track:30098252d2a28632b760a68e4a22eb7e4db6fe0b196420d46c54305373cd9afb` |
| 10 | `theorem` | [commit_emits_at_most_one_event](../../../../Combinatorics/ReplayNamespaced.lean/declarations/commit-emits-at-most-one-event.md) | 94 | `result-track:016abf30aee4f20144d40b16cc7d8fe03bde2c8b784210ec96f7bc0b7079b3df` |
| 11 | `theorem` | [repeated_commit_is_idempotent](../../../../Combinatorics/ReplayNamespaced.lean/declarations/repeated-commit-is-idempotent.md) | 105 | `result-track:341b0aeb163d527c4142e9d1a1be84ab27adf76dc1dbe2d0c51acf895b4580bf` |
| 12 | `def` | [CommitsSolvedSemanticPayload](../../../../Combinatorics/ReplayNamespaced.lean/declarations/commitssolvedsemanticpayload.md) | 115 | `declaration-track:cf4ab32a8e6bb6983c9f17bee0e41787959b0e064d117f7f3b2291b4233e11b3` |
| 13 | `theorem` | [unknown_does_not_commit_solved_payload](../../../../Combinatorics/ReplayNamespaced.lean/declarations/unknown-does-not-commit-solved-payload.md) | 122 | `result-track:f9618d5f1d67773cdf504dad38c49c65871212c15d6f671fa5c3ba4142f0e677` |
| 14 | `def` | [DeterministicReplay](../../../../Combinatorics/ReplayNamespaced.lean/declarations/deterministicreplay.md) | 134 | `declaration-track:0b0a9e73295fec70d363ec38ba5b36f68eedb47692a347e67f4d63c766cc3334` |
| 15 | `theorem` | [semantic_tokenization_main](../../../../Combinatorics/ReplayNamespaced.lean/declarations/semantic-tokenization-main.md) | 140 | `result-track:f86a1580f1d712216f69beecef2fdde64fe939a9eea45cc44fec6f02c4c03fd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d53c5d0caf76fba8f6a0cf26809fee66f87fadc237d7f8c3960dad29d5bccb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Replay/Variant9a95e073aa81f388d7bad9cafdb28964f4c91db48bf4dbd2558673efbea58ff1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Replay/Variant9a95e073aa81f388d7bad9cafdb28964f4c91db48bf4dbd2558673efbea58ff1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
