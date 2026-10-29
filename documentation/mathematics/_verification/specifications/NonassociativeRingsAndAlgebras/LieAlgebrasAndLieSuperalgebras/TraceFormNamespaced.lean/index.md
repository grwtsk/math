# Verification target: Trace Form Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "798b303c9e62cb1cb4aec78731a16f9dfb092d12",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `798b303c9e62cb1cb4aec78731a16f9dfb092d12`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.LinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.InvariantForm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Weights.Cartan` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Weights.Linear` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.PID` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceForm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform.md) | 55 | `declaration-track:c2f62adebcac3e7d3ce9becccfa32ef2789657e7aa9d1a583da85213cfcf8ee0` |
| 2 | `lemma` | [traceForm_apply_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-apply-apply.md) | 58 | `result-track:2d0d1a96df5c7f278f9feb752278a88f9642414a56494df9637bf909b5c28c8d` |
| 3 | `lemma` | [traceForm_comm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-comm.md) | 62 | `result-track:cff36f566d9ba0b30614530475a0b6e67229f617859bdc01fcc38cf43b599d18` |
| 4 | `lemma` | [traceForm_isSymm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-issymm.md) | 65 | `result-track:71d3fff2324114a09d2a2c4a13c8f90f8fe912e53de11015abc504ea0f7d0b69` |
| 5 | `lemma` | [traceForm_flip](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-flip.md) | 67 | `result-track:5494f13e5a97ddf096729b29e68b6c6178396e0fb6bba1985720bdafa9d28d87` |
| 6 | `lemma` | [traceForm_apply_lie_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-apply-lie-apply.md) | 73 | `result-track:43afff7bfe3f23bb95d2e17f984e802a77d74faab612d0aee8033e787bda63cd` |
| 7 | `lemma` | [traceForm_apply_lie_apply'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-apply-lie-apply-source-edition-2.md) | 89 | `result-track:5c9c680926ee88c7edc07b3d8808207e2d1af2e4f5d7110686fcb14a1a142923` |
| 8 | `lemma` | [traceForm_lieInvariant](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-lieinvariant.md) | 95 | `result-track:4e9a485aaacaa081851080d09c454074b7d61821aeac0d4fa44fc9a10e97ae5a` |
| 9 | `lemma` | [lie_traceForm_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/lie-traceform-eq-zero.md) | 100 | `result-track:56697a4cf37a68abdcc3251069f6f272ce8acb22683dc5582fb7b23d1fb738d4` |
| 10 | `lemma` | [traceForm_eq_zero_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-eq-zero-of-isnilpotent.md) | 105 | `result-track:3f149cce22c9fab082b675b8e55aeb87adafb849d0c42cd712e998c389ffeb7e` |
| 11 | `lemma` | [traceForm_genWeightSpace_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-genweightspace-eq.md) | 113 | `result-track:5fbb23ac6ddaba68992d1bf7ba670b3984f4e83d6d39e46a2e04b6a6b1330c8e` |
| 12 | `lemma` | [traceForm_eq_zero_if_mem_lcs_of_mem_ucs](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-eq-zero-if-mem-lcs-of-mem-ucs.md) | 134 | `result-track:18c3ee6d812f1f4358a164be019e046f21045db5458bd7e06c2df68ef745d902` |
| 13 | `lemma` | [traceForm_apply_eq_zero_of_mem_lcs_of_mem_center](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-apply-eq-zero-of-mem-lcs-of-mem-center.md) | 153 | `result-track:22b88b1d3b99fb3a2e419c6c0a2633fcc36fab97ef7da75bdfeb462dd9119920` |
| 14 | `lemma` | [traceForm_eq_zero_of_isTrivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-eq-zero-of-istrivial.md) | 161 | `result-track:62cf9369a0cfce4547d75d36730b293d7cd513439c9b11fb52e3f2ae1513657a` |
| 15 | `lemma` | [eq_zero_of_mem_genWeightSpace_mem_posFitting](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/eq-zero-of-mem-genweightspace-mem-posfitting.md) | 171 | `result-track:bf987a571c422fb62778a2b155e82f9af30b71678375dbdc347261fb43819e4b` |
| 16 | `lemma` | [trace_toEnd_eq_zero_of_mem_lcs](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/trace-toend-eq-zero-of-mem-lcs.md) | 194 | `result-track:11bab5c6b91bf02bbb1cc766d19c278da567dde16d7432377afef70db99d1747` |
| 17 | `lemma` | [traceForm_lieSubalgebra_mk_left](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-liesubalgebra-mk-left.md) | 211 | `result-track:de9a621add0d35b77b6660f111ca84ce24189bc0fcf42d9854e5fd365182f890` |
| 18 | `lemma` | [traceForm_lieSubalgebra_mk_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-liesubalgebra-mk-right.md) | 216 | `result-track:e079a024c84cb9361ac05a459dae9333d9708ce4987c8fe771abd5e9048887d1` |
| 19 | `lemma` | [traceForm_eq_sum_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-eq-sum-genweightspaceof.md) | 224 | `result-track:00e12e1e9a1622dd2f798025502a12af84b793625c914839c3311799007a0d6f` |
| 20 | `lemma` | [lowerCentralSeries_one_inf_center_le_ker_traceForm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/lowercentralseries-one-inf-center-le-ker-traceform.md) | 246 | `result-track:0f5c702c8e9b04046e45d15eddc92ca722a0b789b1aaa4b880e707446c5fdbd9` |
| 21 | `lemma` | [isLieAbelian_of_ker_traceForm_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/islieabelian-of-ker-traceform-eq-bot.md) | 294 | `result-track:b26cb333fc814c52970a9c5d989f708110a13da9884a1789bcd6a92b4f79acf6` |
| 22 | `lemma` | [trace_eq_trace_restrict_of_le_idealizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/trace-eq-trace-restrict-of-le-idealizer.md) | 311 | `result-track:026b16418f442e0ff73c86a62a68c875b4387d5e0a8a3ac2fe420df266a66409` |
| 23 | `lemma` | [traceForm_eq_of_le_idealizer](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-eq-of-le-idealizer.md) | 321 | `result-track:53eb74c89a097dc524ce4da33aadb4a9871e39867bf0bb61be9df3a8c8e9fc86` |
| 24 | `lemma` | [traceForm_eq_zero_of_isTrivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-eq-zero-of-istrivial-source-edition-2.md) | 332 | `result-track:ec44d9b88cb61b725dabfb446b9b08d6bb8db62a49b24be56b1654d8e34a71f6` |
| 25 | `abbrev` | [killingForm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/killingform.md) | 348 | `declaration-track:7f451687f71db71d489c10b82cb7cf339ecb076c2233aa46ad477f8625dd8330` |
| 26 | `lemma` | [killingForm_apply_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/killingform-apply-apply.md) | 351 | `result-track:a796a2f71d96b4e15123eef189cf987f87db17a3a0bfd6c4b9cc5a5b77ccbbf9` |
| 27 | `lemma` | [killingForm_eq_zero_of_mem_zeroRoot_mem_posFitting](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/killingform-eq-zero-of-mem-zeroroot-mem-posfitting.md) | 354 | `result-track:360303ee352a417a3acfe4a659442f7564b87f6f8bdd3e28e1a0763ed623477d` |
| 28 | `def` | [killingCompl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/killingcompl.md) | 368 | `declaration-track:c54870e171d2a80e17c15698fe3bef3be4ea38b0d3bf8c852a56edff997ebea2` |
| 29 | `lemma` | [toSubmodule_killingCompl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/tosubmodule-killingcompl.md) | 371 | `result-track:44ce4c1603807f2fd0c140acb666c2c04513692764acb3b1524551c93f1e6e03` |
| 30 | `lemma` | [mem_killingCompl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/mem-killingcompl.md) | 375 | `result-track:593dbf6c28f4ef2d2e9028f87a4042ac270f14fa20d278b9bc251fb10539bc76` |
| 31 | `lemma` | [coe_killingCompl_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/coe-killingcompl-top.md) | 379 | `result-track:f5855a6224750c68a4370625ef2fe29eeb5594e7d6195cdfeedfc947431559fa` |
| 32 | `lemma` | [restrict_killingForm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/restrict-killingform.md) | 384 | `result-track:0d7a2fd0e36e4ae317ead1d283b3d92c7c0bbc599087fd8fa362f8e748670f07` |
| 33 | `lemma` | [killingForm_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/killingform-eq.md) | 390 | `result-track:0227807bb881132b7576d4090a70e4de188b80bb11bdf5117b1a4666bf995d55` |
| 34 | `lemma` | [le_killingCompl_top_of_isLieAbelian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/le-killingcompl-top-of-islieabelian.md) | 394 | `result-track:44776e00e9a9f3286864fb7e28654f80108c33ca0bd1bf66856203f5ca9be407` |
| 35 | `lemma` | [traceForm_eq_sum_finrank_nsmul_mul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-eq-sum-finrank-nsmul-mul.md) | 412 | `result-track:64a11d76b091907758b101009a9e6fa75f6096747558315e99ded04e324ccb92` |
| 36 | `lemma` | [traceForm_eq_sum_finrank_nsmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-eq-sum-finrank-nsmul-source-edition-2.md) | 427 | `result-track:5901aadd80ce8fe289246d8f2a8fd07448cea600b5be9209fae99d918b3c4d40` |
| 37 | `lemma` | [traceForm_eq_sum_finrank_nsmul'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/traceform-eq-sum-finrank-nsmul.md) | 436 | `result-track:311fa10ef0c2cc9db19de40b8b56100b9c3306e2cb610b1669748013dcf7d380` |
| 38 | `lemma` | [range_traceForm_le_span_weight](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/TraceFormNamespaced.lean/declarations/range-traceform-le-span-weight.md) | 450 | `result-track:953f5f807ebc142ae61ef8b0b31c01f20b129a960242d154ee2c3805da82d204` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d77bc82d4cd8e5e6da3d496652c1ba59818745331c73e2b9ade35826a9c70114 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
