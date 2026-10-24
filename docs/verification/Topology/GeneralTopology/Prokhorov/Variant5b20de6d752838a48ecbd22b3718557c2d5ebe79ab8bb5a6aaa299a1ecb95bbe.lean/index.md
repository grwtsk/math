# Verification target: GRWTSK.Topology.GeneralTopology.Prokhorov.Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caeefca8ede961defa13ae3cd7890c0e421d203e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caeefca8ede961defa13ae3cd7890c0e421d203e`.

Source path: `GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Regular` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.RieszMarkovKakutani.Real` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.LevyProkhorovMetric` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isCompact_setOfPred_finiteMeasure_le_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/declarations/iscompact-setofpred-finitemeasure-le-of-compactspace--76941c714468ed61d3de981d.md) | 78 | `result-track:76941c714468ed61d3de981d42ad5d16be7241e7fa208837bc6ac2a8a5a973a8` |
| 2 | `lemma` | [isCompact_setOfPred_finiteMeasure_eq_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/declarations/iscompact-setofpred-finitemeasure-eq-of-compactspace--919f539c48ce07f90884494d.md) | 172 | `result-track:919f539c48ce07f90884494d56d1a9a950f8b83921558b8f3ecb21e8a28a3437` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/declarations/instance--2d045c7ec9b72a746b318784.md) | 184 | `declaration-track:2d045c7ec9b72a746b3187848cbac5ba33cb1b04cb16ee2e62129bd45b71ee93` |
| 4 | `lemma` | [isCompact_setOfPred_finiteMeasure_le_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/declarations/iscompact-setofpred-finitemeasure-le-of-iscompact--1b920cb07111c64b5b0460f0.md) | 191 | `result-track:1b920cb07111c64b5b0460f04725f05f8c019af5932cb50346c70fd4129080a6` |
| 5 | `lemma` | [isCompact_setOfPred_finiteMeasure_mass_le_compl_isCompact_le](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/declarations/iscompact-setofpred-finitemeasure-mass-le-compl-iscompact-le--53eecd1658b4ae971d12325c.md) | 232 | `result-track:53eecd1658b4ae971d12325c91378bfcd23c2189a2ca62fc2ae9b65d74e3c5e2` |
| 6 | `lemma` | [isCompact_setOfPred_finiteMeasure_mass_eq_compl_isCompact_le](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/declarations/iscompact-setofpred-finitemeasure-mass-eq-compl-iscompact-le--b83bfa66baa4a58f7809501a.md) | 495 | `result-track:b83bfa66baa4a58f7809501a0f1ddf73a176707e66027ad5b2957157c0a5f603` |
| 7 | `lemma` | [isCompact_setOfPred_probabilityMeasure_mass_eq_compl_isCompact_le](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/declarations/iscompact-setofpred-probabilitymeasure-mass-eq-compl-iscompact-le--3a20a6654c251d11afa8a131.md) | 513 | `result-track:3a20a6654c251d11afa8a13125fe2c383bfcec3eadba88c5c689eafd6f4a5294` |
| 8 | `lemma` | [isCompact_closure_of_isTightMeasureSet](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/declarations/iscompact-closure-of-istightmeasureset--695088ae0ecd9a1d1c01fc0b.md) | 538 | `result-track:695088ae0ecd9a1d1c01fc0bcf21112284495d2024c295d44ea41930f6281c20` |
| 9 | `lemma` | [exists_measure_iUnion_gt_of_isCompact_closure](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/declarations/exists-measure-iunion-gt-of-iscompact-closure--4723264ed07c87554bc0a189.md) | 581 | `result-track:4723264ed07c87554bc0a189eda5f03c089da4d776a5fc90b5f27768b2686b17` |
| 10 | `theorem` | [isTightMeasureSet_of_isCompact_closure](../../../../../mathematics/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/declarations/istightmeasureset-of-iscompact-closure--7927aa43d4a85c461e11cad5.md) | 642 | `result-track:7927aa43d4a85c461e11cad5c3a730395d0163705664d67717f5ad0156b1dcbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
