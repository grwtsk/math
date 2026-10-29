# Verification target: Derivatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66d88f9cbfbd169cf374a393ce25b899ca1bba40",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Derivatives.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Derivatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66d88f9cbfbd169cf374a393ce25b899ca1bba40`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailTransport` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePowerTail](../../../../MeasureAndIntegration/Derivatives.lean/declarations/sourcepowertail.md) | 8 | `declaration-track:b0bf4a3a629cee4e4f8d8cf66dd6d0d8a200e8979aaeda80a28d2a60f45f0dd6` |
| 2 | `theorem` | [source_power_integrable](../../../../MeasureAndIntegration/Derivatives.lean/declarations/source-power-integrable.md) | 11 | `result-track:2be2bee432a46d7542d454a9905c27f634e0ade97795e4c57845694ce7f2006e` |
| 3 | `theorem` | [sourcePowerTail_eq_sub](../../../../MeasureAndIntegration/Derivatives.lean/declarations/sourcepowertail-eq-sub.md) | 25 | `result-track:df73086bc483e71b839fb5f04902540757df5a20806a1278b863bd42ee5309fa` |
| 4 | `theorem` | [hasDerivAt_sourcePowerTail](../../../../MeasureAndIntegration/Derivatives.lean/declarations/hasderivat-sourcepowertail.md) | 33 | `result-track:19d82a2ab040cf3673fb88d5844b3d326fd5332a69206732cd8f45366b4c9e4c` |
| 5 | `theorem` | [thetaTail_two_eq](../../../../MeasureAndIntegration/Derivatives.lean/declarations/thetatail-two-eq.md) | 42 | `result-track:d1007a87da7c91794db3158b0e4905a7927706be0e46fdaf6c17b562cb57d425` |
| 6 | `theorem` | [hasDerivAt_thetaTail_two](../../../../MeasureAndIntegration/Derivatives.lean/declarations/hasderivat-thetatail-two.md) | 52 | `result-track:35912d1ba0ccf1712af6b3abe394208931cc6a9add69ecfd6ebbb790002a3609` |
| 7 | `def` | [tailBinomialCoeff](../../../../MeasureAndIntegration/Derivatives.lean/declarations/tailbinomialcoeff.md) | 63 | `declaration-track:779c75b1a9492ddab9c77c45c425f5e91c3ddf31dc65a970b6dc50a6067f9d3b` |
| 8 | `theorem` | [tailBinomialCoeff_sum](../../../../MeasureAndIntegration/Derivatives.lean/declarations/tailbinomialcoeff-sum.md) | 66 | `result-track:e12982638106afebe4ce1e652c1352e8cac7f3fbc1b2876447334ceb3465921d` |
| 9 | `theorem` | [hasDerivAt_tailBinomialCoeff](../../../../MeasureAndIntegration/Derivatives.lean/declarations/hasderivat-tailbinomialcoeff.md) | 74 | `result-track:6faa21d45a7aeabda98e1d3465f36b3276fb0a96982d13f165b77c374f9f3647` |
| 10 | `theorem` | [tailBinomialCoeff_deriv_sum](../../../../MeasureAndIntegration/Derivatives.lean/declarations/tailbinomialcoeff-deriv-sum.md) | 80 | `result-track:d089ef31e8922595f77e60470c986af06fdc3dbde49ce7b21e107971e18a0c82` |
| 11 | `theorem` | [integral_source_coeff_sum](../../../../MeasureAndIntegration/Derivatives.lean/declarations/integral-source-coeff-sum.md) | 97 | `result-track:539cee1d4c0469e83c33eda9447e1199f274b7f265579b234893d48df485fff9` |
| 12 | `theorem` | [thetaTail_eq_binomial](../../../../MeasureAndIntegration/Derivatives.lean/declarations/thetatail-eq-binomial.md) | 108 | `result-track:505a1bda4938a4dd1b48ac37baa235f17458add2ab51da7b684f1248df85ba75` |
| 13 | `theorem` | [hasDerivAt_thetaTail_succ_succ](../../../../MeasureAndIntegration/Derivatives.lean/declarations/hasderivat-thetatail-succ-succ.md) | 117 | `result-track:8e7836167331b5ce284e2877f18cb85bdca8a9decc7016e0b1a343b7b03be356` |
| 14 | `theorem` | [hasDerivAt_thetaTail_succ](../../../../MeasureAndIntegration/Derivatives.lean/declarations/hasderivat-thetatail-succ.md) | 153 | `result-track:a91e107bd0c494dc767f86e5bb65fe355a6c2a13592f904c238cfebc66623731` |
| 15 | `theorem` | [deriv_thetaTail_succ](../../../../MeasureAndIntegration/Derivatives.lean/declarations/deriv-thetatail-succ.md) | 159 | `result-track:6d34b26e2d51458f994d799c65b3479dab4a0acff7dbcb406226d7897e1ed094` |
| 16 | `theorem` | [iteratedDeriv_thetaTail_add](../../../../MeasureAndIntegration/Derivatives.lean/declarations/iteratedderiv-thetatail-add.md) | 164 | `result-track:2659080c517d35bb9d1423c040fb4acc3c7c0ba0ebbdb8a1c08ec7b21e4839a2` |
| 17 | `theorem` | [iteratedDeriv_thetaTail](../../../../MeasureAndIntegration/Derivatives.lean/declarations/iteratedderiv-thetatail.md) | 177 | `result-track:acae9588d763cf19b600d170105f591a88f19288f8b4cf8386c3b765f096456d` |
| 18 | `theorem` | [continuous_thetaTail](../../../../MeasureAndIntegration/Derivatives.lean/declarations/continuous-thetatail.md) | 182 | `result-track:545065b860fb2e896c0d3bd6b3a53781a8e63008aed84f809726a503cdd214d5` |
| 19 | `theorem` | [contDiff_thetaTail_order](../../../../MeasureAndIntegration/Derivatives.lean/declarations/contdiff-thetatail-order.md) | 189 | `result-track:7fed9c409892bf48f2be310c437912f05873b262b48f6cd4d201c72fb63f0f05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f27398b13e5487d782932de5521a790e9adf12efec4d78a7c4626d83df267c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
