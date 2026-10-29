# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiOctaveEnergySupplier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9c954687f4a67fdb1ad62b4051d2a5e4b0e257f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicPsiOctaveEnergySupplier.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicPsiOctaveEnergySupplier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9c954687f4a67fdb1ad62b4051d2a5e4b0e257f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiAbelReconstruction`](../../../../../../MeasureAndIntegration/DyadicPsiAbelReconstruction.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.DyadicGreenReturn`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenReturn.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cumulative_one_eq_mass0](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicPsiOctaveEnergySupplier.lean/declarations/cumulative-one-eq-mass0.md) | 54 | `result-track:83de7d0cd2685d38bb1a2bacf7e43d32dc37ba3cc551a4f6a1739fb0cf909438` |
| 2 | `theorem` | [augmentedEnergy_le_of_cumulative_uniform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicPsiOctaveEnergySupplier.lean/declarations/augmentedenergy-le-of-cumulative-uniform.md) | 74 | `result-track:424469fe7aa2bf98ac72ee7d0add9a27a59f3cf4fc53cf5dae5d0769d13d8df1` |
| 3 | `theorem` | [augmentedEnergy_le_of_psiEnvelope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicPsiOctaveEnergySupplier.lean/declarations/augmentedenergy-le-of-psienvelope.md) | 141 | `result-track:bb6c122e84ae78ccf1c6235d0e9e1e038d2aca8a4cd42cfb377a5c5c97896767` |
| 4 | `def` | [AllDyadicPsiOctaveSquareRootBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicPsiOctaveEnergySupplier.lean/declarations/alldyadicpsioctavesquarerootbound.md) | 159 | `declaration-track:88dee13ec30e6f2eaab8e510cbf3be39693b4165ca5d514f204c26c1d7eaf2a1` |
| 5 | `theorem` | [psiOctaveSquareRootBound_to_allDyadicEnergyBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicPsiOctaveEnergySupplier.lean/declarations/psioctavesquarerootbound-to-alldyadicenergybound.md) | 170 | `result-track:5f513dda1f7a7193ff1d1e06be5546d9bc32dac0607403b08e7e6373e863788e` |
| 6 | `theorem` | [riemannHypothesis_of_psiOctaveSquareRootBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicPsiOctaveEnergySupplier.lean/declarations/riemannhypothesis-of-psioctavesquarerootbound.md) | 243 | `result-track:1ce303a5b1a9fe652de8d905557998b72c76b2a8faf6cd4eaf99d2f78ad010b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4de5832f8d59ace5a972c8050fbdb24a50fdca1b78a0710adef06d23cbad6e01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/DyadicPsiOctaveEnergySupplier.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
