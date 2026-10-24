# Verification target: GRWTSK.Topology.GeneralTopology.TuranDensity.Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0872ba82d0a75b157a410be7c6251980042ec45c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0872ba82d0a75b157a410be7c6251980042ec45c`.

Source path: `GRWTSK/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Bound` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [antitoneOn_extremalNumber_div_choose_two](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/declarations/antitoneon-extremalnumber-div-choose-two--cea563ae833fb28de121ab30.md) | 47 | `result-track:cea563ae833fb28de121ab30008ad671abc831e5a7dc6a854afc9b60727156f8` |
| 2 | `def` | [turanDensity](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/declarations/turandensity--2a0aee6ce3eb9eb8232d9b5f.md) | 81 | `declaration-track:2a0aee6ce3eb9eb8232d9b5fd00cb004b005bf0aa70905453e0f8c98814451eb` |
| 3 | `theorem` | [isGLB_turanDensity](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/declarations/isglb-turandensity--f2064c80f8d67418b9a47d3d.md) | 84 | `result-track:f2064c80f8d67418b9a47d3d0aff895a514149ed26f0b973f0d405ef99a85a29` |
| 4 | `theorem` | [turanDensity_eq_csInf](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/declarations/turandensity-eq-csinf--db1ec0f63a6261470e7433d2.md) | 96 | `result-track:db1ec0f63a6261470e7433d2ab8236c0948439b07433acf2036f973c6fddc71c` |
| 5 | `theorem` | [tendsto_turanDensity](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/declarations/tendsto-turandensity--3337ed6b4003427eac18ff33.md) | 102 | `result-track:3337ed6b4003427eac18ff3302e4749f2ca9e134fc6448c88f709d05bf57c839` |
| 6 | `theorem` | [isEquivalent_extremalNumber](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/declarations/isequivalent-extremalnumber--c05985aa1359d511df54da01.md) | 110 | `result-track:c05985aa1359d511df54da01f5652b9027130d589620ab58637d1de6dce66be2` |
| 7 | `theorem` | [eventually_isContained_of_card_edgeFinset](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/declarations/eventually-iscontained-of-card-edgefinset--46a8f445d010c84be245a49e.md) | 123 | `result-track:46a8f445d010c84be245a49e99cc643e2ae2410df07f5f982513c5eff7401944` |
| 8 | `abbrev` | [turanDensityConst](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/declarations/turandensityconst--ea7885e73cf3c7c13d626651.md) | 153 | `declaration-track:ea7885e73cf3c7c13d6266517e9d53de4817e42d180a67dd2194f1421b6bc1dc` |
| 9 | `theorem` | [isContained_of_card_edgeFinset](../../../../../mathematics/Topology/GeneralTopology/TuranDensity/Variant29421ae4a30ac0ebf9bcd619e22a25c66eb7ef01b010ae7388fe17f96b902b01.lean/declarations/iscontained-of-card-edgefinset--7a4d296725046b3af0def0c0.md) | 160 | `result-track:7a4d296725046b3af0def0c0159b81535c18ba50e4d6aa430594ed41731104db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
