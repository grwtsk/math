# Verification target: Log Power Tail Attempt03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c84ad5facac16647ecd02e16030f2d08dfa6c91",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant1a758d2c9dd553c3b4db64a72c543f0e519c090babc2eb8c5d3b811545f7e867.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c84ad5facac16647ecd02e16030f2d08dfa6c91`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant1a758d2c9dd553c3b4db64a72c543f0e519c090babc2eb8c5d3b811545f7e867.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant1a758d2c9dd553c3b4db64a72c543f0e519c090babc2eb8c5d3b811545f7e867.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logPower](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/logpower.md) | 17 | `declaration-track:8c10162ce311201e63102f6d7bdc5b9b25b85d43352f7b5849d26c6ae8a3508c` |
| 2 | `def` | [logPowerPrimitive](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/logpowerprimitive.md) | 18 | `declaration-track:08141a23e6ec092d877f9644cfcf247bd57f41ed2f6774506a5e2e22a02d747d` |
| 3 | `theorem` | [logPower_hasDerivAt](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/logpower-hasderivat.md) | 20 | `result-track:55dc0cc943c14cffe06084f6c263ac9ba888a6961f45364d45d40d5e7dc08201` |
| 4 | `theorem` | [primitive_hasDerivAt](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/primitive-hasderivat.md) | 31 | `result-track:887c92711ce8a5ed9eb0e40fc8a4f999297ce2e3268ba1a9ca5497567f74f183` |
| 5 | `theorem` | [logPower_nonneg](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/logpower-nonneg.md) | 45 | `result-track:d7d496945e03bbafe1e9f7aaa80b3b1c2cddf69100fd35e89b3b24a1c419bbe1` |
| 6 | `theorem` | [logPower_antitone](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/logpower-antitone.md) | 49 | `result-track:6fa8e25b3dfdaf7dc2b60749284b7ae10298fdd9c34a9dbed6ad3e1d16b22c30` |
| 7 | `theorem` | [primitive_tendsto_zero](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/primitive-tendsto-zero.md) | 63 | `result-track:2285d708abd8a5ceadb3a1a7c241ef05823b1d869197a559cbf07fdfe7526941` |
| 8 | `theorem` | [logPower_integrable](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/logpower-integrable.md) | 77 | `result-track:176906a1bb52ff566e1afaa1fbb906c268d84d2f71440499a4fa7562c0a5ef62` |
| 9 | `theorem` | [logPower_integral](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/logpower-integral.md) | 82 | `result-track:a2bd7c86460072f83a8a03f54ae1f1dc47c087ea81bd5c74c164b6281ff0b776` |
| 10 | `theorem` | [logPower_summable](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/logpower-summable.md) | 92 | `result-track:99a863431033b5aabf49daa692bf4a214951a9c1e00ca8e94fad9bb8799ca61a` |
| 11 | `theorem` | [tail_summable](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/tail-summable.md) | 96 | `result-track:e3f7a1c31f210d3501110202e18fad6c61f9939197f2648a6653ade33c5bd2d3` |
| 12 | `theorem` | [tail_le_integral](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/tail-le-integral.md) | 100 | `result-track:b6dbd93fa80025dc812574bdd6acd6836db42d96a9866a16c794a764fb847fb9` |
| 13 | `theorem` | [tail_le_rational](../../../../MeasureAndIntegration/LogPowerTailAttempt03.lean/declarations/tail-le-rational.md) | 112 | `result-track:8ba7a3175d809ab31c8b08a1a843bc98973c688ffe356a11f0442525d0fc69d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d63e5db7c4aba0f5736721d2356176c842575da4aa6040c44c7601deb8170e8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant1a758d2c9dd553c3b4db64a72c543f0e519c090babc2eb8c5d3b811545f7e867.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogPowerTailAttempt03/Variant1a758d2c9dd553c3b4db64a72c543f0e519c090babc2eb8c5d3b811545f7e867.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
