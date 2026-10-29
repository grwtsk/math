# Verification target: Gronwall Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1102f10f0adef1deeef865a1744bc8a58343f7f0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Varianteef92cc4f3992450c76a8ade896bffe03f69ace726b0e6e001a5dd64d273566c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/index.md) · [Full source](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1102f10f0adef1deeef865a1744bc8a58343f7f0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Varianteef92cc4f3992450c76a8ade896bffe03f69ace726b0e6e001a5dd64d273566c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Varianteef92cc4f3992450c76a8ade896bffe03f69ace726b0e6e001a5dd64d273566c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gronwallBound](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/gronwallbound.md) | 47 | `declaration-track:c0844b071b7d2bc441d98924b534194c6a5a7e0249772007351c16f37fc3ea12` |
| 2 | `theorem` | [gronwallBound_K0](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/gronwallbound-k0.md) | 50 | `result-track:b327d783f08202cc7b7a2b00a453963cfb16acab5e7414d4f505d3bcf77a8abe` |
| 3 | `theorem` | [gronwallBound_of_K_ne_0](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/gronwallbound-of-k-ne-0.md) | 53 | `result-track:a681dc53e1eb09423a94ec05400c800970310c45ecc6b12530ef64cf8d41fd51` |
| 4 | `theorem` | [hasDerivAt_gronwallBound](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/hasderivat-gronwallbound.md) | 57 | `result-track:ebb8cf2b4f8925268370870b09ab3ba782423124bceaafeee1fe24e9f4a79cca` |
| 5 | `theorem` | [hasDerivAt_gronwallBound_shift](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/hasderivat-gronwallbound-shift.md) | 70 | `result-track:22b868f44132b0b0bf0817a767991aab4177d6f8e4ae180dc373c18090f6d16e` |
| 6 | `theorem` | [gronwallBound_x0](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/gronwallbound-x0.md) | 75 | `result-track:37aa256779c1d6afe526e5e17939677765f0cea561165bd7946e2bac2e7bc891` |
| 7 | `theorem` | [gronwallBound_ε0](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/gronwallbound-0.md) | 81 | `result-track:b949852cba26eae494b0810a9c5702015137f890477efbda266936e9443c5ad6` |
| 8 | `theorem` | [gronwallBound_ε0_δ0](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/gronwallbound-0-0.md) | 86 | `result-track:fb9275f12cd0a8721f064b6095ce718d1689d4778a487760684e8c2a4c403f3c` |
| 9 | `theorem` | [gronwallBound_continuous_ε](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/gronwallbound-continuous.md) | 89 | `result-track:e55e281cdc8f4e755a8d29861f077fa1a0b2e0f829a7d643e393061fabfc2b35` |
| 10 | `theorem` | [le_gronwallBound_of_liminf_deriv_right_le](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/le-gronwallbound-of-liminf-deriv-right-le.md) | 105 | `result-track:0027428ce0a8b5399e77fcbdc3353b9599728e39502509dc324bd5394284915c` |
| 11 | `theorem` | [norm_le_gronwallBound_of_norm_deriv_right_le](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/norm-le-gronwallbound-of-norm-deriv-right-le.md) | 130 | `result-track:ca12a75acea75492fe64206230853ee5b136023f2c0dd38ed5c89a35b1c4f818` |
| 12 | `theorem` | [dist_le_of_approx_trajectories_ODE_of_mem](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/dist-le-of-approx-trajectories-ode-of-mem.md) | 145 | `result-track:099227b3770ffffded1549623d5543cd6280fd87229b3db73d87f32ba2474f82` |
| 13 | `theorem` | [dist_le_of_approx_trajectories_ODE](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/dist-le-of-approx-trajectories-ode.md) | 173 | `result-track:c4f62cc4314177d576f0798dc3183c798b1846d42ed386241e0b1186d6734859` |
| 14 | `theorem` | [dist_le_of_trajectories_ODE_of_mem](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/dist-le-of-trajectories-ode-of-mem.md) | 193 | `result-track:8a1f77689da8ee40ed52e2babb296c69c46092ec001ca0105d63976e9d01794f` |
| 15 | `theorem` | [dist_le_of_trajectories_ODE](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/dist-le-of-trajectories-ode.md) | 213 | `result-track:01b64654d3ad1d1e4fb8e0bba63d0f180b87d4011697fb3a2f4656cd30592f59` |
| 16 | `theorem` | [ODE_solution_unique_of_mem_Icc_right](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/ode-solution-unique-of-mem-icc-right.md) | 230 | `result-track:cec1c1c176f5814aff563a61d9a6c9bec13f2b1ddde5896b7138874986b70d69` |
| 17 | `theorem` | [ODE_solution_unique_of_mem_Icc_left](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/ode-solution-unique-of-mem-icc-left.md) | 245 | `result-track:962524aaaa7ecd1ac54b10570f2cb094af53d69ba30c22a4304babba023de665` |
| 18 | `theorem` | [ODE_solution_unique_of_mem_Icc](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/ode-solution-unique-of-mem-icc.md) | 286 | `result-track:8d68ca02dd486f8c6184e1e8037fcdc07cbe48813ea2d23d77df8beeb0c98278` |
| 19 | `theorem` | [ODE_solution_unique_of_mem_Ioo](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/ode-solution-unique-of-mem-ioo.md) | 313 | `result-track:d5728aa44be6a5ae8636cbf9f4607985b7955ca33c551b35ce27e2c22f9718c6` |
| 20 | `theorem` | [ODE_solution_unique_of_eventually](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/ode-solution-unique-of-eventually.md) | 346 | `result-track:c8dbebc1b626802fb5edc73644bcf0fc64f9c5a4c89afad85f631317cdaddfe3` |
| 21 | `theorem` | [ODE_solution_unique](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/ode-solution-unique.md) | 361 | `result-track:05e5d16277ad98450d5ec511c96081efc389cfd7fb525f8585580115d463b172` |
| 22 | `theorem` | [ODE_solution_unique_univ](../../../../OrdinaryDifferentialEquations/GronwallNamespaced.lean/declarations/ode-solution-unique-univ.md) | 375 | `result-track:a5ac54145f460bdcb02cb89c480cb8513249b7ff5bd4fb55a42e9337b0ada916` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fca92092cd966fcad2014b0ad5644c63694d835b3b99aae3b521e24474cd2af4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Varianteef92cc4f3992450c76a8ade896bffe03f69ace726b0e6e001a5dd64d273566c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Varianteef92cc4f3992450c76a8ade896bffe03f69ace726b0e6e001a5dd64d273566c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
