# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MainTerm.Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e75c03435ac68cb9371c18dc60202bf324c599b6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/index.md) · [Full source](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e75c03435ac68cb9371c18dc60202bf324c599b6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.Defs` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.LocalCount` — import line 31; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 32; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.XiLogDeriv` — import line 33; external provider; requires a separately pinned dependency.
- `Zeta23.Analytic.RectangleLogDeriv` — import line 34; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 35; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Backlund` — import line 36; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Fold` — import line 37; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.NcountWindow` — import line 38; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [N_eq_halfContour_completedZeta](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/declarations/n-eq-halfcontour-completedzeta--46a9e5960e4573109112b1f4.md) | 54 | `result-track:46a9e5960e4573109112b1f4497157750b169e23d0f538fa0bcee3b85f52ceda` |
| 2 | `lemma` | [contour_point_facts](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/declarations/contour-point-facts--8ee1523bcbe7feaa44535029.md) | 60 | `result-track:8ee1523bcbe7feaa44535029aedb5d075716891d6c9ab74f081cf668bd1d9592` |
| 3 | `lemma` | [continuousAt_logDeriv_zeta](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/declarations/continuousat-logderiv-zeta--d75a8dba3f119cdf101bcaca.md) | 80 | `result-track:d75a8dba3f119cdf101bcaca034ec4e6a6c3d2846a216a331dbd0ea2cbf9a694` |
| 4 | `lemma` | [continuousAt_logDeriv_Gammaℝ](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/declarations/continuousat-logderiv-gamma--b8abec8bca996e33a3705a1d.md) | 85 | `result-track:b8abec8bca996e33a3705a1df9f5de33ff73bab29eca6f26901bc22b02717db1` |
| 5 | `theorem` | [halfContour_completedZeta_split](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/declarations/halfcontour-completedzeta-split--0974d4e0a8812c5817320f44.md) | 90 | `result-track:0974d4e0a8812c5817320f44dee84f5d3885a55c373742dcef653680fdba8e87` |
| 6 | `theorem` | [exists_goodHeight](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/declarations/exists-goodheight--34c32c758be8c3addd7935bb.md) | 204 | `result-track:34c32c758be8c3addd7935bb89667d9a642d4e1822f08f990088dfed3918f583` |
| 7 | `theorem` | [rvM_main_param](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/declarations/rvm-main-param--274b62afa9a93018997dbba0.md) | 223 | `result-track:274b62afa9a93018997dbba043e578e4c6f32747834ce3e6238180c7c2c4ff65` |
| 8 | `theorem` | [rvM_main_aux](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/declarations/rvm-main-aux--c7a132799ac4672152cb265d.md) | 473 | `result-track:c7a132799ac4672152cb265dc10b90ad691d63e9716f6f9dbe925ff3d5a01599` |
| 9 | `theorem` | [rvM_main](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean/declarations/rvm-main--4159120b7687a4f466d9dc37.md) | 490 | `result-track:4159120b7687a4f466d9dc375297f771cc1716bbd91dd00d8b1bc47499f621cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1bb31607ffb2db360882642ae5b700c733495a682dcba1c3f284f95a1fc3380 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTerm/Variantc8f40463df697f8f099260f38bb1a0dfd4a11de85b3186715c47ee570ce52dd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
