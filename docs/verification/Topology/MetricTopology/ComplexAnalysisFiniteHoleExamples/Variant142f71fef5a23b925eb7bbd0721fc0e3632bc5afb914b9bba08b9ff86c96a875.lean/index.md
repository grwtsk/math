# Verification target: GRWTSK.Topology.MetricTopology.ComplexAnalysisFiniteHoleExamples.Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9786a7a2b67ccd0bc664a6e357c52778c9e5ecfe",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9786a7a2b67ccd0bc664a6e357c52778c9e5ecfe`.

Source path: `GRWTSK/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.FiniteHoleGeometry` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroHoleExample](../../../../../mathematics/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/declarations/zeroholeexample--c67ca2a3809ce9ebedcfb585.md) | 20 | `declaration-track:c67ca2a3809ce9ebedcfb5858fa23913fb87c175da87be51ea61b06c27e5f1e0` |
| 2 | `def` | [oneCentralHoleExample](../../../../../mathematics/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/declarations/onecentralholeexample--30a19723ccd3b386688ceb36.md) | 25 | `declaration-track:30a19723ccd3b386688ceb367eacf6586120221294b2fea5fb7c75d0c1f3f14b` |
| 3 | `def` | [twoSeparatedHolesExample](../../../../../mathematics/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/declarations/twoseparatedholesexample--51e4670b7d1bdff2495df6a4.md) | 31 | `declaration-track:51e4670b7d1bdff2495df6a4441fcce89f4376c1b55a20d22beea63ce731b82f` |
| 4 | `def` | [translatedHoleExample](../../../../../mathematics/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/declarations/translatedholeexample--f566cb34dd52f7a7f14ef263.md) | 42 | `declaration-track:f566cb34dd52f7a7f14ef2636b7b9109eaf9dcca361057631d023692839d57bf` |
| 5 | `def` | [scaledHoleExample](../../../../../mathematics/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/declarations/scaledholeexample--55c14a61f89b437af67cac5a.md) | 48 | `declaration-track:55c14a61f89b437af67cac5a63ced31537041ddcd34a989c802608be88bacc7e` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/declarations/example--1bd295fdf6a48f5e8362b37b.md) | 53 | `declaration-track:1bd295fdf6a48f5e8362b37b38fb018ae345a77a4c12163b9f13062baf53a528` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/declarations/example--61d09acaa0b8f9cc9334ee64.md) | 54 | `declaration-track:61d09acaa0b8f9cc9334ee6412bf9196f7548f3e1a629572f33ce5e18042b639` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ComplexAnalysisFiniteHoleExamples/Variant142f71fef5a23b925eb7bbd0721fc0e3632bc5afb914b9bba08b9ff86c96a875.lean/declarations/example--aaa57ddc400fb40be54b1d69.md) | 55 | `declaration-track:aaa57ddc400fb40be54b1d696669355c801cd472a603b71bddfae28dfafd7cac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
