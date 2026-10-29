# Verification target: Partial Correctness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bf107ea2deeb87097242197ff29c69173d4a122",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PartialCorrectness.lean/index.md) · [Full source](../../../../GeneralTopology/PartialCorrectness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bf107ea2deeb87097242197ff29c69173d4a122`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Correctness` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Contrib.Sinc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arsinh` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [evalDual?_val_correct](../../../../GeneralTopology/PartialCorrectness.lean/declarations/evaldual-val-correct.md) | 43 | `result-track:878bbf4cbabb246f3151734bee3f5006691d793cbc4929f2d597edda9821269d` |
| 2 | `theorem` | [evalDual?1_val_correct](../../../../GeneralTopology/PartialCorrectness.lean/declarations/evaldual-1-val-correct.md) | 223 | `result-track:13658768f6c0df4fbe30aff4a69789d4a144eec35fdb6fff2508d88322b837ac` |
| 3 | `theorem` | [evalFunc1_inv](../../../../GeneralTopology/PartialCorrectness.lean/declarations/evalfunc1-inv.md) | 232 | `result-track:62648952be871e885d02eabc7c10af4577275103f3cd0ea247c307660355d732` |
| 4 | `theorem` | [evalFunc1_differentiableAt_of_evalDual?](../../../../GeneralTopology/PartialCorrectness.lean/declarations/evalfunc1-differentiableat-of-evaldual.md) | 236 | `result-track:6785a17222b8324223873d6e72c5d23b6fb3ae68b4b59fa6f77f7c173b202e46` |
| 5 | `theorem` | [evalDual?_der_correct](../../../../GeneralTopology/PartialCorrectness.lean/declarations/evaldual-der-correct.md) | 407 | `result-track:3fbdbd418ff38c9901431968f84e4b1b98165e4b524646b6e56047aa0008e930` |
| 6 | `theorem` | [evalDual?1_correct](../../../../GeneralTopology/PartialCorrectness.lean/declarations/evaldual-1-correct.md) | 829 | `result-track:ace2ecaa657f93189691c1d3b218610cda2a5f60e1ad6e674f038cad79551880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f055b65adab0d7fecfa8d15790b7d8ac694bb9c0e2587f6aa6351b13f709f9cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
