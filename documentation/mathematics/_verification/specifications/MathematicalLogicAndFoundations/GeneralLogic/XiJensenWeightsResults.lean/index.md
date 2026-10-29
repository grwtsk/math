# Verification target: Xi Jensen Weights Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b6e4923b3ba46a904bb17c43a0b5b8ec2f80a8c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b6e4923b3ba46a904bb17c43a0b5b8ec2f80a8c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.BigOperators` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/weight.md) | 19 | `declaration-track:f9dd8dafbee69571ce7a09023754575e8ed592bf05ac0a865b7531b0920bbf67` |
| 2 | `theorem` | [weight_zero_index](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/weight-zero-index.md) | 22 | `result-track:c7b8f5a9a616ae92b4d9830c0b7a6724b69084e98b274ad84eb2e0a3458ceb87` |
| 3 | `theorem` | [weight_eq_zero_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/weight-eq-zero-of-lt.md) | 26 | `result-track:a6c25b9a88704b6a615746e51d0046eaceb07f6fbb82c88fc047acec1a05228a` |
| 4 | `theorem` | [weight_eq_factorial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/weight-eq-factorial.md) | 30 | `result-track:95ae470a9342b56297b0c0b350a80b9d8779c9778af12248d743a2781b642be4` |
| 5 | `theorem` | [weight_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/weight-self.md) | 42 | `result-track:d2d807004a161f791815adc627204a14061852f5ca13fcd377bf7c0820f455c7` |
| 6 | `theorem` | [weight_pos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/weight-pos.md) | 47 | `result-track:93b5da18ad872ee55f872e06a15bc879c6a8f8824fbff21593fb70d3ab2e2f87` |
| 7 | `theorem` | [weight_eq_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/weight-eq-prod.md) | 54 | `result-track:f7aa62b4008e806c3581e18f77cc668e9df4a3644d4a7d1cb9677697be377cda` |
| 8 | `theorem` | [weight_nonneg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/weight-nonneg.md) | 67 | `result-track:461dd032dea525772cf0a4a9fa98b5466daca9a1aaade256c9823733ec0f3574` |
| 9 | `theorem` | [factor_mem_unit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/factor-mem-unit.md) | 71 | `result-track:496357e54b14380b52fcd13d8ad67a0f81756ce00d26bd1fe1b03fefe051efea` |
| 10 | `theorem` | [weight_le_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/weight-le-one.md) | 84 | `result-track:5203d8f22fcff7d75c5d238e197550c9eb8aa12498220f223d42ff7258014c97` |
| 11 | `theorem` | [sum_range_real](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/sum-range-real.md) | 96 | `result-track:04fad48a920d3c940de5664acf3de83aa7aceb0f62c88cc5fcd5e5d8615dc2c8` |
| 12 | `theorem` | [one_sub_weight_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/one-sub-weight-le.md) | 106 | `result-track:ed2bce6bbaad5cf235d9cda6c2daf86d8b774865e280bd6335a53c8f869ccec7` |
| 13 | `theorem` | [weight_error_bounds](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/weight-error-bounds.md) | 133 | `result-track:23931c4c8decc7e407ad7d64fcad7234180086f232d58206fc786d035fb4e250` |
| 14 | `theorem` | [tendsto_weight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XiJensenWeightsResults.lean/declarations/tendsto-weight.md) | 139 | `result-track:6e819a5145e07f1e25c80e63b34bfb20ee5a9ba964c30d708c01414516eeff82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4620ca9db470ff66c7f6875632c426a815d51ac4c23b1d034934ca7a8fd1f677 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/XiJensenWeights/Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
