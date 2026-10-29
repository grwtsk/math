# Verification target: Conditionally Complete Lattice Indexed Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98e12a32363fb2d3fd85eb0e4af6f5f3a597da20",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98e12a32363fb2d3fd85eb0e4af6f5f3a597da20`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [WithTop.iInf_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/withtop-iinf-empty.md) | 37 | `result-track:819244c9e06cdac857f2e4ac080f8fe3c4996bd3b3aac5a84e8aa671ea85ba7b` |
| 2 | `theorem` | [WithTop.coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/withtop-coe-iinf.md) | 42 | `result-track:078ffed1931409ca38606d9d9c53f7605befbcd50181e4d68e3edff1c59f062f` |
| 3 | `theorem` | [WithTop.coe_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/withtop-coe-isup.md) | 47 | `result-track:6c570c7ba0855c0fcecacaee528cf220a3cc0d527cbf49dc4bd0f561c6f9105b` |
| 4 | `theorem` | [WithBot.coe_biSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/withbot-coe-bisup.md) | 54 | `result-track:93e48e5dbd4773b1376d8642bb1e3d8d9ce07d74e3ac2c2e0683fceed1d5f050` |
| 5 | `theorem` | [WithBot.coe_biInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/withbot-coe-biinf.md) | 67 | `result-track:54573cdb9ce9384f575cbbb9226a1d29ff402b66027613cc920fdb1990a6a0d3` |
| 6 | `theorem` | [isLUB_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/islub-cisup.md) | 78 | `result-track:1fff8f6edca88276443529462fcd9a0805d2718875149cf828a19108da9f087a` |
| 7 | `theorem` | [isLUB_ciSup_set](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/islub-cisup-set.md) | 83 | `result-track:ad23d0ee1be244a0af76b76d0d37e6d9014b0630c66caa4c496be03605a35473` |
| 8 | `theorem` | [ciSup_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-le-iff.md) | 89 | `result-track:215f05a4d45a71004c84799a5abf089fa043e2cc92f889dfe81e25145fa00586` |
| 9 | `theorem` | [ciSup_set_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-set-le-iff.md) | 94 | `result-track:bb5050b033acc5fab28975e3c62b00ccc3bf594048f9df067d909ea33269b4e8` |
| 10 | `theorem` | [IsLUB.ciSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/islub-cisup-eq.md) | 99 | `result-track:9c77f145fbd741d0ba2fa18562382b76525c5fcd9f8b1e6fd85df71ec67431b9` |
| 11 | `theorem` | [IsLUB.ciSup_set_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/islub-cisup-set-eq.md) | 103 | `result-track:e8af516410bb192b17f8a79d0ccc74d7754f7e7357d9e705e4f792eacdcbd71f` |
| 12 | `theorem` | [ciSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-le-source-edition-3.md) | 109 | `result-track:b7071835484bf1abf97371c6f40df0ac5543401288ee372622aff04049857c55` |
| 13 | `theorem` | [ciSup₂_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-le.md) | 113 | `result-track:02589c074946a93e2ccb000c3834bd9b51402c40904e0a430db2569b86f5281c` |
| 14 | `theorem` | [le_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/le-cisup.md) | 120 | `result-track:7dabbf99769f92b76fc1332b66f24b270753151143fd0ff1508046341027dff3` |
| 15 | `theorem` | [le_ciSup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/le-cisup-of-le.md) | 124 | `result-track:490a2809019f907fc043dae68601bd72d51c2cb3dc32b3a80776b52f44177b1b` |
| 16 | `theorem` | [BddAbove.range_iSup_of_iUnion_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/bddabove-range-isup-of-iunion-range.md) | 130 | `result-track:e0777adf780c4182076425c25371f2f2190c5c460528354d0cfb71a1f5373975` |
| 17 | `theorem` | [le_ciSup₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/le-cisup-source-edition-2.md) | 139 | `result-track:bf85362ecaf92cfc0f1f1e2e80702a07f4050d72b7319c0a94c83df6e3bb71b2` |
| 18 | `theorem` | [ciSup_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-mono.md) | 147 | `result-track:0141f7f315fef28ae8681e1688d09b903d46e7d9302e7053fa2ba388a4a96abd` |
| 19 | `theorem` | [ciSup_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-sup-eq.md) | 154 | `result-track:6e9c98e5dfd0150e2a75278be20ef64ef752f103b4a38b18c753a2ce37b1aca7` |
| 20 | `theorem` | [le_ciSup_set](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/le-cisup-set.md) | 163 | `result-track:92cd9955feba2f6a9a7d42ab66354e5dee1a424d0239a41d77caec02d92d065d` |
| 21 | `theorem` | [ciSup_mono_of_forall_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-mono-of-forall-exists-source-edition-2.md) | 168 | `result-track:d5648c69777a8627133e175c018f87e828af140e4cab0585a0a5878f936062d0` |
| 22 | `lemma` | [ciInf_le_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/ciinf-le-cisup.md) | 173 | `result-track:f9a52da4451e18d79d8637f2025c11c5cae7107359c797dcc0f00afebb7524c9` |
| 23 | `lemma` | [ciSup_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-prod.md) | 178 | `result-track:5c64d79ce9b0788a1024ff55904198fa8e18b40942ffced76c0240f0d0a86fbe` |
| 24 | `theorem` | [ciSup_eq_of_forall_le_of_forall_lt_exists_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-eq-of-forall-le-of-forall-lt-exists-gt.md) | 206 | `result-track:b3d8c82827fa21025478ed3eaaaf9094ef035ab337758a4359e666e2aa931027` |
| 25 | `lemma` | [Set.Iic_ciInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/set-iic-ciinf.md) | 212 | `result-track:62bbc9a94392ab47819dd0bec4650462fadd05bc4aeaffe6874f0587650e6479` |
| 26 | `theorem` | [ciSup_subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-subtype.md) | 218 | `result-track:587e9bd8d360108a9f3d6c307e4841ede004e5a8e0675849901e02cfd089f9e7` |
| 27 | `theorem` | [cbiSup_eq_ciSup_subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cbisup-eq-cisup-subtype.md) | 240 | `result-track:ce2f5f283d4062e758f49a9e778e19ed5ff7f3c4a3a1fe65bf14f80c6e9f620a` |
| 28 | `theorem` | [ciSup_subtype_fun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-subtype-fun.md) | 251 | `result-track:b7f4dff2df85a1d68a4ce1304a5c167bb91fc5d038e505bd5e6e2947115ab95b` |
| 29 | `theorem` | [csSup_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cssup-image.md) | 261 | `result-track:ca70cd59e3416d0ef11c0f9aa35e9f02169e8e751b417aa9c4b7f7c30a71504e` |
| 30 | `theorem` | [cbiSup_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cbisup-id.md) | 267 | `result-track:eb48814279c6d6198d09c538b3cdb7066a7d027319272d197f6d5d19c82d990e` |
| 31 | `lemma` | [ciSup_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-image.md) | 273 | `result-track:95eaef15a6417a7ddbc8fc1d91ab7d128d3f625ec2f86d51ddaf7090c7891979` |
| 32 | `theorem` | [le_ciSup_ciSup_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/le-cisup-cisup-eq-left.md) | 294 | `result-track:b89c502e886dd26bde72e04516f85d62f32caacc9043e5619c96e27b2cb50c19` |
| 33 | `theorem` | [le_ciSup_ciSup_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/le-cisup-cisup-eq-right.md) | 301 | `result-track:4c3ff58a37409ec970a4c6acb574ac221220bd92391e72b3afff36140c1edc1c` |
| 34 | `theorem` | [ciSup_exists_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-exists-le.md) | 310 | `result-track:faba71e589ac3bf818905324bc05ffee27555435da22384fc1b29f6b6b3d6141` |
| 35 | `theorem` | [ciSup_and](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-and.md) | 320 | `result-track:a045821f793e1608c95384c127fad831574757916bff3fb22b8d7e8f7888a173` |
| 36 | `theorem` | [ciSup_sup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-sup-le.md) | 330 | `result-track:6a460be01dac6e18b9ee05b94801c00357fb764f105456ae57553d5c70c7b595` |
| 37 | `theorem` | [exists_lt_of_lt_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/exists-lt-of-lt-cisup.md) | 344 | `result-track:0d5009ad123c797b11b9f4baa6705abc24be5868d0b76240bd77b1a5a3ade2fd` |
| 38 | `theorem` | [exists_lt_of_lt_ciSup₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/exists-lt-of-lt-cisup-source-edition-3.md) | 349 | `result-track:20887461d1079da181121acbd08681d13ce7b8cd5e93215c858528da39450ddd` |
| 39 | `theorem` | [lt_ciSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/lt-cisup-iff.md) | 355 | `result-track:89b14a790e544580f0539d6fc03f67e9d26d39b4bd89ee6fc95bfa7616bf1985` |
| 40 | `theorem` | [cbiSup_of_not_bddAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cbisup-of-not-bddabove.md) | 360 | `result-track:3a6ee2077181c514be4f3206cfacf03ad62851cb9a688d54f35ab76ee9038aa9` |
| 41 | `theorem` | [cbiSup_eq_of_not_forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cbisup-eq-of-not-forall.md) | 366 | `result-track:39397150b6d7f9ec761ca3f0c1a97e296a5a8fca9163f47814e24b1f595bf1eb` |
| 42 | `theorem` | [ciSup_eq_top_of_top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-eq-top-of-top-mem.md) | 384 | `result-track:88c0a5affd05f93fc07f6f3d6c97afe15e0beeddd8a85e85c0d50e043e0c20c9` |
| 43 | `theorem` | [ciInf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/ciinf-mem.md) | 391 | `result-track:26a06e9447544675464e6f6a8e00c905bc70e9e47548f7fab9b5a557595e64f1` |
| 44 | `lemma` | [ciInf_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/ciinf-eq-iff.md) | 394 | `result-track:7b6e103ef3fa7b0981a165c5b5e8b9960f8821c92a880c4a37f0aa371cbf9391` |
| 45 | `theorem` | [ciSup_of_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-of-empty.md) | 416 | `result-track:1359c923b1f61bd20178f5fb1118ab284392f82c3cab603bcdd9c2ec6074aa7e` |
| 46 | `theorem` | [ciSup_false](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-false.md) | 419 | `result-track:1b5c6701d28d318fa713d6fbe3a92ec0d6127dee800b03a1d2ee0d5b405088a5` |
| 47 | `theorem` | [le_ciSup_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/le-cisup-iff.md) | 422 | `result-track:d5c2bda556d00d6293a1a62f62558f3716c745fce04a3605ed1844ce7af6bd74` |
| 48 | `theorem` | [le_ciInf_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/le-ciinf-iff.md) | 425 | `result-track:3aa3537406ec4ff1575ef7ec0064ea2cd2d8a42490f8220203b8123e0e7cf339` |
| 49 | `theorem` | [ciInf_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/ciinf-le.md) | 428 | `result-track:eb5be4907691e10f81710b0668944dbed48df514a08df2c7e27abd6b2a33ed83` |
| 50 | `lemma` | [ciInf_le_of_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/ciinf-le-of-le.md) | 430 | `result-track:2db5aca86dfaca8d3ff8e8da99ea0998096df1607e98ae32bfa2cff5ffcb3a45` |
| 51 | `theorem` | [ciSup_le_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-le-iff-source-edition-2.md) | 434 | `result-track:7ee133429d6e0a89aaae463f38f71f078ad74adccb67a0fbb516a49d75e6bb9a` |
| 52 | `theorem` | [ciSup_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-le-source-edition-4.md) | 438 | `result-track:ff6ee0336db6ed8065d286ed9bd73d2c5915ff9f63e268e7a4a4ebf398adae88` |
| 53 | `theorem` | [ciSup₂_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-le-source-edition-2.md) | 441 | `result-track:92f04d5592044b6b7f25ee2ee14c18d547e1393db7eabefd331d0b62b5e878d3` |
| 54 | `theorem` | [ciSup_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-bot.md) | 445 | `result-track:7ed89b7b5a2a0e420f0fb5f1e2d2364fd656a3777d3479685f71cd9b4fa32b3c` |
| 55 | `theorem` | [lt_ciSup_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/lt-cisup-iff-source-edition-2.md) | 449 | `result-track:ab984272ce4cb0c146e931bccc87509b277ff46dba8d671e246151e050c552f6` |
| 56 | `theorem` | [exists_lt_of_lt_ciSup'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/exists-lt-of-lt-cisup-source-edition-4.md) | 452 | `result-track:9435eabf58aa7f66d14f8690b6a6f73791c2a4fc9175615ce173c7eeb32e1742` |
| 57 | `theorem` | [exists_lt_of_lt_ciSup₂'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/exists-lt-of-lt-cisup-source-edition-2.md) | 456 | `result-track:205e80db5b8fac24c75768addd61f91ba45e549bd8a3c846b005c2a0211ace3e` |
| 58 | `theorem` | [ciSup_mono_of_forall_exists'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-mono-of-forall-exists.md) | 461 | `result-track:bc917c6621a9ca39cec027b5225d50dd3eacce0eb963451389d821b6c2bf4592` |
| 59 | `theorem` | [ciSup_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-exists.md) | 467 | `result-track:2451b21d1bf8da82ca55575245307362847376b00ae5f94bc652a233b864c1ca` |
| 60 | `theorem` | [ciSup_ciSup_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-cisup-eq-left.md) | 472 | `result-track:670de8c4cff904f542258ac5e2d71e0ea406a076b20c8bfe29aed1dadb65ec80` |
| 61 | `theorem` | [ciSup_ciSup_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-cisup-eq-right.md) | 477 | `result-track:c4dd19125bfb5dfa4055cb9f2de1d535db94463a59a09c85e43fc87c13be88f9` |
| 62 | `lemma` | [ciSup_or'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/cisup-or.md) | 481 | `result-track:67b88a54be73837294bcfe2fc42b1013f022e7c685a0e157e0407800f4a2a483` |
| 63 | `theorem` | [l_csSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/l-cssup-source-edition-2.md) | 495 | `result-track:3bc1125e5c85fef2f28e3d9d89200e71f90c3a0516cc14d4010cb02f9054901e` |
| 64 | `theorem` | [l_csSup'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/l-cssup.md) | 500 | `result-track:0020e678053b3fff6bf9781582f7c9b9f6f6baeff92c8f565cc751fdcc8a5dd5` |
| 65 | `theorem` | [l_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/l-cisup.md) | 504 | `result-track:44131f0574f95a38a62e417476827bc6aded87ac6317198f815e7e08d43ade7e` |
| 66 | `theorem` | [l_ciSup_set](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/l-cisup-set.md) | 508 | `result-track:0a0c8c349fed4fe9c6fd9fc972d7bc90af7f6d4fb2e05c0a1ca8f8ec916eb1fd` |
| 67 | `theorem` | [map_csSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/map-cssup-source-edition-2.md) | 522 | `result-track:b04b017451d3b20e48ee20301d050f77f1331bb4f6207dc7b9437efa4d62f5fd` |
| 68 | `theorem` | [map_csSup'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/map-cssup.md) | 527 | `result-track:49229da2de041f7eb0a128ccd501bf9786def348b7318e25b385856ab04bf8d0` |
| 69 | `theorem` | [map_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/map-cisup.md) | 532 | `result-track:99e4e15b8fbb9c54a8550c80764f0c4b592b2174a1e2820332f77b023e002bd4` |
| 70 | `theorem` | [map_ciSup_set](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/map-cisup-set.md) | 537 | `result-track:6298f36c893e398016b0f827920d1f9a13a7f3fa890154256f1f168ed4184a52` |
| 71 | `lemma` | [map_ciSup'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/map-cisup-source-edition-2.md) | 547 | `result-track:c760215417d2694bd62af4f4eb41e9535173f9007833aaa07dcdb935e48cd4be` |
| 72 | `lemma` | [iSup_coe_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/isup-coe-eq-top.md) | 564 | `result-track:7e6fc49d049294b526aa2c2ea74e9a35b4b6ab885330944ec439dbca9cf07fab` |
| 73 | `lemma` | [iSup_coe_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/isup-coe-lt-top.md) | 572 | `result-track:a82162bff66cdb4949e904ee71fcd768ee0e39c6b62a5af0136d6510ddbd3ec5` |
| 74 | `lemma` | [iInf_coe_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/iinf-coe-eq-top.md) | 575 | `result-track:9cdf050b16e5ca970bbd1919d940b353cea6f9ecce6979df4970101f08b143a8` |
| 75 | `lemma` | [iInf_coe_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompleteLatticeIndexedPublic.lean/declarations/iinf-coe-lt-top.md) | 577 | `result-track:7922ea3a406016e537f7d2e422d59260379e988e33c1c9e5413dbf6e5344a91e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3174373dd6400af67fbbe9f3d60e96afee8c6b438dfe1072571996c33e07c40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantda59a5ea88ea4e1c3c51d8356a324caf9a43aabd6dc059d83d498d00b70b4d6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
