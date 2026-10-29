# Verification target: Predictive Representation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db071a14662a4192c3a2779b9f8ce5eb411bdec3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PredictiveRepresentation.lean/index.md) · [Full source](../../../../Combinatorics/PredictiveRepresentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db071a14662a4192c3a2779b9f8ce5eb411bdec3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PredictiveRepresentation](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/predictiverepresentation.md) | 37 | `declaration-track:7bd87ff9b09cdce08057fd9b6583cb58bd0702798d2867e588ddff10db37f946` |
| 2 | `def` | [run](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/run.md) | 54 | `declaration-track:ab89a30c989567c4b3b6e140dabc0ba5cb905e636002c281a1b3894f0a9c5cd2` |
| 3 | `theorem` | [run_nil](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/run-nil.md) | 59 | `result-track:859a0fd21ba5b75dbcc0b7a790c80b07a3e61ee83c459462d55d790512fbbe13` |
| 4 | `theorem` | [run_cons](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/run-cons.md) | 63 | `result-track:41e333cb0d941332fda3cac994c593704e9d1d679cf0074efb36a27d3cfbcc71` |
| 5 | `theorem` | [encode_run](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/encode-run.md) | 68 | `result-track:95a1621a0bbdf8a3e51051e5cb0882cc3abea510fefe6e8065f5b4710a9a8763` |
| 6 | `theorem` | [read_run_encode](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/read-run-encode.md) | 77 | `result-track:f67d76ddf9a5532db92ef4d29bfab2375f5b307459bd0bde7c6f467de34d10bd` |
| 7 | `theorem` | [encode_eq_implies_causalEquivalent](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/encode-eq-implies-causalequivalent.md) | 89 | `result-track:0623534ac8e8af54aa01b6ec28380c5daf983bc5b2b6d579e1499a327a317e1e` |
| 8 | `def` | [EffectiveMemory](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivememory.md) | 100 | `declaration-track:83212f45db3e46142a53dbeb2aee0de203c8059b8373ceac289d9c7f060eb429` |
| 9 | `def` | [toEffectiveMemory](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/toeffectivememory.md) | 104 | `declaration-track:0ac130de8db47edacfcd076e8e62967baddf8f9c942d7cad51319376424a737d` |
| 10 | `theorem` | [toEffectiveMemory_surjective](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/toeffectivememory-surjective.md) | 108 | `result-track:386e0cff090ee212c4f335dd61397c126c7eb66dd2d4030ec6aa7df36182c1ac` |
| 11 | `def` | [effectiveStep](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivestep.md) | 116 | `declaration-track:f1923f37a175fa4a86630d4d45d1a16b21fcc87290e16627a27ff5319a008d1d` |
| 12 | `def` | [effectiveRead](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectiveread.md) | 124 | `declaration-track:b6383982ed98d672c9763d56254d1723397a797873da4d8c21a9b9ed7fde870b` |
| 13 | `theorem` | [effectiveStep_toEffectiveMemory](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivestep-toeffectivememory.md) | 129 | `result-track:b1a3f2a59c7ec95cde8f941aa8c5608ea028bb9481b30a637e1daf2fe3240108` |
| 14 | `theorem` | [effectiveRead_toEffectiveMemory](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectiveread-toeffectivememory.md) | 136 | `result-track:1294334b2574d0dc7885386cef325e60dc9dcba2e759de49fb6213bb72060a61` |
| 15 | `def` | [effectiveToCausal](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivetocausal.md) | 147 | `declaration-track:9307da6bf0e38d1e99fa9e7aa6a4a2fb5ceb2fcbcd4d49c6e065a014d52df6ee` |
| 16 | `theorem` | [effectiveToCausal_toEffectiveMemory](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivetocausal-toeffectivememory.md) | 153 | `result-track:6433047bbfbc195c80fdeb14c0867f2d310a61681a07bafd96ed41d894a50a82` |
| 17 | `theorem` | [effectiveToCausal_surjective](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivetocausal-surjective.md) | 161 | `result-track:62fc2bc20a03bab8df6fe6ebb1576260c1d45482b8a29d2aa8f3dffaba1a6fa0` |
| 18 | `theorem` | [effectiveToCausal_step](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivetocausal-step.md) | 170 | `result-track:23c7c1e4d10cd2c41a0f55f384ed9bbad5e45ff344dd19223c96c9a14bea9989` |
| 19 | `theorem` | [effectiveToCausal_read](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivetocausal-read.md) | 179 | `result-track:42f9d2863e461552927d943076ba04c6a19b32df174cc332460a79e8cb408812` |
| 20 | `theorem` | [effectiveToCausal_unique](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivetocausal-unique.md) | 191 | `result-track:ac1988b8f800f083f12a8e7b62e2de7df52091f6d715fd0a635f5a1bd60cf7e6` |
| 21 | `theorem` | [causalState_terminal](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/causalstate-terminal.md) | 201 | `result-track:96f5e8973f27bc8b29a7e7cd6ccc2c602c6b7f2782a1cc5a77ceaf2002ebe03e` |
| 22 | `def` | [Exact](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/exact.md) | 212 | `declaration-track:22538caa9e3cfa845ab813ec9c3adcc60c555ec0e943de731e5934b011edb568` |
| 23 | `theorem` | [effectiveToCausal_injective_of_exact](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivetocausal-injective-of-exact.md) | 216 | `result-track:58f5a8a9c1500b1f14efc43b0defb0327c0c1f022daac6042f296162c110e44b` |
| 24 | `def` | [effectiveMemoryEquivCausalState](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/effectivememoryequivcausalstate.md) | 228 | `declaration-track:de8035e665cd9d500bdb915f5aeef94ef44ca4b3719cf3188ce0bbdbf69b9e99` |
| 25 | `theorem` | [card_causalState_le_effectiveMemory](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/card-causalstate-le-effectivememory.md) | 238 | `result-track:b5515844242757dd57a8f314cd2cc95c53ce1f8db56d4083da685c543533bf95` |
| 26 | `theorem` | [card_effectiveMemory_le_memory](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/card-effectivememory-le-memory.md) | 247 | `result-track:eb947120c79822ce104e992a470aec2b33fe63cb7865fe5cd8b3d3d3ebfc6efd` |
| 27 | `theorem` | [card_causalState_le_memory](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/card-causalstate-le-memory.md) | 255 | `result-track:146b3e4d1de74277ef337bf2fafb0c7be3ef902808eb2035acd1825df207ce14` |
| 28 | `theorem` | [card_causalState_le_memory_of_finite_memory](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/card-causalstate-le-memory-of-finite-memory.md) | 269 | `result-track:60ee447064f4f3c6a64221c4c63ec1346b5c4c93a5fceeb055f385230b7b4729` |
| 29 | `theorem` | [card_causalState_le_memory_of_finite_state](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/card-causalstate-le-memory-of-finite-state.md) | 286 | `result-track:15071e6df227d733599e62bd68071e6f23b3bc9502d1eea5e3e799f9668e06f1` |
| 30 | `theorem` | [natCard_causalState_le_memory](../../../../Combinatorics/PredictiveRepresentation.lean/declarations/natcard-causalstate-le-memory.md) | 298 | `result-track:70ac74901336dadc5e61492ffc8fcfd7c1ffc23423194dc1b57ab12bcf31e828` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1567420955831371d82aace0da509849234c5c7026e6116ff1797755cc502dd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/PredictiveRepresentation/Variant260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
