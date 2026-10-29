# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQuantitativeSchwartzError

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/index.md) · [Full source](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaSigmaBoundaryTannery`](../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Fourier` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wienerFourierSchwartzControl](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerfourierschwartzcontrol.md) | 69 | `declaration-track:464dcc6d8208a7016125e1bd0d14b331c8a96c863cbac04e944e45874c4d33b7` |
| 2 | `theorem` | [wienerFourierSchwartzControl_nonnegative](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerfourierschwartzcontrol-nonnegative.md) | 73 | `result-track:19946df0df84760822ca47d93049754246920853acf103abf4fb0df759d6d6f1` |
| 3 | `theorem` | [wienerFourierSchwartzControl_zero](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerfourierschwartzcontrol-zero.md) | 79 | `result-track:86399145b883ec4e737b6ca018ef3d06f2819d91fce82dc12d2a69ee68ea8103` |
| 4 | `theorem` | [wienerFourierSchwartzControl_continuous](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerfourierschwartzcontrol-continuous.md) | 85 | `result-track:51bfe81a2c1684a1c359ca7c32a85b952d1d9a22e477ee693a5c3229847b0ea5` |
| 5 | `theorem` | [wienerFourierSchwartzControl_decay](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerfourierschwartzcontrol-decay.md) | 104 | `result-track:62e92ff268d11de171ebd88436fe091f0405a39edbbb3c3a929cdb1e6822190f` |
| 6 | `def` | [wienerSchwartzBoundaryArithmetic](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzboundaryarithmetic.md) | 131 | `declaration-track:81e23bd5551ccc7927bf21e1d6882763f78a5ff83d087b543b34f05b8d6074b2` |
| 7 | `def` | [wienerSchwartzBoundaryTail](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzboundarytail.md) | 136 | `declaration-track:05d6b5e5fc043c0ef812ea464fd4f2240bfa35da93f365ae628ae8d725656959` |
| 8 | `def` | [wienerSchwartzBoundaryRemainder](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzboundaryremainder.md) | 141 | `declaration-track:790f15a8a04d9b903cdf0a79274ebfa29b4e669729b186ca5bd6c9eff95c2acc` |
| 9 | `theorem` | [wienerSchwartzBoundaryArithmetic_norm_le](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzboundaryarithmetic-norm-le.md) | 148 | `result-track:288e6d81af26b01fa1d4a3b93f435d74e0b6569c5da5af96b2256f7153d8b7c5` |
| 10 | `theorem` | [wienerSchwartzCauchy_twoPi_integral](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzcauchy-twopi-integral.md) | 185 | `result-track:8341bd0b58615c8b2d60ad770d597c14e916916ae350cd5d8d16eb2525bdb173` |
| 11 | `theorem` | [wienerSchwartzBoundaryTail_norm_le](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzboundarytail-norm-le.md) | 194 | `result-track:56bf6540e26fd6f2bb82785b8cf02a7c1791e577c9d043cad316226765b4adfb` |
| 12 | `def` | [wienerSchwartzErrorConstant](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzerrorconstant.md) | 245 | `declaration-track:f7a65624ff0e41f8ec4a7b89b59da1b6fed751115b67013d95f38ebdb7802996` |
| 13 | `theorem` | [wienerSchwartzErrorConstant_nonnegative](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzerrorconstant-nonnegative.md) | 249 | `result-track:373f8a9b7744aa68c758ece7843a4d0ea688c2235fe07750e3fd57bd75d3d8e0` |
| 14 | `theorem` | [wienerSchwartzBoundaryRemainder_uniform_norm_le](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzboundaryremainder-uniform-norm-le.md) | 259 | `result-track:1280f77a441938fefece9d3fa4fa63dd3fc644da71053bdeebad901e9b624d32` |
| 15 | `theorem` | [wienerFourierSchwartzControl_tendsto_zero](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerfourierschwartzcontrol-tendsto-zero.md) | 281 | `result-track:129666e27f7c30e3566885bbf92976b3ee1f2c260a0c13aed9cad3f3162b710a` |
| 16 | `theorem` | [wienerSchwartzRemainder_uniform_vanishes](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzremainder-uniform-vanishes.md) | 293 | `result-track:b5e93e70cc8d31f3bcdcf61adc986abdcf605a68e811212e3e97284d101c7578` |
| 17 | `theorem` | [wienerSchwartzRemainder_approximation_error](../../../../MeasureAndIntegration/WienerIkeharaQuantitativeSchwartzError.lean/declarations/wienerschwartzremainder-approximation-error.md) | 317 | `result-track:8cabf8faec95ea17e5c44dc9193c4d8daaabb53d0c61ab21b19ec0c439c2b789` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=899dbe52bbc8f0984fd3f5913ecce0c84fa5d9ae043bcd6395842214f61250b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
