# Verification target: Actual Mellin Dilation Attempt03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3fd0840a6444a591271ae32dacf46cbb458ff1c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt03/Variantdb614bdd3be6eb6b49f803cfda226ac556ad65c59a3138778ee3901793bcd76a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/index.md) · [Full source](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3fd0840a6444a591271ae32dacf46cbb458ff1c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt03/Variantdb614bdd3be6eb6b49f803cfda226ac556ad65c59a3138778ee3901793bcd76a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt03/Variantdb614bdd3be6eb6b49f803cfda226ac556ad65c59a3138778ee3901793bcd76a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `UnnormalizedDilation` — import line 1; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mellinConvergent_unnormalized](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/mellinconvergent-unnormalized.md) | 14 | `result-track:7484e86f5fca04ade3ac58a12563a5d47985d74d579eb92baff413d3b7eb83a4` |
| 2 | `theorem` | [mellinConvergent_normalized](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/mellinconvergent-normalized.md) | 33 | `result-track:f8277365a24f90e34a05bb076629ffa70dda4fe9bf62a7efcd0d4f52435b114f` |
| 3 | `theorem` | [sqrt_cpow](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/sqrt-cpow.md) | 38 | `result-track:2807e3f0ac7172caa33ba5926f490714873b12587744036fa43f432c975a8067` |
| 4 | `theorem` | [mellin_normalized_func](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/mellin-normalized-func.md) | 43 | `result-track:6f6439b8f3918ea79a3a44127fab39c94b43f6e35e1d5259df157a3f3c5e6727` |
| 5 | `theorem` | [actual_unnormalized_mellinConvergent](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/actual-unnormalized-mellinconvergent.md) | 50 | `result-track:4417bf9ddb69037e8e025705b9f492b283af620fb99536dccb0991e90659dbb6` |
| 6 | `theorem` | [actual_normalized_mellinConvergent](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/actual-normalized-mellinconvergent.md) | 55 | `result-track:2124c806cb08179449461425787508ad868e327c86059f585453a16044525d37` |
| 7 | `theorem` | [actual_unnormalized_mellin](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/actual-unnormalized-mellin.md) | 60 | `result-track:d031b4cf72a33a2a6074de17c2412d130a64e567fac6122e499d410985f84fff` |
| 8 | `theorem` | [actual_normalized_mellin](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/actual-normalized-mellin.md) | 65 | `result-track:94e32f84e954983924c98a7f84f064b061c86f6096f0ea66e1a06565918f70f8` |
| 9 | `theorem` | [actual_dilated_class_mellinConvergent](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/actual-dilated-class-mellinconvergent.md) | 70 | `result-track:4c00ce84954a481b87ae456a23a8ff6f5d8c0a6562fc2228a1682e3b069dcebf` |
| 10 | `theorem` | [actual_dilated_class_mellin](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/actual-dilated-class-mellin.md) | 77 | `result-track:552114e067fe4f6ca27d117da38b258b065097b4a8edbc2732fcca144eb67fa4` |
| 11 | `theorem` | [actual_integer_class_mellin](../../../../RealFunctions/ActualMellinDilationAttempt03.lean/declarations/actual-integer-class-mellin.md) | 86 | `result-track:02466ae6f788f9af211231715bcb56e8d74474c14911d2d5202bb567faa820fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fad83d8e79a0b6c1e69b2cace3df8585923dc4be8663893953a5af88503a0ca5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt03/Variantdb614bdd3be6eb6b49f803cfda226ac556ad65c59a3138778ee3901793bcd76a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt03/Variantdb614bdd3be6eb6b49f803cfda226ac556ad65c59a3138778ee3901793bcd76a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
