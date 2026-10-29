# Verification target: Cont Diff Bounds Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b36b2a75586c47b7eb85e09adf539d470eb7cf2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ContDiffBoundsBounds.lean/index.md) · [Full source](../../../../RealFunctions/ContDiffBoundsBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b36b2a75586c47b7eb85e09adf539d470eb7cf2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Multinomial` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousLinearMap.norm_iteratedFDerivWithin_le_of_bilinear_aux](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/continuouslinearmap-norm-iteratedfderivwithin-le-of-bilinear-aux.md) | 38 | `result-track:43d4b1301397fed8c24c2d1ed676fe94f2d26d3adbcd9368ea9a0a1979503069` |
| 2 | `theorem` | [ContinuousLinearMap.norm_iteratedFDerivWithin_le_of_bilinear](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/continuouslinearmap-norm-iteratedfderivwithin-le-of-bilinear.md) | 125 | `result-track:8005237426554a16828aac62d1c6f560ae446098491abb2ba7ae5217d887c65e` |
| 3 | `theorem` | [ContinuousLinearMap.norm_iteratedFDeriv_le_of_bilinear](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/continuouslinearmap-norm-iteratedfderiv-le-of-bilinear.md) | 206 | `result-track:fac8f50bf62da6294913c424485f701f74f2b162d1186090f30243111783e70c` |
| 4 | `theorem` | [ContinuousLinearMap.norm_iteratedFDerivWithin_le_of_bilinear_of_le_one](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/continuouslinearmap-norm-iteratedfderivwithin-le-of-bilinear-of-le-one.md) | 218 | `result-track:063e1ccc06dfc252ef106b79264090469b4d6d301db4d8a395ab7b4ce387797e` |
| 5 | `theorem` | [ContinuousLinearMap.norm_iteratedFDeriv_le_of_bilinear_of_le_one](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/continuouslinearmap-norm-iteratedfderiv-le-of-bilinear-of-le-one.md) | 230 | `result-track:a66a62a91ca16712ed44f1f74d0804b08a0b2eeeb1a8092b983191ec3558415b` |
| 6 | `theorem` | [norm_iteratedFDerivWithin_smul_le](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderivwithin-smul-le.md) | 245 | `result-track:d06accc54e88507c1f8aab4f16478e0dce222f2d6710624d7abd9379a3ee881f` |
| 7 | `theorem` | [norm_iteratedFDeriv_smul_le](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderiv-smul-le.md) | 254 | `result-track:c2ea9fda260d608715bc6e96c9b73f7ef243ffd767abeb20fc171f7a9d2f5660` |
| 8 | `theorem` | [norm_iteratedFDerivWithin_mul_le](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderivwithin-mul-le.md) | 268 | `result-track:cc7e97227e8290acc8b74d0b0c90f01a0116bf225b0ad1243753281506c6d650` |
| 9 | `theorem` | [norm_iteratedFDeriv_mul_le](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderiv-mul-le.md) | 278 | `result-track:f5503c409f9e265ca66adc17c724df4557cb823aa5bb3a2444684eea187a12ac` |
| 10 | `theorem` | [norm_iteratedFDerivWithin_prod_le](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderivwithin-prod-le.md) | 288 | `result-track:1329920fc76e6e156d421a117241a45cb1b427cb76162ddc79918f9a9d85c7cc` |
| 11 | `theorem` | [norm_iteratedFDeriv_prod_le](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderiv-prod-le.md) | 332 | `result-track:c3b75597f71c93c4684fb8406fc4e1bc39ca076594dc12c2ebcd564b023f5842` |
| 12 | `theorem` | [norm_iteratedFDerivWithin_comp_le_aux](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderivwithin-comp-le-aux.md) | 350 | `result-track:e45207926c51df0ba9b6e5c8575e55f4f7034d149eda5fa2a23dc1456fb2548b` |
| 13 | `theorem` | [norm_iteratedFDerivWithin_comp_le](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderivwithin-comp-le.md) | 461 | `result-track:7e029a9a00b37b9634ab9a42eb2a472758568377a6cb2bd830704265c2ac2797` |
| 14 | `theorem` | [norm_iteratedFDeriv_comp_le](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderiv-comp-le.md) | 512 | `result-track:7d2bc32cdd36c072b0543f813397c64552ec1ff7d516d8eda88bbb8e4f044450` |
| 15 | `theorem` | [norm_iteratedFDerivWithin_clm_apply](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderivwithin-clm-apply.md) | 523 | `result-track:98eceddf991fabdb4c817e3afbf5c0e12fb6374fb7f9622efc51386da7740968` |
| 16 | `theorem` | [norm_iteratedFDeriv_clm_apply](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderiv-clm-apply.md) | 537 | `result-track:0460b49cabd7b04a9a5beda4a281f091f7a6d85866e73cd017fe1f94ab4a62d9` |
| 17 | `theorem` | [norm_iteratedFDerivWithin_clm_apply_const](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderivwithin-clm-apply-const.md) | 545 | `result-track:a8e09281cb2a78de4f98885e04fb88c629401c85b960e999eee648e0bcf14915` |
| 18 | `theorem` | [norm_iteratedFDeriv_clm_apply_const](../../../../RealFunctions/ContDiffBoundsBounds.lean/declarations/norm-iteratedfderiv-clm-apply-const.md) | 558 | `result-track:07264dde4e6c18255abdae0ab471206f85a31cb9ad7a5479071d6ee735f50643` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfaa887cf400ec1120b8b9b0d005e8f46245954f3971fe2d04c353f06265b228 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
