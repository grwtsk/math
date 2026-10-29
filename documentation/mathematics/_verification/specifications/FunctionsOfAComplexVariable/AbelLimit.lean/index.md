# Verification target: Abel Limit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8ee3b9903aef35ded7e935d93d147d2080f7110",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant1f83f133e9a553643788702067ad3b45308779b7ffab3d8df3b13418d50da252.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8ee3b9903aef35ded7e935d93d147d2080f7110`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant1f83f133e9a553643788702067ad3b45308779b7ffab3d8df3b13418d50da252.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AbelLimit/Variant1f83f133e9a553643788702067ad3b45308779b7ffab3d8df3b13418d50da252.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Peel` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stolzSet](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/stolzset.md) | 44 | `declaration-track:be88e767d37bbcfbcbc2306ae99ffaf8a7be8a0f267f9aa25f5bfbbb9115a810` |
| 2 | `def` | [stolzCone](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/stolzcone.md) | 47 | `declaration-track:85e6dea2278d40fd8a87bba22ae79ac6299d1e7d2e904476e7318a03a8b3b66f` |
| 3 | `theorem` | [stolzSet_empty](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/stolzset-empty.md) | 49 | `result-track:39259cb1b0bbf03d48bfb3f606086c0e21471cc7c2ad96b717d7ef4d0064ad2c` |
| 4 | `theorem` | [nhdsWithin_lt_le_nhdsWithin_stolzSet](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/nhdswithin-lt-le-nhdswithin-stolzset.md) | 58 | `result-track:a3f6de6906e7b50bb8f9351df4c3430ea2e1b0914d4bbe9764ceb26ae9d0e82d` |
| 5 | `lemma` | [stolzCone_subset_stolzSet_aux'](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/stolzcone-subset-stolzset-aux-source-edition-2.md) | 71 | `result-track:7f9a74f88f2663376aba3428cfb016d3a7a213a1ca6649824450d452d9fb8619` |
| 6 | `lemma` | [stolzCone_subset_stolzSet_aux](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/stolzcone-subset-stolzset-aux.md) | 95 | `result-track:0096a5a51bb956e107dbf9eb7e59a350afb2d64360e81a1d280f482192ef5110` |
| 7 | `lemma` | [nhdsWithin_stolzCone_le_nhdsWithin_stolzSet](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/nhdswithin-stolzcone-le-nhdswithin-stolzset.md) | 109 | `result-track:d6cc788ea9a8257f16e037917c4e607dc92978f47f092e9628ca3b065f58de27` |
| 8 | `lemma` | [abel_aux](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/abel-aux.md) | 124 | `result-track:3381c591fc29a45e6dfa3ca39461f034b767d3de682753382dabb71f0fac104c` |
| 9 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_stolzSet](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/tendsto-tsum-powerseries-nhdswithin-stolzset.md) | 157 | `result-track:8c83d7ec9e1809eba81d7563542b2f809177674f75ee97158a29f97a17e79322` |
| 10 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_stolzCone](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/tendsto-tsum-powerseries-nhdswithin-stolzcone.md) | 237 | `result-track:de8388af87330bbff2bef5f97e8c45ecfa5ecc40551c18355c33560b061249f2` |
| 11 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_lt](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/tendsto-tsum-powerseries-nhdswithin-lt.md) | 243 | `result-track:18c75a176fbd5bfc06c76de37688ecddfdf143f6ebc866c8e43828424bb0ddf2` |
| 12 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_lt](../../../../FunctionsOfAComplexVariable/AbelLimit.lean/declarations/tendsto-tsum-powerseries-nhdswithin-lt-source-edition-2.md) | 259 | `result-track:f251eec0899ebb2c0d3671a14493552b0e7d8eac9737226ae377576d99bb9956` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f38d4d68436f3e59a95fea79a542a9e148d19535b6d6c834767760d48486f98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant1f83f133e9a553643788702067ad3b45308779b7ffab3d8df3b13418d50da252.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/AbelLimit/Variant1f83f133e9a553643788702067ad3b45308779b7ffab3d8df3b13418d50da252.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
