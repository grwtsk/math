# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.LocalJensenCount

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ce3a8ed8e9ca331ececc848c9f9b0e912015791",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/LocalJensenCount.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ce3a8ed8e9ca331ececc848c9f9b0e912015791`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/LocalJensenCount.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/LocalJensenCount.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.JensenFiniteMultiplicity`](../../../../../../FunctionsOfAComplexVariable/JensenFiniteMultiplicity.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.SeparatedContourHeights`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SeparatedContourHeights.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperCenter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/uppercenter.md) | 37 | `declaration-track:7581e60c7ae51f478fbd23a380cb298d27468fc3675c3dcb3b5aed61c77ce375` |
| 2 | `def` | [lowerCenter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/lowercenter.md) | 40 | `declaration-track:49aa593f6dbbbdcbc39b31813d73abb6a14e79ee0cfa8bf6237e030f8c6ecc47` |
| 3 | `theorem` | [upperCenter_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/uppercenter-re.md) | 42 | `result-track:a66acc2146fbb5c59614e7a5a9fde76df07254906993dc9356169572b17f66cd` |
| 4 | `theorem` | [lowerCenter_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/lowercenter-re.md) | 43 | `result-track:b718bf2e40b1af96c672f6e863610341d4d81835648ec6c50814e777d7d5edc0` |
| 5 | `theorem` | [upperCenter_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/uppercenter-im.md) | 44 | `result-track:eac0ba5b37e2bf8828b5bc6b403ae10e7cc56432b3dbc3f886b92726ecba558a` |
| 6 | `theorem` | [lowerCenter_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/lowercenter-im.md) | 46 | `result-track:55e010f70573724d2337f1078cdf7e9f53ab872744793e66cd797ee0b2ecebbf` |
| 7 | `theorem` | [strip_box_mem_disk](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/strip-box-mem-disk.md) | 50 | `result-track:d5aaf32bc0e5bc53d2408d6d363e420435483f3ff6b26bea33be2506895a398f` |
| 8 | `theorem` | [band_point_upper](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/band-point-upper.md) | 64 | `result-track:d3629e262c48f8ecaebd424885288f95b6a3a58b2f51cde9388690f1ec048429` |
| 9 | `theorem` | [band_point_lower](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/band-point-lower.md) | 73 | `result-track:f338146ff5943638e9a3e7cc6eb355661d927afda79b1974db369247ce8fb78a` |
| 10 | `theorem` | [analytic_zeta_disk](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/analytic-zeta-disk.md) | 82 | `result-track:a6dfa70411d83e0d0c5273135b1f4ce2f482ae95f1fa21135e905c3b2510eeff` |
| 11 | `theorem` | [analytic_zeta_upper_disk](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/analytic-zeta-upper-disk.md) | 93 | `result-track:2f757138722dca672b12679f247cc9decbc964cb500938852475b0f9a131931e` |
| 12 | `theorem` | [analytic_zeta_lower_disk](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/analytic-zeta-lower-disk.md) | 100 | `result-track:274d6e91a69fa55e426188649975d276e0b557ae720d32b5f7c85f7ce92aeee9` |
| 13 | `theorem` | [upper_center_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/upper-center-ne-zero.md) | 107 | `result-track:20d88e6ebc3089413ceb0e4c85472243c72698cbb703cf5d95e186b85aa22e56` |
| 14 | `theorem` | [lower_center_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/lower-center-ne-zero.md) | 110 | `result-track:72576a517cb67abcb0fdb6604b2470ad8e18c3d10f894694fed1500826ec699e` |
| 15 | `theorem` | [divisor_eq_multiplicity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/divisor-eq-multiplicity.md) | 114 | `result-track:f72e086c3e707eb9debcdd7df7df6f9b250396cebe9ca071f60ad1ce549e5b3e` |
| 16 | `theorem` | [canonical_subfamily_jensen](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/canonical-subfamily-jensen.md) | 122 | `result-track:b0f0cfd7ff156de943ae1843dd27a3b24e377797c08e8c6b8598f1770095f3c1` |
| 17 | `theorem` | [bandMass_le_jensen](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/bandmass-le-jensen.md) | 144 | `result-track:dbf2493fa3f0b22593398b7297e2506e3c468dd89747431540edb40ff4c7acce` |
| 18 | `theorem` | [bandMass_le_of_modulus_bounds](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/bandmass-le-of-modulus-bounds.md) | 172 | `result-track:5b718feebe746254e538df0fd6a68bbbaa4fe6d360f44a65b40ab836bf57ea95` |
| 19 | `theorem` | [bandMass_le_of_exponential_bounds](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/bandmass-le-of-exponential-bounds.md) | 191 | `result-track:d7d64013496d470817d87971dc142731b8ebfbda0d25f44c02fe19bf9d0ad615` |
| 20 | `theorem` | [clearance_of_mass_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/clearance-of-mass-bound.md) | 203 | `result-track:072ddc34af4b892232a55fa04a0ac999c0a425d96d60081a11fd4a6641a9bb8d` |
| 21 | `theorem` | [local_principal_of_mass_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LocalJensenCount.lean/declarations/local-principal-of-mass-bound.md) | 209 | `result-track:e00a88d220cb8dc14456480e7defdaa0f2320b83b987e7d99fbf7a2acc34316c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f99aa6008c1574b297db464219235752d86e4688fcb22e45f131eb5ac6b99d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/LocalJensenCount.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/LocalJensenCount.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
