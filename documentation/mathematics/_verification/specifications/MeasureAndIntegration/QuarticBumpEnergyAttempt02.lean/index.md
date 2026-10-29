# Verification target: Quartic Bump Energy Attempt02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74a63aa526883cd5ac992565ec55210bf25b64e0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variant4384ec858e351305186c6ae05d322ec9b8820d7441f83fb684f2577c39d863e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/index.md) · [Full source](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74a63aa526883cd5ac992565ec55210bf25b64e0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variant4384ec858e351305186c6ae05d322ec9b8820d7441f83fb684f2577c39d863e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variant4384ec858e351305186c6ae05d322ec9b8820d7441f83fb684f2577c39d863e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/rayvalue.md) | 12 | `declaration-track:0a3ecaabaef51a02efb212c81f38dede781d90ed452baf4bef68f0e8e080ffca` |
| 2 | `def` | [raySlope](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/rayslope.md) | 13 | `declaration-track:aeee0759e34541635d3e408579378e80787a80d1fdb985a50dc36c0bd5c5b990` |
| 3 | `def` | [weightedMass](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/weightedmass.md) | 14 | `declaration-track:0526e752ba7f4db05e23163293811bdd6d6d8ec0d72856077424b185d2387b6d` |
| 4 | `def` | [weightedEnergy](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/weightedenergy.md) | 15 | `declaration-track:c0dbbb01c27b22a27cffdade59ddc2f71daa93f2e8d15307bc50e9db8b262a82` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/rayvalue-hasderivat.md) | 17 | `result-track:31b776afc1e8b9b47d524124fa522f3e9732cf40dce97ed71b6d2af41f4b03ec` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/rayslope-hasderivat.md) | 25 | `result-track:3873e991fb0042c269e013cb9ae11add55b9c1fbaafcf77b4ff9257df7cf9085` |
| 7 | `theorem` | [rayValue_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/rayvalue-continuous.md) | 33 | `result-track:dc9ed264db770a6d9188f7149a0f3fcf626a33fd9270e139d4c4ec222e14fa61` |
| 8 | `theorem` | [raySlope_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/rayslope-continuous.md) | 36 | `result-track:9cafbe9b382cc4d4c8e5e0de1c864ec9bb7222f6c608f81d170b46d529ff3cc5` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/weightedray-hasderivat.md) | 39 | `result-track:3e3b70f6b5a7388cd9085b073661a0f436b152950b0e890aa81cdbb679592390` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/conjugateray-hasderivat.md) | 51 | `result-track:84597e1376c1c104c2e655bb52755072184109ea36e9045564eb2b5deaeed4f9` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/mass-integrand-continuous.md) | 55 | `result-track:8080054d9bb3aca568af0e1744072de8a40a432bde82ccbe77899021c431d1e2` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/energy-integrand-continuous.md) | 59 | `result-track:bebf21f4b7cc84c060b3e226c04a0698f18bba476b163902b6e7f85414e1f0ae` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/weightedenergy-nonneg.md) | 63 | `result-track:0324d62f2600bf3aaf6b812a1b6a51ef4249dcd471c961cc5a00ade759edcd10` |
| 14 | `theorem` | [rayValue_zero](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/rayvalue-zero.md) | 67 | `result-track:a2bc9075c2b9be7d436a927d54c5a92065c6925d3866113c88b3d8e744ed56be` |
| 15 | `theorem` | [weightedMass_pos](../../../../MeasureAndIntegration/QuarticBumpEnergyAttempt02.lean/declarations/weightedmass-pos.md) | 70 | `result-track:fc35d955898d03382b3a26dae0f4fed3f19acbc9b177361d7b6f8fa981ce6263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31d72de9c5cfbae65075ba1839c38728a09d5e1c1135dd2727a064cad837e9c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variant4384ec858e351305186c6ae05d322ec9b8820d7441f83fb684f2577c39d863e9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variant4384ec858e351305186c6ae05d322ec9b8820d7441f83fb684f2577c39d863e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
