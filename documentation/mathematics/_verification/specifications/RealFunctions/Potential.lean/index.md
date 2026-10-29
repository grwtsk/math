# Verification target: Potential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "449861e217adb013f58d96a1946648ee2c73ddef",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant8e2ef62cce312e452837d4c9a504ed97e48f84a9456b0774996cbc3e18476a19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/Potential.lean/index.md) · [Full source](../../../../RealFunctions/Potential.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `449861e217adb013f58d96a1946648ee2c73ddef`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant8e2ef62cce312e452837d4c9a504ed97e48f84a9456b0774996cbc3e18476a19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant8e2ef62cce312e452837d4c9a504ed97e48f84a9456b0774996cbc3e18476a19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Polynomial.Derivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cubicPotential](../../../../RealFunctions/Potential.lean/declarations/cubicpotential.md) | 18 | `declaration-track:836b7ac34f50785cad70f3cee5ff15692d2a785be77f366ab0f96f626ba36f2d` |
| 2 | `theorem` | [eval_cubicPotential](../../../../RealFunctions/Potential.lean/declarations/eval-cubicpotential.md) | 24 | `result-track:0e71343095da940e7fa48a6cf9ad97d31ead91f084ba562cbef75da1d30243b7` |
| 3 | `theorem` | [derivative_cubicPotential](../../../../RealFunctions/Potential.lean/declarations/derivative-cubicpotential.md) | 33 | `result-track:49a00253dca3228a69968306840d62f1fc9496ff2a4e28ca95b0a43f32030bff` |
| 4 | `theorem` | [hasDerivAt_cubicPotential](../../../../RealFunctions/Potential.lean/declarations/hasderivat-cubicpotential.md) | 45 | `result-track:e236dc7d6ce37703311f3bb5a7dc7e5d74eb96a4f53ff3013f4cb2fd12ee8397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de5037dbc6537056c81fb1ab19c43b9618cb9324a1ce75dcadc248b01deebf72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant8e2ef62cce312e452837d4c9a504ed97e48f84a9456b0774996cbc3e18476a19.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant8e2ef62cce312e452837d4c9a504ed97e48f84a9456b0774996cbc3e18476a19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
