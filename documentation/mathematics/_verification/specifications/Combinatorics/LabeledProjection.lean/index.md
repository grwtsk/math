# Verification target: Labeled Projection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e538a749042fe26ef42907801f9a711266b2d588",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant8c81623afe5a87566b297e146f7ade6ab51d4f3bd910d89b3867f6d0b693f87e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/LabeledProjection.lean/index.md) · [Full source](../../../../Combinatorics/LabeledProjection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e538a749042fe26ef42907801f9a711266b2d588`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant8c81623afe5a87566b297e146f7ade6ab51d4f3bd910d89b3867f6d0b693f87e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant8c81623afe5a87566b297e146f7ade6ab51d4f3bd910d89b3867f6d0b693f87e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.DerivedLabel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LabelNormalizedProjectionCode](../../../../Combinatorics/LabeledProjection.lean/declarations/labelnormalizedprojectioncode.md) | 21 | `declaration-track:3104a987b36e33668d9ddf78101fac2912920281f9ad7f00a06f5c6a13d52175` |
| 2 | `def` | [labeledProjectionCode](../../../../Combinatorics/LabeledProjection.lean/declarations/labeledprojectioncode.md) | 26 | `declaration-track:d038d3cb81b21dd3a0c7b55bdab36701eb457e25b51027c7561e8b3b1308effd` |
| 3 | `theorem` | [labeledProjectionCode_injective](../../../../Combinatorics/LabeledProjection.lean/declarations/labeledprojectioncode-injective.md) | 33 | `result-track:f791c9dab47d9dbedecd72c7d3718c399a15e52639621f364aef3f472ac071d0` |
| 4 | `def` | [liftProjectionOrbit](../../../../Combinatorics/LabeledProjection.lean/declarations/liftprojectionorbit.md) | 42 | `declaration-track:24ac8527102d60d7c3f944248d80aec72b45a3bd56d884d670172084f96c2454` |
| 5 | `theorem` | [liftProjectionOrbit_mem](../../../../Combinatorics/LabeledProjection.lean/declarations/liftprojectionorbit-mem.md) | 54 | `result-track:1f362b3760af5e3b001922af1d7e0499237d602ae0aea51747a2a764f8f61ff5` |
| 6 | `theorem` | [liftProjectionOrbit_minimal](../../../../Combinatorics/LabeledProjection.lean/declarations/liftprojectionorbit-minimal.md) | 66 | `result-track:704167f8626e0959675fc54bbd18479b08e87a2d80810a805ad3a2411d6c3ae1` |
| 7 | `theorem` | [liftProjectionOrbit_unique](../../../../Combinatorics/LabeledProjection.lean/declarations/liftprojectionorbit-unique.md) | 82 | `result-track:24e06705b4bbaa267e2a51d60c52d6a268ed69fcd64dc2077f4ab8cbbe36da34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b151a33a52bfeb0f4c1c373f8508f70bc85fd809342cffd4b038f44b604bde7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant8c81623afe5a87566b297e146f7ade6ab51d4f3bd910d89b3867f6d0b693f87e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant8c81623afe5a87566b297e146f7ade6ab51d4f3bd910d89b3867f6d0b693f87e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
