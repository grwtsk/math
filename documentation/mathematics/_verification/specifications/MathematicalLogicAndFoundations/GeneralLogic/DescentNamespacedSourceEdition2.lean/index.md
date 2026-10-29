# Verification target: Descent Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f396bffa58834045cdb051b8bab8ce04a058d40",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant81aa68c74f18e64655778a3e05ea06903b25c421a1cc925247eb97bbac81af8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f396bffa58834045cdb051b8bab8ce04a058d40`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant81aa68c74f18e64655778a3e05ea06903b25c421a1cc925247eb97bbac81af8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant81aa68c74f18e64655778a3e05ea06903b25c421a1cc925247eb97bbac81af8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Setoid.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DescendsThrough](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descendsthrough.md) | 22 | `declaration-track:c1505b0fdc93e774a9bf31668a97678e22993b67aacca7b59da6881b39bf3924` |
| 2 | `def` | [PredicateDescendsThrough](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/predicatedescendsthrough.md) | 26 | `declaration-track:9df3a1ba050aa2e186c1b291c8ef2ab6d7edd7ec0e30662a324891848d74c3a8` |
| 3 | `structure` | [DescentObstruction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descentobstruction.md) | 31 | `declaration-track:6cabe73dcf75df378292e841e18a23f59a28ab853c6e8a3198c1edae124795f5` |
| 4 | `structure` | [PredicateDescentObstruction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/predicatedescentobstruction.md) | 42 | `declaration-track:e8b609e244a440663f1b1972be8f6f452510d5d204ec234f2b439f5f7a0e89b7` |
| 5 | `theorem` | [descent_obstruction_not_descends](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descent-obstruction-not-descends.md) | 54 | `result-track:2ee6e4d357f4b116c18762b913ca3c6d88a762c60afc2090be42f89b0303b76a` |
| 6 | `theorem` | [predicate_descent_obstruction_not_descends](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/predicate-descent-obstruction-not-descends.md) | 60 | `result-track:44c128a9bbc2984a445939b74a12671612f3da10811cb3d9ce367c1928c474aa` |
| 7 | `theorem` | [descendsThrough_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descendsthrough-id.md) | 66 | `result-track:f3df2d9d9dda6f3e8e41f7cd834d20cb960db56859ccea99642a4544d3184501` |
| 8 | `theorem` | [predicateDescendsThrough_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/predicatedescendsthrough-id.md) | 71 | `result-track:ef6793e23e7c7f9686b09ea8a6ca999882b2f4e96f233486fb7ce5539f7c0eb0` |
| 9 | `theorem` | [descendsThrough_comp_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descendsthrough-comp-target.md) | 76 | `result-track:35d4a93edacbbcefdaca61561d9b6842cfac18af3019a906eb282bd79eff69f0` |
| 10 | `theorem` | [descendsThrough_comp_carrier](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descendsthrough-comp-carrier.md) | 82 | `result-track:652c040797718279fecfd0a8a7df67185f052b2021b7312358ac8e0623329314` |
| 11 | `theorem` | [predicateDescendsThrough_comp_carrier](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/predicatedescendsthrough-comp-carrier.md) | 88 | `result-track:5f4b2c3b4e0c0bed452e4e14913c2e2a8097a6215aefad6ef1dc3bb7a9962fe9` |
| 12 | `theorem` | [descendsThrough_of_refines](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descendsthrough-of-refines.md) | 94 | `result-track:56ee8cce31bc490403a23db9ba1be9c8baecc315e1aba0079b4d8a0b287fe759` |
| 13 | `theorem` | [predicateDescendsThrough_of_refines](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/predicatedescendsthrough-of-refines.md) | 100 | `result-track:3c242da9ff2a6179bdb52445e070fb49747f27c3562350bc7f68f825091976ea` |
| 14 | `theorem` | [descendsThrough_iff_constant_on_fibers](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descendsthrough-iff-constant-on-fibers.md) | 106 | `result-track:afd691034db05e6396c24d1f7becc7f08bcd2052667068465d2557cbd6a45de1` |
| 15 | `theorem` | [descendsThrough_of_factorization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descendsthrough-of-factorization.md) | 117 | `result-track:d3122325d0843573f6572e41abce02b93cca2273d7e8162150f7f891ee38887b` |
| 16 | `theorem` | [descent_obstruction_no_factorization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descent-obstruction-no-factorization.md) | 124 | `result-track:c4bb6421b28ff3ea515e9c35829cfc3f52e0670a0a8119ea49eb25e4b86409d9` |
| 17 | `theorem` | [descendsThrough_quotient_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descendsthrough-quotient-iff.md) | 132 | `result-track:43d0f5d812c5d5daceee0b3afd2133403ca030c7625286181a131557690a68b1` |
| 18 | `def` | [descentQuotientLift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descentquotientlift.md) | 142 | `declaration-track:dee739ad435c7c107a36e3ece788f1dab91fffa906f089d1a85f8ea725e64c12` |
| 19 | `theorem` | [descentQuotientLift_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descentquotientlift-mk.md) | 147 | `result-track:f21d3c71239ad255761c7f95bf15de40f5f69062f89b4aa9928b7eae10b32a72` |
| 20 | `theorem` | [quotient_factorization_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/quotient-factorization-iff.md) | 152 | `result-track:bd9e0be18dbc468b77a78a891ed690ebd4b0f0bbb9b6a84961dfb7044c99407f` |
| 21 | `theorem` | [descentQuotientLift_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/descentquotientlift-unique.md) | 162 | `result-track:05f60f2a1dd1641420d0c94fcdd11f1226902cf80be4df602dd6bb2d1c5afab0` |
| 22 | `def` | [booleanCollapseObstruction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/booleancollapseobstruction.md) | 171 | `declaration-track:461107acbd32338ed423c834b80dcb6fa0f787b979325cb27d98ac83849e575f` |
| 23 | `theorem` | [boolean_collapse_not_descends](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DescentNamespacedSourceEdition2.lean/declarations/boolean-collapse-not-descends.md) | 178 | `result-track:adc941148457e3763ff06ac0547f20b7bbab09d5135ff1f677520e81a7b9a86b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14f15b27214daf9a62a5189592ecedc68ae9eac6830ac7cb16866e0502382d4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant81aa68c74f18e64655778a3e05ea06903b25c421a1cc925247eb97bbac81af8f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Descent/Variant81aa68c74f18e64655778a3e05ea06903b25c421a1cc925247eb97bbac81af8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
