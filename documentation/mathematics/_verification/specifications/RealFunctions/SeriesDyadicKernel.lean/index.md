# Verification target: GRWTSK.Analysis.Series.DyadicKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "057883a5d3295c4261a07c523ac5c099bfcacff8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Series/DyadicKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SeriesDyadicKernel.lean/index.md) · [Full source](../../../../RealFunctions/SeriesDyadicKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `057883a5d3295c4261a07c523ac5c099bfcacff8`.

Source path: `GRWTSK/Analysis/Series/DyadicKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Series/DyadicKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.GeomSum` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelTerm](../../../../RealFunctions/SeriesDyadicKernel.lean/declarations/kernelterm.md) | 35 | `declaration-track:69e4a131e58e8ac09355ab558f5f86da0d53fb4117469eabfea89739d38d2d02` |
| 2 | `theorem` | [pow_rpow_comm](../../../../RealFunctions/SeriesDyadicKernel.lean/declarations/pow-rpow-comm.md) | 37 | `result-track:05b4fc08c750d9bdba86612b5a1def1e05191467c070a1efacbd5bea3b8a07e5` |
| 3 | `theorem` | [kernelTerm_nonneg](../../../../RealFunctions/SeriesDyadicKernel.lean/declarations/kernelterm-nonneg.md) | 42 | `result-track:02a264a684285ea30fa31486f8ee69a951bd9ba3b72f86b14e11514de5a349d6` |
| 4 | `theorem` | [kernelTerm_le_head](../../../../RealFunctions/SeriesDyadicKernel.lean/declarations/kernelterm-le-head.md) | 46 | `result-track:712ab8f626ba74b62de93c334ca03b4fa2440c9bbfd3f27095be3ff88d7fe904` |
| 5 | `theorem` | [kernelTerm_le_tail](../../../../RealFunctions/SeriesDyadicKernel.lean/declarations/kernelterm-le-tail.md) | 52 | `result-track:c067b4c8ed74795b4df73abea466e03e71f0a5d9b1fe2fbca0eb8ac3546ef927` |
| 6 | `theorem` | [ratio_lt_one](../../../../RealFunctions/SeriesDyadicKernel.lean/declarations/ratio-lt-one.md) | 66 | `result-track:18dd9749cf5cff48e1e6d7dcef546f2d45e120fbb18319737a87110fd3b6f70e` |
| 7 | `theorem` | [kernel_summable](../../../../RealFunctions/SeriesDyadicKernel.lean/declarations/kernel-summable.md) | 69 | `result-track:5f7901f0dd8e8f89b80a0462953ef0d24e7dd85881a6c67505562bebdb722de4` |
| 8 | `theorem` | [kernel_sum_cutoff](../../../../RealFunctions/SeriesDyadicKernel.lean/declarations/kernel-sum-cutoff.md) | 74 | `result-track:55e7f5f12a0942663570ee3a295d7ad406e231a346634ee44b9a0f82df1a00bb` |
| 9 | `theorem` | [kernel_sum_bound](../../../../RealFunctions/SeriesDyadicKernel.lean/declarations/kernel-sum-bound.md) | 98 | `result-track:a2a1151465ca42ecea966d7d5c0869a7b22d6a81c2a20f8acb8e7c968fdd1d7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0ecfd0d1391a73cc708ae2d87da7b7e674893bb772fb8f529c5bfb6633fc111 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Series/DyadicKernel.lean","GRWTSK/_verification/specifications/Analysis/Series/DyadicKernel.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
