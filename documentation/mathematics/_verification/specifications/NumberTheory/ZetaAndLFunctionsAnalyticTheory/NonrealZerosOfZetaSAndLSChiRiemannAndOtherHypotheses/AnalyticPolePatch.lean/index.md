# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.AnalyticPolePatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f599b2e76fac8bec239b74e4f1c2f7a5ae11951f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/AnalyticPolePatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f599b2e76fac8bec239b74e4f1c2f7a5ae11951f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/AnalyticPolePatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/AnalyticPolePatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.MirrorPatchDescent`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPatchDescent.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPolePatch`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripPolePatch.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affinePatch](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/affinepatch.md) | 16 | `declaration-track:611c9b312a34d6bb04ecd97e2bde4c8491d58c697a924cdc89e25b8a7b2bb9aa` |
| 2 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-8.md) | 35 | `declaration-track:cb6c36b39246f63f8d1fbcdc90ced8c06e5c48798536329a045c95baf87eccdc` |
| 3 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-10.md) | 38 | `declaration-track:eb4acdcfe0c0561f0d627248e6fba40ee1bb4c19b57131b465bbed7b4cb24fe6` |
| 4 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-3.md) | 42 | `declaration-track:46fea8ffd8c9d9cc6d97029b98ab28873565f87c719307a12269b0f3be42c087` |
| 5 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example.md) | 47 | `declaration-track:39a422e90369037f69602d11d2f9a15b000d8ac5afc6b06b6e380b6b232eabf2` |
| 6 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-5.md) | 52 | `declaration-track:635c68648c6cc97dfac1f71a978db6aa5a43cf5a17cef9237e48f69d7ed6dd30` |
| 7 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-9.md) | 56 | `declaration-track:ccbce0af1fc518991d93abf7790f451dde47fda08d61e021b1dbca58d7c01c7a` |
| 8 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-4.md) | 57 | `declaration-track:4cb5078aab5b97c24307f3d955eb78040642959f2db49d18b2028d35d5d9d370` |
| 9 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-7.md) | 58 | `declaration-track:784143e41b1554a5a50bcb10bd6bce0c45930ee84197f5467d7d4eb55f38f6cb` |
| 10 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-11.md) | 61 | `declaration-track:ed4aefe998ccb64f8f51d22af8020ece32639da9e4a01948e80556f9a7ffbccf` |
| 11 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-2.md) | 64 | `declaration-track:4641d1dd2ee8b927ad2682b37eb8d5c35a863ab97bc8d13e02cf1452c2116dc4` |
| 12 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-6.md) | 68 | `declaration-track:6c2c253b3c160bf51a35688eded9cb973225314729ab9f3f93061441250cb04a` |
| 13 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnalyticPolePatch.lean/declarations/example-source-edition-12.md) | 71 | `declaration-track:ff43307d6f19f19c67eb4dd9ee1c54c987513b8f535e0282dfa896bb28a0b576` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2b3933f81c86503d1970b9e9677d0697de5e25d3d27626e1073940c79212506 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/AnalyticPolePatch.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/Positive/AnalyticPolePatch.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
