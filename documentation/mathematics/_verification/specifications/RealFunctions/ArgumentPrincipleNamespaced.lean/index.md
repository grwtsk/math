# Verification target: Argument Principle Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc3325ef82f7cd630fb0320f1d8b11a205012003",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ArgumentPrinciple/Variant8bab7c2081d17393ec4b01c58276ac1faeda08f7b79bdccd8ddcb7d1ee0ede16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc3325ef82f7cd630fb0320f1d8b11a205012003`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ArgumentPrinciple/Variant8bab7c2081d17393ec4b01c58276ac1faeda08f7b79bdccd8ddcb7d1ee0ede16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ArgumentPrinciple/Variant8bab7c2081d17393ec4b01c58276ac1faeda08f7b79bdccd8ddcb7d1ee0ede16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Divisor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundaryZeroFreeCertificate](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/declarations/boundaryzerofreecertificate.md) | 23 | `declaration-track:25e34fabf492ac1df154000f21c04f1a82d3a8d5e7f58e15468a455636f8aa87` |
| 2 | `structure` | [ValidatedContourFunction](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/declarations/validatedcontourfunction.md) | 36 | `declaration-track:17485d0166ee7edf79d41ef483c0920cf59170b4599e354f71d945e96d9897ca` |
| 3 | `structure` | [FiniteContourPartition](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/declarations/finitecontourpartition.md) | 46 | `declaration-track:afb392b562c0fd8c52e68a6abca9d7a22769b6a32de7ac11d77d9b700164ec7f` |
| 4 | `structure` | [ContourIntegrationModel](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/declarations/contourintegrationmodel.md) | 53 | `declaration-track:0e23c34dfcc895c2ed04d5e3cc5e28f14c910a896e00c8e59513b1ac965fb5a2` |
| 5 | `structure` | [ValidatedArgumentIntegral](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/declarations/validatedargumentintegral.md) | 57 | `declaration-track:9b4afcd5f0bec3b11841300c68842873aa8f650393861663000df82aada04b84` |
| 6 | `structure` | [ArgumentPrincipleAuthority](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/declarations/argumentprincipleauthority.md) | 87 | `declaration-track:21b65d8f5bea75f37a61afa223308ee5f324a6a2130a0ab4aef49e42e2b0e8de` |
| 7 | `structure` | [ArgumentPrincipleCertificate](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/declarations/argumentprinciplecertificate.md) | 102 | `declaration-track:f00fd177f9a99ba2e0cc15bc711c00417b26e016e8b04bfa23f0c988d0c41930` |
| 8 | `def` | [ArgumentPrincipleCertificate.count](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/declarations/argumentprinciplecertificate-count.md) | 114 | `declaration-track:eed524d24c6a64a0686e10e3566884c370c3af5c8979a02a9f574befd1b91d7b` |
| 9 | `theorem` | [ArgumentPrincipleCertificate.countSound](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/declarations/argumentprinciplecertificate-countsound.md) | 125 | `result-track:2025b0b975e5f44be9625855d420fb9c5ffa704b9727f42736ba16a630b00e41` |
| 10 | `theorem` | [argumentPrincipleCertificate_sound](../../../../RealFunctions/ArgumentPrincipleNamespaced.lean/declarations/argumentprinciplecertificate-sound.md) | 140 | `result-track:3e72cf99665c0b7a20354989849f26791d16dfdf9c430772686032fb437224a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4e79f0b310daee58ad071f71599913dc43c9c6d3bd96b4b997f69479198277b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ArgumentPrinciple/Variant8bab7c2081d17393ec4b01c58276ac1faeda08f7b79bdccd8ddcb7d1ee0ede16.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ArgumentPrinciple/Variant8bab7c2081d17393ec4b01c58276ac1faeda08f7b79bdccd8ddcb7d1ee0ede16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
