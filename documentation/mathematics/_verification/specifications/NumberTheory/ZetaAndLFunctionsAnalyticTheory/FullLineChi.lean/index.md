# Verification target: Full Line Chi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7bb191530c723adbf736cc86475dfc886f394ad",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variantf9fe0a8dde95b39c68f5b458f559e8632a061c8f0179e4bbaaf888c491111248.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FullLineChi.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FullLineChi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7bb191530c723adbf736cc86475dfc886f394ad`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variantf9fe0a8dde95b39c68f5b458f559e8632a061c8f0179e4bbaaf888c491111248.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variantf9fe0a8dde95b39c68f5b458f559e8632a061c8f0179e4bbaaf888c491111248.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.ContourChi` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.LocalCountChi` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.GzGpChi` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.GoodHeights` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.LandauChi` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.ZeroSummabilityGen` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNontrivialZeroL_of_mem_closedBall](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FullLineChi.lean/declarations/isnontrivialzerol-of-mem-closedball.md) | 35 | `result-track:65e4e783f50c6110964d180327ffabddc7a6ac37d514cb122599abe14437de79` |
| 2 | `lemma` | [sum_mult_six_windows_L](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FullLineChi.lean/declarations/sum-mult-six-windows-l.md) | 47 | `result-track:ee002875b4243eb0f95fd15bd426698fc974f9b1af71811c603b7598c834fb73` |
| 3 | `lemma` | [card_le_sum_mult_L](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FullLineChi.lean/declarations/card-le-sum-mult-l.md) | 93 | `result-track:df3717986601e57584c02061a60253844a4d78ff2ac6ae3053d23c59742810cc` |
| 4 | `theorem` | [good_heights_chi](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FullLineChi.lean/declarations/good-heights-chi.md) | 103 | `result-track:75de0f8f693997a713735183ca65f930d7e05bddc5bac077bbaa0ad680ca53d5` |
| 5 | `theorem` | [EF_zero_sum_summable_chi](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FullLineChi.lean/declarations/ef-zero-sum-summable-chi.md) | 289 | `result-track:e03f77e4bc12211ac09fdafc49f56000891370a4f82be71324fb63d5d7638984` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1f9a5a64cb987e3d9ff520b6c398c21cb67a9e03404238d1180dd3aee47a960 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variantf9fe0a8dde95b39c68f5b458f559e8632a061c8f0179e4bbaaf888c491111248.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChi/Variantf9fe0a8dde95b39c68f5b458f559e8632a061c8f0179e4bbaaf888c491111248.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
