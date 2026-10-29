# Verification target: Ball Sphere

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b06eeffb63720b9dd5e2e8a2ce00d09bc7d3022",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variantdfd66c93833856a756cc3a97e01260703141d3c2284a984ba24c428c42e47c09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b06eeffb63720b9dd5e2e8a2ce00d09bc7d3022`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variantdfd66c93833856a756cc3a97e01260703141d3c2284a984ba24c428c42e47c09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variantdfd66c93833856a756cc3a97e01260703141d3c2284a984ba24c428c42e47c09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Uniform` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/declarations/instance-source-edition-6.md) | 21 | `declaration-track:a8bbbcdc1e965fff7c53e0cf713a77be7341c211ea1693259277e3c730f7366a` |
| 2 | `theorem` | [coe_neg_sphere](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/declarations/coe-neg-sphere.md) | 26 | `result-track:1fade176fc5f6e340ad75ce261e4f7e253642e74ded687cafb30ba69ca5701ee` |
| 3 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/declarations/instance-source-edition-5.md) | 29 | `declaration-track:a46ef9c92e807fe5eca1b0671822eac244378362daf9975bbe9d0f8e1dff7dbc` |
| 4 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/declarations/instance-source-edition-4.md) | 33 | `declaration-track:57915c15f4eb0068002028b9598c7c7b0bf0f5e14adf5ed1496a65e56cbc4188` |
| 5 | `theorem` | [coe_neg_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/declarations/coe-neg-ball.md) | 37 | `result-track:1ca384eb58d6592f73f485cb9afd30af349370c715e8f71c084ffc94c2d971a9` |
| 6 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/declarations/instance-source-edition-2.md) | 39 | `declaration-track:49a122d04a0b546e782bd350de074538be310e8669d7a55b41230d9e25d7497b` |
| 7 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/declarations/instance.md) | 43 | `declaration-track:3429f00dfc1d986abec7a7f70a997b9ec4aaa434b36019aa5f3907cd390a76a3` |
| 8 | `theorem` | [coe_neg_closedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/declarations/coe-neg-closedball.md) | 47 | `result-track:183b017625e1643338c4cca6798b3c47ef07dde587a639a078f44562fcd901cf` |
| 9 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BallSphere.lean/declarations/instance-source-edition-3.md) | 49 | `declaration-track:51d0d641870853730abfdd7c6e7c2038591160f99b7d8771234310c6ac347c75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cdd6235f43ae8face53d3eecbe7b717ab0c02672fdaba74b4fbc8c87d002d93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variantdfd66c93833856a756cc3a97e01260703141d3c2284a984ba24c428c42e47c09.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BallSphere/Variantdfd66c93833856a756cc3a97e01260703141d3c2284a984ba24c428c42e47c09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
