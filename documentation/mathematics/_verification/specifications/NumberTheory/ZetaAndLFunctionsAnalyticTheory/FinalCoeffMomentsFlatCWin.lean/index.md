# Verification target: Final Coeff Moments Flat CWin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29e0adc8f7c08fc7fb9053a45620403942e640c6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29e0adc8f7c08fc7fb9053a45620403942e640c6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.PrimeSide.PP` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Moments` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Window` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Window.FlatAdm` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.PPUpper` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Window.Quartic` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.QuarticWindow.Family` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeffMoments_flat_cWin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/declarations/coeffmoments-flat-cwin.md) | 32 | `result-track:93b14a3994d265494b0a2d13815f86150cc0c2c51d0045ea0662066e5e963f2f` |
| 2 | `theorem` | [coeffMoments_flat_one_div](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/declarations/coeffmoments-flat-one-div.md) | 44 | `result-track:68a83ab8a7ee481b9ce7d9e55ca73b974192a319f437a16336b9c8844e32ea50` |
| 3 | `theorem` | [ppInput_of_PP](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/declarations/ppinput-of-pp.md) | 51 | `result-track:5b273a0b9cd27e5417de8a15f902b51815c21c3402f1c955db0b4c33798b2832` |
| 4 | `theorem` | [coeffMoments_flat_final](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/declarations/coeffmoments-flat-final.md) | 58 | `result-track:03fe5f6810817d0a13e20155e8fcccfe7e6fe47da6124e04e17a780b1c315fc3` |
| 5 | `theorem` | [coeffMoments_flat_final'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/declarations/coeffmoments-flat-final-source-edition-2.md) | 65 | `result-track:7d1fc4cca3adcc779184d750e1e943141bb2f3f1a5239976e419d7c18077abc9` |
| 6 | `theorem` | [momentsW_of_family_final](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/declarations/momentsw-of-family-final.md) | 73 | `result-track:9f0097d1a1bee0edf45fb19a516fe69b6dff4d92a98bd20d2e09842054a52f3e` |
| 7 | `theorem` | [coeffMoments_quartic_final](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/declarations/coeffmoments-quartic-final-source-edition-2.md) | 90 | `result-track:ce69f4eaaa1f2752abeaa694cad791f0b8558062f386925f7c63b79ad445bf17` |
| 8 | `theorem` | [coeffMoments_quartic_final'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/declarations/coeffmoments-quartic-final.md) | 100 | `result-track:72d636f43d439764b6f28c9a6264bf8c073e863c1178241d14e40629e1afa705` |
| 9 | `theorem` | [frobSq_Ppart_le_final](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalCoeffMomentsFlatCWin.lean/declarations/frobsq-ppart-le-final.md) | 107 | `result-track:cdd0d867bdb9d77cbcaa0d3f690eb9cd441b0f7550ecc9b3bca4c1df9ecc785a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=febdfeaf79e8f28e1ce7140cf10775ff2b0d77cdcfc91de8959747d0e189cf74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
