# Verification target: GRWTSK.Topology.GeneralTopology.TuranDensity.Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8ae7258174206f1181202316904ebe61c7617ad",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8ae7258174206f1181202316904ebe61c7617ad`.

Source path: `GRWTSK/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Bound` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [antitoneOn_extremalNumber_div_choose_two](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/declarations/antitoneon-extremalnumber-div-choose-two--d3b48048b578bb8acb23554e.md) | 55 | `result-track:d3b48048b578bb8acb23554effa2da9690884ec6523a464efe844be987c44b87` |
| 2 | `def` | [turanDensity](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/declarations/turandensity--60c911c3417d0a1f69ad83a5.md) | 89 | `declaration-track:60c911c3417d0a1f69ad83a5fa53aa1583597dc540cd45bd779e5ddac860555d` |
| 3 | `theorem` | [isGLB_turanDensity](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/declarations/isglb-turandensity--50d7b3f412bcaba689e430fe.md) | 92 | `result-track:50d7b3f412bcaba689e430fe0ea7f8ead15fa6d50474b2cf57cf7c56886da37f` |
| 4 | `theorem` | [turanDensity_eq_csInf](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/declarations/turandensity-eq-csinf--4723379698988a9612cdbcad.md) | 104 | `result-track:4723379698988a9612cdbcad3ce70a9085fc684b340c496e29610d26b6c10940` |
| 5 | `theorem` | [tendsto_turanDensity](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/declarations/tendsto-turandensity--3b0ec5988c79e4a6f598d27d.md) | 110 | `result-track:3b0ec5988c79e4a6f598d27dc2626647405a25c410e9b98b83b33b47149ffaa8` |
| 6 | `theorem` | [isEquivalent_extremalNumber](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/declarations/isequivalent-extremalnumber--1a222594f9fca946c0700da3.md) | 118 | `result-track:1a222594f9fca946c0700da3f4f67a6c9e8c68f2830930f9064b517ce8c5debf` |
| 7 | `theorem` | [eventually_isContained_of_card_edgeFinset](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/declarations/eventually-iscontained-of-card-edgefinset--d861e0dffee534c89ddf8946.md) | 131 | `result-track:d861e0dffee534c89ddf8946f642ea0ee8e5f30a34ead5919c866bbc57796644` |
| 8 | `abbrev` | [turanDensityConst](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/declarations/turandensityconst--004cb6f36cbb29f9b1d24838.md) | 161 | `declaration-track:004cb6f36cbb29f9b1d2483812601cd7bffa07a1c4d468176552e297688645a3` |
| 9 | `theorem` | [isContained_of_card_edgeFinset](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant3d044e2cc0fe92a59e6255fade16c541826edb931bdeb316972c0d2aac36fca8.lean/declarations/iscontained-of-card-edgefinset--420116b2610dbc125fe87110.md) | 168 | `result-track:420116b2610dbc125fe87110a5da6e636b3c97622a7446f259b4679aa558632a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
