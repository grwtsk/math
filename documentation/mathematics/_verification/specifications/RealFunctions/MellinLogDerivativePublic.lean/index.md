# Verification target: Mellin Log Derivative Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ad20deb7be8627218d474dbd128ee8fb404071a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/MellinLogDerivativePublic.lean/index.md) · [Full source](../../../../RealFunctions/MellinLogDerivativePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ad20deb7be8627218d474dbd128ee8fb404071a`.

Source path: `GRWTSK/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiStep](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/centeredtwistedpsistep.md) | 40 | `declaration-track:b6209f08326eb809b99034ac41c7435f6f51d4bb90608278d6ff1d0630e5bc42` |
| 2 | `theorem` | [centeredTwistedPsiStep_natCast](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/centeredtwistedpsistep-natcast.md) | 48 | `result-track:2b2feeaa09bf60265090fae559ebca7356f040ab2fc22baf7e45a23066be29ce` |
| 3 | `def` | [centeredTwistedPsiMellin](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/centeredtwistedpsimellin.md) | 60 | `declaration-track:0d99a654089a4e12238d3822cc385e78020897ca36e54ac1814312d50e778af8` |
| 4 | `def` | [criticalRightHalfPlane](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/criticalrighthalfplane.md) | 66 | `declaration-track:ac313af5d33a8e59bebeb6dc9e832677c0f175c1fdc7a462a0422f320b075a64` |
| 5 | `theorem` | [isOpen_criticalRightHalfPlane](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/isopen-criticalrighthalfplane.md) | 70 | `result-track:ced0fe75b5ee73142ba48f7f94a8736e1b31f87528430b4580c9a93c75b2aa31` |
| 6 | `theorem` | [isPreconnected_criticalRightHalfPlane](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/ispreconnected-criticalrighthalfplane.md) | 74 | `result-track:0e816312a93a5ef84c0faf68cb26b84cba09b4932d1045d93c914afffd321b64` |
| 7 | `structure` | [MellinLogDerivativeSquare](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/mellinlogderivativesquare.md) | 86 | `declaration-track:802291554f0a9c5ea9dd241cd6600a2ffea7ecc5347a4f71b73e4112b2aba224` |
| 8 | `def` | [MellinLogDerivativeSquare.residual](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/mellinlogderivativesquare-residual.md) | 114 | `declaration-track:d2f266082e762c1670d7680c321d6c8d929fdd8b43bac1e6e5f44f9ec5e81284` |
| 9 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/mellinlogderivativesquare-differentiableon-residual.md) | 121 | `result-track:53b422fc329a310c90eb448e61ff182515e124ad7c4cd417b3ac06649a4033c5` |
| 10 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re.md) | 135 | `result-track:50e2378ccd20d6f059b884594fc9734437f4570fcf724d0119bda989ca272799` |
| 11 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/mellinlogderivativesquare-residual-eq-zero.md) | 148 | `result-track:02f9f1e1cceb1b7fdbec5a2e0ffc38fa1efbbbd8944be00a472c66ad40c0bda9` |
| 12 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](../../../../RealFunctions/MellinLogDerivativePublic.lean/declarations/zerofree-righthalfplane-of-mellinholomorphic.md) | 176 | `result-track:2bc6a25bf0480e44027d1d5337cc017b2414292262f7fec00931a4e2290bf5ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f31ea170df565d133806ac6fe6aae30fe248f14347d719aacab36a0beacb16a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean","GRWTSK/_verification/specifications/Analysis/MellinLogDerivative/Variantbf5ccf78ab3ffce5d2d9327bb7d7a71ce69bc9359031408d3351182662d9c27c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
