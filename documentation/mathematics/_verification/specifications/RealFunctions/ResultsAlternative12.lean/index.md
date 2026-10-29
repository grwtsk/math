# Verification target: Results Alternative12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2646414326a26657b7d03e76103a0a75d64c5ac9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ResultsAlternative12.lean/index.md) · [Full source](../../../../RealFunctions/ResultsAlternative12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2646414326a26657b7d03e76103a0a75d64c5ac9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaModeA](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetamodea.md) | 17 | `declaration-track:fcb0f74b6f1cfc45e225c1bb5b6c86dcf86f3254a64b1832c475c0a619d35839` |
| 2 | `def` | [thetaModeY](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetamodey.md) | 20 | `declaration-track:1f28f726edf8f76a77f029f41d8b1449ac6a99d28789d1681e38f5dac6477c41` |
| 3 | `def` | [thetaModeScore](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetamodescore.md) | 24 | `declaration-track:8fa68e40f404360cecc790d36591e7614ddeeb9082001ae51e20b44c1511c419` |
| 4 | `def` | [thetaModeCurvature](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetamodecurvature.md) | 28 | `declaration-track:5ecfa19c8526aedb1bd5f783206e5c8dc280789d3658055f469c40ae4259ce96` |
| 5 | `def` | [thetaPhiTermDeriv](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetaphitermderiv.md) | 32 | `declaration-track:ad72e80f9c0e62d737f86e35bea3763649e364e7938c1fea70cd66adfffeb210` |
| 6 | `def` | [thetaPhiTermSecondDeriv](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetaphitermsecondderiv.md) | 37 | `declaration-track:1033e0395ad2acea2143ed9c606705e0568593cc46ec78984dd1cb2d2067387d` |
| 7 | `theorem` | [thetaPhiTerm_eq_mode](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetaphiterm-eq-mode.md) | 43 | `result-track:055cc011bfced5f53381ac11ec4506b8e59101515de76c6246d3addaa6111bb1` |
| 8 | `theorem` | [hasDerivAt_thetaModeA](../../../../RealFunctions/ResultsAlternative12.lean/declarations/hasderivat-thetamodea.md) | 51 | `result-track:42097272e75fc4e971cc3c0bf5fe2dae49853aa468522caf24e8f401e72ca12f` |
| 9 | `theorem` | [hasDerivAt_thetaModeY](../../../../RealFunctions/ResultsAlternative12.lean/declarations/hasderivat-thetamodey.md) | 59 | `result-track:6f86b4c7ecd084013fedfbb015fbfc48e7f2581b17fb588c96e0eea05ab57de1` |
| 10 | `theorem` | [hasDerivAt_modePrefactor](../../../../RealFunctions/ResultsAlternative12.lean/declarations/hasderivat-modeprefactor.md) | 65 | `result-track:993a9d9f3acd95be08109fc3bf1d80dffa354fc5a9274f48354bf5431ed068bb` |
| 11 | `theorem` | [hasDerivAt_thetaPhiTerm_raw](../../../../RealFunctions/ResultsAlternative12.lean/declarations/hasderivat-thetaphiterm-raw.md) | 74 | `result-track:ec9b53de06364ab00f61bca978538ecd8feee84f983e98b6a0f78b2fb2199904` |
| 12 | `theorem` | [hasDerivAt_thetaPhiTermDeriv_raw](../../../../RealFunctions/ResultsAlternative12.lean/declarations/hasderivat-thetaphitermderiv-raw.md) | 88 | `result-track:2bec136ea9893dda51b75108e66f284193c4df9047387c92e7630713b55bd2ef` |
| 13 | `theorem` | [thetaPhiTermDeriv_eq_score](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetaphitermderiv-eq-score.md) | 99 | `result-track:e94df57d9ef55b8407ec26820c52e5d7b74eb23ced6dc61ff2b4ce41ec136b86` |
| 14 | `theorem` | [thetaPhiTermSecondDeriv_eq_score_curvature](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetaphitermsecondderiv-eq-score-curvature.md) | 112 | `result-track:7ad8081afa3122411f1ff40882f2a63023c538728fb24a37953074e860d0045f` |
| 15 | `theorem` | [hasDerivAt_thetaModeScore](../../../../RealFunctions/ResultsAlternative12.lean/declarations/hasderivat-thetamodescore.md) | 131 | `result-track:e5c151a99d371b5419ec95592ecd00a6268b9f0aee605d7481fdc3c2f05ec69d` |
| 16 | `theorem` | [thetaModeA_gt_three](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetamodea-gt-three.md) | 142 | `result-track:15d657f27d275b1d656f1081463a71838eb71d7ab00a82ffbc8bee69a122ba74` |
| 17 | `theorem` | [thetaModeA_le_thetaModeY](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetamodea-le-thetamodey.md) | 148 | `result-track:4e620a21bcfae056e4f6162d074dae191250b473c0b162825e09bf6539e8ac7b` |
| 18 | `theorem` | [thetaMode_den_pos](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetamode-den-pos.md) | 156 | `result-track:3316930eab3dd78b4894b34b16ac94c881f83781aae6b9dd1845ed219d9065eb` |
| 19 | `theorem` | [thetaModeCurvature_le](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetamodecurvature-le.md) | 163 | `result-track:768d4aecfcd6a71f60060ee89506a36b8c2367e4f2a03dc62cabac8084509274` |
| 20 | `theorem` | [abs_thetaModeScore_le](../../../../RealFunctions/ResultsAlternative12.lean/declarations/abs-thetamodescore-le.md) | 173 | `result-track:2a210c24529bb38ee41c7e087eef2f9cd9c53fe3c9d84aacb4a61f75fa37f934` |
| 21 | `theorem` | [abs_thetaModeCurvature_le](../../../../RealFunctions/ResultsAlternative12.lean/declarations/abs-thetamodecurvature-le.md) | 186 | `result-track:77cba473eb39a6865508cc97e6a5a40722cfcfd4b52927bd2f8de6a9048e804a` |
| 22 | `theorem` | [thetaModeScore_sub_nonnegative](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetamodescore-sub-nonnegative.md) | 202 | `result-track:dc30e2103486f4dc4911edc51e6060642e2b5f3fe11288ef884c8d94d3947a24` |
| 23 | `theorem` | [thetaModeScore_sub_le](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetamodescore-sub-le.md) | 213 | `result-track:31a6c63452f0d2386c06f4ac22f7613014b68e6fac4955641291ca351355950d` |
| 24 | `theorem` | [thetaPhiTerm_div_zero_eq](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetaphiterm-div-zero-eq.md) | 239 | `result-track:eff5fb47ce2cf314047c3b28e1f46491787a2761dc036e85c44d2eff256d0e85` |
| 25 | `theorem` | [thetaPhiTerm_div_zero_le](../../../../RealFunctions/ResultsAlternative12.lean/declarations/thetaphiterm-div-zero-le.md) | 257 | `result-track:0013e4720f3ea78dd026af296b83c8e22f59d1fcf60c60e926b279e8ff29143e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b85c52ed7b27ac7153d77575f55356515387330f77f1e0c0a7b58f2f6b975f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variante5e28e15354e347f073eef8b03b989d9050e0b2f4cf190beabab34664d7861a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
