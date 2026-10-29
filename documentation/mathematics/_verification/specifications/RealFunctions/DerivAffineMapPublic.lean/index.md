# Verification target: Deriv Affine Map Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "516a5ea02b5dd0bd2ce18f97531d632265f4317b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variante2b25273785aaea55b4908ab938a71bf73f9f8979f8b684af87e4c1d1ee6de53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DerivAffineMapPublic.lean/index.md) · [Full source](../../../../RealFunctions/DerivAffineMapPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `516a5ea02b5dd0bd2ce18f97531d632265f4317b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variante2b25273785aaea55b4908ab938a71bf73f9f8979f8b684af87e4c1d1ee6de53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variante2b25273785aaea55b4908ab938a71bf73f9f8979f8b684af87e4c1d1ee6de53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAtFilter](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/hasderivatfilter.md) | 36 | `result-track:77d6794abc7601d589f2e14274d01545ff624f8e4a0529d0822ff5faa993facb` |
| 2 | `theorem` | [hasStrictDerivAt](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/hasstrictderivat.md) | 40 | `result-track:ed341f2207a6cd512434c41e2db9d1abeccf2202be49fe3f4c1b7c54cf640d35` |
| 3 | `theorem` | [hasDerivWithinAt](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/hasderivwithinat.md) | 41 | `result-track:f048b36dde50e33320a5e1317d8f9839c6b85e76821b8d17e4c79f5a7a5901fc` |
| 4 | `theorem` | [hasDerivAt](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/hasderivat.md) | 42 | `result-track:01f5d8ec3731366a87f6be4f5512ab2c564cb798d310225f0713410054819d5d` |
| 5 | `theorem` | [derivWithin](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/derivwithin.md) | 44 | `result-track:c8cf613c4f73fb42ddb85053e9921ca67c843f913b1f9446df17feed44884886` |
| 6 | `theorem` | [deriv](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/deriv.md) | 48 | `result-track:7171c5833a4c84745671ee1ef863e299b7a6d75725c854bf60b5841fbb789559` |
| 7 | `theorem` | [differentiableAt](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/differentiableat.md) | 50 | `result-track:f35eaf25581091df4ed0b1f136de177fecf982dea6f6006a2884ed06fdff102d` |
| 8 | `theorem` | [differentiable](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/differentiable.md) | 51 | `result-track:c38b6bb038489abdd6f5a1724286e1517502ed6f50edd3bf2a6b2a045991e28f` |
| 9 | `theorem` | [differentiableWithinAt](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/differentiablewithinat.md) | 53 | `result-track:adfbda91f094439ba0f8401dc614223f2b9d1106a1d9435659a15966d58a4013` |
| 10 | `theorem` | [differentiableOn](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/differentiableon.md) | 56 | `result-track:4532694e32a473a5c6a64f68a016c93ad4909da7d8c963741b04d5ec726fc7a0` |
| 11 | `theorem` | [hasStrictDerivAt_lineMap](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/hasstrictderivat-linemap.md) | 65 | `result-track:a73a7b787a957b516c595a468b0fed650685e6959ac4a772d78c2d73c0c03d22` |
| 12 | `theorem` | [hasDerivAt_lineMap](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/hasderivat-linemap.md) | 68 | `result-track:7246baeb72f4526595ecbb3be750a63937bb0682f721bc8d4b9f6fdf0ccfb620` |
| 13 | `theorem` | [hasDerivWithinAt_lineMap](../../../../RealFunctions/DerivAffineMapPublic.lean/declarations/hasderivwithinat-linemap.md) | 71 | `result-track:44d479bab9ddab14c7a2db707457c31f175131c4e12954cbd85c6d10271e655b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d70ab194f62a74fa908df0078fed5819471521e49f39a795168baf77f3bece5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variante2b25273785aaea55b4908ab938a71bf73f9f8979f8b684af87e4c1d1ee6de53.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variante2b25273785aaea55b4908ab938a71bf73f9f8979f8b684af87e4c1d1ee6de53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
