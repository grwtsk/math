# Verification target: GRWTSK.NumberTheory.Moebius.Checks.Positive.PrimeFilterGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78b90eea78b21f5ed9336fec65a7cf98b4c41547",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/Checks/Positive/PrimeFilterGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78b90eea78b21f5ed9336fec65a7cf98b4c41547`.

Source path: `GRWTSK/NumberTheory/Moebius/Checks/Positive/PrimeFilterGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/Checks/Positive/PrimeFilterGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusPrimeFilterGrowth.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-13.md) | 7 | `declaration-track:e2ca32d934129fdb138cb682248ba90f346e9b6717bcb738c9803ba24b5765bb` |
| 2 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-6.md) | 12 | `declaration-track:5c04784564b7a39c8345f3b58121af7f75e94aa8ee40cd8390eb8815a9f91736` |
| 3 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-9.md) | 17 | `declaration-track:9e8bb93546fc9776a378ddde51b782428bfc3bcdae4d05910829affb932bcec0` |
| 4 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-3.md) | 20 | `declaration-track:40dd149cb05a50d9c709d66f8442f34cd585ee9842dfc5055a65e1ee4733fe9e` |
| 5 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example.md) | 22 | `declaration-track:021b8b4f9fd4cec4811d5bff7421d3891c91362b6ae7530dfe317108bcd9f4a9` |
| 6 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-12.md) | 28 | `declaration-track:d7df63ee2fd4197c64316850694cec6f2e7f1b30ca56282c486ef56c99bc1d57` |
| 7 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-10.md) | 30 | `declaration-track:a3a5049d1925dfd3dc2a8b1ed583e934cd007ebfabf593e809ecf0347182285e` |
| 8 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-11.md) | 32 | `declaration-track:d48a36824a2bd6b71586035e4fa5ed44dacf5491a669c5a6aec578bdf8205f07` |
| 9 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-2.md) | 34 | `declaration-track:283f3b53116688fea7c458a5708a586a5279f33a94ccd1f35ec2d6ee843a749f` |
| 10 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-8.md) | 36 | `declaration-track:8731179f485403a4b4360a0a6751029b9b8966777176c11e6f2a04f586590a2a` |
| 11 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-4.md) | 38 | `declaration-track:445341017541b0702c4064b82cc2a62746f8435627cc41b50d234bc534a39a1b` |
| 12 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-7.md) | 42 | `declaration-track:6d55800706e9da75a3cf24ae03e17d8969a7cd2fcb23def0d15fd51721b040bc` |
| 13 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/example-source-edition-5.md) | 47 | `declaration-track:55dcb8c483a6e93b9a8ae94d2adf92566597a29e6fc014051d4ec52c4ecc1ba4` |
| 14 | `elab` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositivePrimeFilterGrowth.lean/declarations/elab.md) | 56 | `declaration-track:85be11d011977bcc4b6f02684b4ebaefa6b6f2fa1aef6f551db9a8de2fdcc5f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5e3de039d15933c2c8475020f2c73def77c358c29a54d645fd9a33150132038 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/Positive/PrimeFilterGrowth.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/Checks/Positive/PrimeFilterGrowth.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
