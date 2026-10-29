# Verification target: Ring Hom Standard Smooth Standard Smooth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56a53fd59d3359bd6132942ae47d984d2401efba",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StandardSmooth/Variante423ca2224e1ddc1688f26e2bd0ac635d917d9ef39f2120cac00bf7b34546c3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56a53fd59d3359bd6132942ae47d984d2401efba`.

Source path: `GRWTSK/Algebra/StandardSmooth/Variante423ca2224e1ddc1688f26e2bd0ac635d917d9ef39f2120cac00bf7b34546c3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StandardSmooth/Variante423ca2224e1ddc1688f26e2bd0ac635d917d9ef39f2120cac00bf7b34546c3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.StandardSmooth` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Algebraize` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsStandardSmooth](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmooth.md) | 34 | `declaration-track:7ca5abc368b2c57c9064e3ae9d5a0da845e55ada9937dcc61e463c04da13f7d3` |
| 2 | `lemma` | [IsStandardSmooth.toAlgebra](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmooth-toalgebra.md) | 38 | `result-track:51b42bf619e7a42a589c01780ae6fec0ec68a9b88db975d1618e972f5078f50e` |
| 3 | `def` | [IsStandardSmoothOfRelativeDimension](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension.md) | 44 | `declaration-track:fad5ddf4fdb4042d53cfdfa099fafe653d4fe423d34c878266b2432bfaecfb8a` |
| 4 | `lemma` | [IsStandardSmoothOfRelativeDimension.toAlgebra](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-toalgebra.md) | 48 | `result-track:d26dc9146bdd36533ccdef6c7feea72c844e60a9ee4c65361c50876fff5c893b` |
| 5 | `lemma` | [IsStandardSmoothOfRelativeDimension.isStandardSmooth](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-isstandardsmooth.md) | 52 | `result-track:89b8cdc58f10ef72e1eaa920a76837a1680d6f92f0f53494773688c4f119f2f6` |
| 6 | `lemma` | [IsStandardSmoothOfRelativeDimension.id](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-id.md) | 61 | `result-track:d07b6bfe6cf7f682993411167de493f5b2d1ccb14b17e1b398adc892f4212a2a` |
| 7 | `lemma` | [IsStandardSmoothOfRelativeDimension.equiv](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-equiv.md) | 65 | `result-track:6adaedc57f47455ddc4a9b69eaae234d6893ee9cc53cb22d504db14d7553dbde` |
| 8 | `lemma` | [IsStandardSmooth.comp](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmooth-comp.md) | 72 | `result-track:f3673f4e773c099fddec66f4717658c8203d726c278730f4ed9779f00f0295b4` |
| 9 | `lemma` | [IsStandardSmoothOfRelativeDimension.comp](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-comp.md) | 79 | `result-track:2ba7cf9c48d6029e716183b51ba97925e6c3c6c088e2c592265e1529c07cfca6` |
| 10 | `lemma` | [isStandardSmooth_stableUnderComposition](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmooth-stableundercomposition.md) | 87 | `result-track:5aa1e3c0817943ba43eb6cca3f3e386c15fd883600797bd5bf77fee86cbec1ff` |
| 11 | `lemma` | [isStandardSmooth_respectsIso](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmooth-respectsiso.md) | 91 | `result-track:64c13c772bbbd2961b2e9ff84bb1837cd2a4b04649a756fbaf784cd6875a2d15` |
| 12 | `lemma` | [isStandardSmoothOfRelativeDimension_respectsIso](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-respectsiso.md) | 96 | `result-track:dcfac559c98eed1f1793cc732d96825646f4f90b3c367482cea03def145dbdff` |
| 13 | `lemma` | [isStandardSmooth_isStableUnderBaseChange](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmooth-isstableunderbasechange.md) | 105 | `result-track:573c7f44dc2c313f7cc795babc56848572c32178c46f0561465a04287f152e9e` |
| 14 | `lemma` | [isStandardSmoothOfRelativeDimension_isStableUnderBaseChange](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-isstableunderbasechange.md) | 118 | `result-track:d44b05f737032b52aeb42208d00d325320aa2b59b69b996ab3d4ea3ccb896f53` |
| 15 | `lemma` | [IsStandardSmoothOfRelativeDimension.algebraMap_isLocalizationAway](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-algebramap-islocalizationaway.md) | 131 | `result-track:8d96927c5b1edc063a61da763c5e2a4eed579f12aa056a63a055d84648b9dbab` |
| 16 | `lemma` | [isStandardSmooth_localizationPreserves](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmooth-localizationpreserves.md) | 141 | `result-track:5169e0d649654df915cc05483d083c301eaf34704da0e2557d6f33cf4c964bea` |
| 17 | `lemma` | [isStandardSmoothOfRelativeDimension_localizationPreserves](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-localizationpreserves.md) | 144 | `result-track:b85bbf57cdc9e05faf2e9f152e64ad60fd8cfc9a5a164b1370df173aa4e1d2c8` |
| 18 | `lemma` | [isStandardSmooth_holdsForLocalizationAway](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmooth-holdsforlocalizationaway.md) | 148 | `result-track:8f0b9dd0d433c0ac370ffb1993b7605f80743a2a9a525d3f1e081f1c9816031a` |
| 19 | `lemma` | [isStandardSmoothOfRelativeDimension_holdsForLocalizationAway](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-holdsforlocalizationaway.md) | 153 | `result-track:81165058a9ad25c25c218230078b6f6ccb73f054ca9e36677e44d6ccbc0dcabf` |
| 20 | `lemma` | [isStandardSmooth_stableUnderCompositionWithLocalizationAway](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmooth-stableundercompositionwithlocalizationaway.md) | 158 | `result-track:c0d10de9735725e15567c3ba0c72c110e44f84d28827ba753a70e5271c356e13` |
| 21 | `lemma` | [isStandardSmoothOfRelativeDimension_stableUnderCompositionWithLocalizationAway](../../../../CommutativeAlgebra/RingHomStandardSmoothStandardSmooth.lean/declarations/isstandardsmoothofrelativedimension-stableundercompositionwithlocalizati.md) | 163 | `result-track:c074b79e4e66444557d91e54f48664395c19d4725bc34f189ca7e37aba5bc329` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdc7e1f1b54eb227b84e0e262dfac37a2097155a6a00e492423edbfaabac586d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/StandardSmooth/Variante423ca2224e1ddc1688f26e2bd0ac635d917d9ef39f2120cac00bf7b34546c3b.lean","GRWTSK/_verification/specifications/Algebra/StandardSmooth/Variante423ca2224e1ddc1688f26e2bd0ac635d917d9ef39f2120cac00bf7b34546c3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
