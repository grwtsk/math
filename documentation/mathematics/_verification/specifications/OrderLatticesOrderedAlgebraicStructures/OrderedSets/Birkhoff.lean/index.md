# Verification target: Birkhoff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "145fdba85d6105bb32f60f8ddc114dc118690e9d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `145fdba85d6105bb32f60f8ddc114dc118690e9d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Irreducible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Closure` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [infIrred_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/infirred-ici.md) | 61 | `result-track:09bd3cd44f30f44c60664991c837bfd84eead1fb0b10973d19d668d33efbb685` |
| 2 | `lemma` | [infIrred_iff_of_finite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/infirred-iff-of-finite.md) | 70 | `result-track:f62f86d9b79f0dabbeb45995700acdaa02f7796e6728487c064d0d05ec281ae3` |
| 3 | `lemma` | [supIrred_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/supirred-iic.md) | 83 | `result-track:dc416d933602ea608956b7e0ccf44924cb9c62394fcdb0c6a8ff4bdca89c3307` |
| 4 | `lemma` | [supIrred_iff_of_finite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/supirred-iff-of-finite.md) | 92 | `result-track:afa31a6fbf6f6bb47ac17b6919486536183f00bb70565797d87191ea4ec734bb` |
| 5 | `def` | [supIrredLowerSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/supirredlowerset-source-edition-2.md) | 106 | `declaration-track:bd20b504c3e380eeb03bf146de105f2bdd93eadea5888bee3845afe19aaa8cc8` |
| 6 | `def` | [infIrredUpperSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/infirredupperset-source-edition-2.md) | 113 | `declaration-track:418a5c8d8602c2098073d6b0b4f4cf669170d49fae54d15851c960a045c57212` |
| 7 | `lemma` | [supIrredLowerSet_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/supirredlowerset-apply-source-edition-2.md) | 118 | `result-track:64a4f4d158c007e52128e7178a40818a8745ce294560ded32822b7caf7bdcd1d` |
| 8 | `lemma` | [infIrredUpperSet_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/infirredupperset-apply.md) | 119 | `result-track:147317bf2181584f4c87e27c8771fc459bf7fccdd7954e67ff2a41adaf5aa1c6` |
| 9 | `lemma` | [supIrredLowerSet_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/supirredlowerset-surjective.md) | 123 | `result-track:065ed3282cf48272a932bc9a7523ee52f63213085bedfb75d058d35f9157297b` |
| 10 | `lemma` | [infIrredUpperSet_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/infirredupperset-surjective.md) | 126 | `result-track:00b30047b91ed770c00f0a15cedc837db86a28c63358c6a3eee5389ff8ae8dca` |
| 11 | `def` | [supIrredLowerSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/supirredlowerset.md) | 136 | `declaration-track:1dc42d7bbccc4e25c6f528a8b5ffb51a0499b0a5ce324693efae4494a442ace5` |
| 12 | `def` | [infIrredUpperSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/infirredupperset.md) | 141 | `declaration-track:324abe71822b1461a688359f6e1e88d3a74d9147574c0381e30bd6411738f238` |
| 13 | `lemma` | [supIrredLowerSet_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/supirredlowerset-apply.md) | 144 | `result-track:1b8e7c06f3b30006cc076d4aec5a1333dea4779aedfc719f0acbb583bd04d6ed` |
| 14 | `lemma` | [infIrredUpperSet_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/infirredupperset-apply-source-edition-2.md) | 145 | `result-track:86bb9eaf5a22383489d1a0ad38c4e9470b13fb25e7b64ee96284d33d13fca635` |
| 15 | `lemma` | [supIrredLowerSet_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/supirredlowerset-symm-apply.md) | 154 | `result-track:43df7e628a57d612f8a3c3bc1a5698fbe636320d048d54c8554f7a538a829862` |
| 16 | `lemma` | [infIrredUpperSet_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/infirredupperset-symm-apply.md) | 168 | `result-track:7e90c00ce3eeb37592e450f705224fc81c4ac1c67a7110619d1dcede10b653fc` |
| 17 | `def` | [OrderIso.lowerSetSupIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/orderiso-lowersetsupirred.md) | 186 | `declaration-track:13916218a7308ee904746276511edb742b2b4d211ae3f283d98668ce5c66e3c6` |
| 18 | `def` | [birkhoffSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/birkhoffset.md) | 209 | `declaration-track:206d7c3f89aaffcdfa1e3fb20ad533eb814666e7151baf050ddf622c87921a45` |
| 19 | `def` | [birkhoffFinset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/birkhofffinset.md) | 218 | `declaration-track:8ec8bd983ef95909ffbad5a8164f59c066a4e729aa96a2fc8afaa68942312ea3` |
| 20 | `lemma` | [coe_birkhoffFinset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/coe-birkhofffinset.md) | 221 | `result-track:c11bc808460c2742824bfd652fd126410bfa8c4789a6d1805d97c5d873c5a648` |
| 21 | `lemma` | [birkhoffSet_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/birkhoffset-sup.md) | 229 | `result-track:bfc521e7dcbadc66dcc8f875ca6c42b71ec906d952bd5df288b7567c3d6eead2` |
| 22 | `lemma` | [birkhoffSet_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/birkhoffset-inf.md) | 232 | `result-track:b4c57bbdb5dbf1bd603ebc23d9e1b28c3af690a0d9c62796704f3fb81a03d5a6` |
| 23 | `lemma` | [birkhoffSet_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/birkhoffset-apply.md) | 235 | `result-track:c2aadf851844c3e36db255c4ee5a7bf4790a1c547f6fc2451bce67f6de010a41` |
| 24 | `lemma` | [birkhoffFinset_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/birkhofffinset-sup.md) | 241 | `result-track:223169d26f1ae133792e5eb93cadb93ee8211f62dafc971cbda45c88f9dacfc4` |
| 25 | `lemma` | [birkhoffFinset_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/birkhofffinset-inf.md) | 248 | `result-track:b506022482175adc71a13ea1e818fd6395189bf75b7389818b18c0a300010a95` |
| 26 | `def` | [birkhoffSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/birkhoffset-source-edition-2.md) | 261 | `declaration-track:5183e63c35bb9f190ed9f6701a70bcb63c26cbeb446630519fb3d6cdfc5718e9` |
| 27 | `def` | [birkhoffFinset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/birkhofffinset-source-edition-2.md) | 269 | `declaration-track:e03ffc38da49c337daae0f81b3a9f574dc1f2f85e5bb403b6f4c3600c6e8110d` |
| 28 | `lemma` | [birkhoffFinset_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/birkhofffinset-injective.md) | 274 | `result-track:3a1347f8e1eef56b31aaaafcf1aa70ae3484715d321f684c6d0f8f7dbd42695d` |
| 29 | `lemma` | [exists_birkhoff_representation.](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Birkhoff.lean/declarations/exists-birkhoff-representation.md) | 279 | `result-track:307dc6b2452ca21897c4ba3bc9204769589da420081b848f3e1cca1cd45a56e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7342c4be0f9d1686c63213a324668e13aad1c28231d596aedbd66fc9c4ca4a57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
