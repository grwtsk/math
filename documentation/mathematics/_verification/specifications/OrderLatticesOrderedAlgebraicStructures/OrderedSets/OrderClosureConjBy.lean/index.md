# Verification target: Order Closure Conj By

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "402bc70d553c123cdef94619351bdc8b9748eb46",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantb1cbc178b596d23283c3541ad828f45b05368e5bf6c2a6425c2d438d434421a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `402bc70d553c123cdef94619351bdc8b9748eb46`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantb1cbc178b596d23283c3541ad828f45b05368e5bf6c2a6425c2d438d434421a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantb1cbc178b596d23283c3541ad828f45b05368e5bf6c2a6425c2d438d434421a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.BooleanAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closureoperator.md) | 56 | `declaration-track:081c1623e7dcdf2957b3082c98e3fa45a316941de04df3119a5f8d6ef2cd3caa` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/instance-source-edition-5.md) | 70 | `declaration-track:f8bd9517df7e27008ad5ca81893d8552c59f93623b24ec82250e1752576eb817` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/instance-source-edition-4.md) | 74 | `declaration-track:927cb43065314e84be5c4e8812946b60c9cd31a0f9e27b1c2150935308d97647` |
| 4 | `def` | [conjBy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/conjby.md) | 83 | `declaration-track:82a93d061e0e0aecea7ffe1532d953315de56b7a2be781468c9cbd3ae0cbd75c` |
| 5 | `lemma` | [conjBy_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/conjby-refl.md) | 94 | `result-track:c7871277d8967d79b16bb560006bef4593f1fe5080a55ce9e2e58e4b008b4135` |
| 6 | `lemma` | [conjBy_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/conjby-trans.md) | 97 | `result-track:d5b7fb6f416cf40bb53741a28e70419850f8dc7a9201b43bc3927ecddbfd170e` |
| 7 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/id-source-edition-2.md) | 107 | `declaration-track:f0942fec65415ae3c3c092ca28a37df6a7e1c4744f8000e662bce3e84cb9f4e3` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/instance.md) | 113 | `declaration-track:01f19c9cf2ceb6206a8508933aa73db95b509f59df6eb3dce2007b27f3389e5e` |
| 9 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/ext.md) | 120 | `result-track:2b90a4f82e2959b412e189acd1affa24249210343b0b8cd3c38cbebe314f8e5f` |
| 10 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/mk-source-edition-2.md) | 125 | `declaration-track:7fd05c795b9d3cc1bc29923b0286d3ae839dd8771e2b6e6eb3e18636174b5579` |
| 11 | `def` | [mk₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/mk.md) | 135 | `declaration-track:7ad03b6c9932dab4bf45058480bf47caa099d1cc04a2401ba2624d74c3a685e0` |
| 12 | `def` | [ofPred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/ofpred.md) | 145 | `declaration-track:5bf6ad9d06518bcd8dde75d866be2bf28db08d3569c8737fdae74280709d7596` |
| 13 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/monotone-source-edition-2.md) | 152 | `result-track:59b65afe49e608b6cb394a7b6fd123d1412a769054082166fe9c3745b6ae206d` |
| 14 | `theorem` | [le_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/le-closure-source-edition-2.md) | 157 | `result-track:5761a0f72433ac8f7a3a3a4dff6ffec838cc67459a2e12f70063a9343b13f373` |
| 15 | `theorem` | [idempotent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/idempotent.md) | 161 | `result-track:86c513ecb1d1772c4a628c773f237c761eca6ba7dd50239b00d5271c1591cd12` |
| 16 | `lemma` | [isClosed_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/isclosed-closure.md) | 164 | `result-track:3c3174f0bf21d7ff716400f3eb936863528aee95656e95e706adc0c52c780a33` |
| 17 | `abbrev` | [Closeds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closeds.md) | 167 | `declaration-track:41241fcdb6dae92d178ecd0cf8d42de489dfdb2989a8db98777997aa9f4088c7` |
| 18 | `def` | [toCloseds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/tocloseds.md) | 170 | `declaration-track:fd0845fe52cbc7e4ea759e05bfff254552520f39016768ba4b4bba115c5e1837` |
| 19 | `theorem` | [IsClosed.closure_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/isclosed-closure-eq.md) | 174 | `result-track:d57df6a0932e098546411ef21852d07b1373ae1c7c577121263fc2f67e4a7411` |
| 20 | `theorem` | [isClosed_iff_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/isclosed-iff-closure-le.md) | 176 | `result-track:545ed526f90aa04e54b8ff6f4e19f077e28e517846b5e941aa90bb6f99a1b86f` |
| 21 | `theorem` | [setOf_isClosed_eq_range_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/setof-isclosed-eq-range-closure.md) | 180 | `result-track:a494a86091af1ce8f64882bfc616af83df8b535daadcec5f6cf8221d168cd9a2` |
| 22 | `theorem` | [le_closure_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/le-closure-iff.md) | 183 | `result-track:8494e90692cb375a72a4adfd14879825ebf9d3b8a7652c946624ec85ec74bdc2` |
| 23 | `theorem` | [IsClosed.closure_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/isclosed-closure-le-iff.md) | 187 | `result-track:052a17d529fbd488e388c61fd965d2926a62552ec07c75e72b934e739e9cf428` |
| 24 | `lemma` | [closure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-min.md) | 190 | `result-track:ff7389689df6f904cb6bed18e2a159f5b8602c1f2967c0466078e752633d3f61` |
| 25 | `lemma` | [closure_isGLB](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-isglb.md) | 192 | `result-track:31eb91aac0351d24e520ca5698965f3adb1df0e675ac9769d9015df7e9e90ae5` |
| 26 | `theorem` | [ext_isClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/ext-isclosed.md) | 196 | `result-track:47451b86fba55a3374c2a4138a97fde22dc2210b79138025660f4fbe0abf6b0e` |
| 27 | `theorem` | [eq_ofPred_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/eq-ofpred-closed.md) | 203 | `result-track:75b3c0d61083a12e94c4d8661ff1b68701b6ead1b6b824c860c43fb1b29f9e28` |
| 28 | `theorem` | [closure_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-top.md) | 217 | `result-track:75293927d39d11b148251392b969561f7f07fa73afda0b1e7eaa296c175c0f03` |
| 29 | `lemma` | [isClosed_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/isclosed-top.md) | 220 | `result-track:6b611c3094c87bfb3b19b19707ba89b388bff77254798deddb6690fd6892495a` |
| 30 | `theorem` | [closure_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-inf-le.md) | 224 | `result-track:6c3ffe4b9a85d834f04cb1b4c4df723cc58e008fe0760a57f2d9fd1b1e50e27d` |
| 31 | `theorem` | [closure_sup_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-sup-closure-le.md) | 232 | `result-track:5202cda8d24d33e967a11580a35e8792de16014c2a4d35e767c4d57098aa7603` |
| 32 | `theorem` | [closure_sup_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-sup-closure-left-source-edition-2.md) | 235 | `result-track:a9d79e658dbd835541ec30bbf6a4b86beba077ca0392198b1b490589a34ab4ec` |
| 33 | `theorem` | [closure_sup_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-sup-closure-right-source-edition-2.md) | 240 | `result-track:85d87cc914ba87e239e2e2ad49b72c8fa7c5f6600da3a218510ae4306f17a78e` |
| 34 | `theorem` | [closure_sup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-sup-closure.md) | 243 | `result-track:162e5c829da53b95f19ec6e54c85f9facb501c06514e3351cf7f9d89c2e901cd` |
| 35 | `def` | [ofCompletePred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/ofcompletepred.md) | 254 | `declaration-track:91587882e59dbe4abf6a6ab434f90e7aec7f985f59ec2395c244fe8e7a1d8615` |
| 36 | `theorem` | [sInf_isClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/sinf-isclosed.md) | 260 | `result-track:ffcdfce8e7e3f932fb7702bfaf2839d9dd09d36bbb5e080d7e27a1657d236aca` |
| 37 | `theorem` | [closure_iSup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-isup-closure-source-edition-2.md) | 266 | `result-track:5de22d040a485c98429bc8b05883ef7e8cc3cfba3859a7bcab8cf68c6d4d549c` |
| 38 | `theorem` | [closure_iSup₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-isup-closure-source-edition-3.md) | 271 | `result-track:b3cb218610740b4f8ceadb86386fd5b482eda99ba7f449911c87599923882e0b` |
| 39 | `def` | [OrderIso.equivClosureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/orderiso-equivclosureoperator.md) | 283 | `declaration-track:58b2913eeff36448ce943bf26ee375d69c963732cc4a0b1838113183c509f9ff` |
| 40 | `structure` | [LowerAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/loweradjoint.md) | 300 | `declaration-track:ead97052f1d0f344beb4b548ffc63c99989602558096ab0884d7b9f644a03d54` |
| 41 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/id.md) | 312 | `declaration-track:83aa8cf06abdaa95de9300390efcec45c7622dafbe81c1ef7535a49ca4037800` |
| 42 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/instance-source-edition-3.md) | 318 | `declaration-track:8bf8c1ec8e27bdfe620964b462812589dc8446e07236b49e4edbe249ae83c43c` |
| 43 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/instance-source-edition-2.md) | 325 | `declaration-track:6c80e59da710e52aea5b361d1cceaf8da843a6fd3ae4337a9ff5e1d4b715af6e` |
| 44 | `theorem` | [gc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/gc.md) | 327 | `result-track:2c9cec90f54cfdf798d8610adba844a9f419ccdcc5ec6a63816c01c171f0a026` |
| 45 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/ext-source-edition-2.md) | 331 | `result-track:662dccbdac424175f49d4ed5f6c55b7e6275eced43b9fd0f4b7d48d8d0bd887e` |
| 46 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/monotone.md) | 336 | `result-track:25c5a0c76c5bff808330a67d6f2183fd2873278dc214b48b7bd627a349464ab8` |
| 47 | `theorem` | [le_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/le-closure.md) | 341 | `result-track:1e777f018b2cdd50ae1e5d0819a4330fa8e609040dd8f68afa5a3345e894bc02` |
| 48 | `def` | [closureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closureoperator-source-edition-2.md) | 353 | `declaration-track:443a02cf65d2e280342a896f92b817262522cee6bc84f17bcb93d244fa39d0e3` |
| 49 | `theorem` | [idempotent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/idempotent-source-edition-2.md) | 359 | `result-track:9df61143cc74d94d33daff0d0dc1475da4145c53f84e68f5f133bd54dd1bf20b` |
| 50 | `theorem` | [le_closure_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/le-closure-iff-source-edition-2.md) | 362 | `result-track:a4e5f3a6dbdd4ed87f219827bafa6695a9b348f3c2ff186826b8f4223fdf1a6d` |
| 51 | `def` | [closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closed.md) | 372 | `declaration-track:b83c52508f15d008fbcf101c17def4b6a7f484a9eec721ba5076b5acfc00e146` |
| 52 | `theorem` | [mem_closed_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/mem-closed-iff.md) | 374 | `result-track:8f9c563dae61e71d3fb15dc0d25c0ecf28df66a72e4e92c1e576652c31ff5d7a` |
| 53 | `theorem` | [closure_eq_self_of_mem_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-eq-self-of-mem-closed.md) | 377 | `result-track:9f2e16ffc0022865e97f6632ed0e46205adcece676c5f0ca6e777439baa21610` |
| 54 | `theorem` | [mem_closed_iff_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/mem-closed-iff-closure-le.md) | 386 | `result-track:df72cd587d0fe11c964f1b2df4a078f06f8cf91c09e2e9d8ccd3d48c2ab71ab4` |
| 55 | `theorem` | [closure_is_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-is-closed.md) | 390 | `result-track:510c0f37a3c727c63795a540fdd1076625253272c3b19b264ea2e90d2ea31485` |
| 56 | `theorem` | [closed_eq_range_close](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closed-eq-range-close.md) | 394 | `result-track:f984c975569d109343117c04e2d1c71dbbaabc1bc30bdb93035d8f3429450559` |
| 57 | `def` | [toClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/toclosed.md) | 398 | `declaration-track:c9422721a53e8ac8e160b184fefd777cf3a49c67902de32329e40995cfb8db6e` |
| 58 | `theorem` | [closure_le_closed_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-le-closed-iff-le.md) | 402 | `result-track:2d9b45b47764b4641afb331fe4a8c28e5b09d665efa5fd5d77887abf4e30547b` |
| 59 | `theorem` | [closure_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-top-source-edition-2.md) | 407 | `result-track:ebf743f81c015d70e05c294fdcbc86eee4dba25a8157619ba1e9aa160a927436` |
| 60 | `theorem` | [closure_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-inf-le-source-edition-2.md) | 411 | `result-track:c36ede6b32189994b9fc7b0a122388079e283c8d0a88a0dcebc3730fbf44827d` |
| 61 | `theorem` | [closure_sup_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-sup-closure-le-source-edition-2.md) | 419 | `result-track:895ac8e41d3bb36df15e3ef84479eee6b4a58e3713b6a4a2d7f55daf10e092c4` |
| 62 | `theorem` | [closure_sup_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-sup-closure-left.md) | 422 | `result-track:3037af85123dde16e6782f4c116b662e493e154971f3d79213e0db93b4f263ef` |
| 63 | `theorem` | [closure_sup_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-sup-closure-right.md) | 425 | `result-track:50515f549fb5c8ac848121c472415d93133b53df29413636d0e1b224164ffbf4` |
| 64 | `theorem` | [closure_sup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-sup-closure-source-edition-2.md) | 428 | `result-track:43453efcc34b8627c6ed7d990f9d2635a7670612d5a9a65b6af6da65d308a2d5` |
| 65 | `theorem` | [closure_iSup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-isup-closure.md) | 437 | `result-track:1f895108f7fb650ab5de21a964654497d08d4b1cd2a20ddd66272017bc85c88f` |
| 66 | `theorem` | [closure_iSup₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-isup-closure-source-edition-4.md) | 440 | `result-track:df2751537fdb0fb86da79a25de40c76662a47fde9500abb459b0fdf1e16a8048` |
| 67 | `theorem` | [subset_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/subset-closure.md) | 451 | `result-track:7c4c52b040bc93006baff4d3f5e5146f6dc41e50ed6204c68b667ca521dcc5b7` |
| 68 | `theorem` | [notMem_of_notMem_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/notmem-of-notmem-closure.md) | 454 | `result-track:39ca019cf37a821c82843aef25ace150706b6c0e8cdabacc73d3b56b1e68aec0` |
| 69 | `theorem` | [le_iff_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/le-iff-subset.md) | 459 | `result-track:facf31ec088144d4f0e03d393b2d1de7f1bb7d970827929e6c2f6657ae85b37b` |
| 70 | `theorem` | [mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/mem-iff.md) | 462 | `result-track:5ae4f5f19e532a817921464dcd16488663635d89e52facf8ae4df8416aabae36` |
| 71 | `theorem` | [eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/eq-of-le.md) | 466 | `result-track:3c91d95ffeef9f109eae28b939e14b01e04486e68ae576fe140c1f76d6abfdf2` |
| 72 | `theorem` | [closure_union_closure_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-union-closure-subset.md) | 469 | `result-track:0e29aaf3d347d7a3f59b49e28ba3874a47111f6ea38ae45157e27876e3a13557` |
| 73 | `theorem` | [closure_union_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-union-closure-left.md) | 473 | `result-track:df20a40a95d78e05b25308635498c8dc72983aa188923373e80c4b180c14aea4` |
| 74 | `theorem` | [closure_union_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-union-closure-right.md) | 477 | `result-track:da01efff0d34e4a51ac9526f1d7797ebff98881205a6461cae8a06b3d0b33051` |
| 75 | `theorem` | [closure_union_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-union-closure.md) | 480 | `result-track:61a32424c5131f66fb7a37ab8da8f736d00339c862846a4a71b9dac45a1babde` |
| 76 | `theorem` | [closure_iUnion_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-iunion-closure-source-edition-2.md) | 484 | `result-track:f39eee985a2acc0964e55df46dc42af303657660d90d98b6b2ed5b927ebdc241` |
| 77 | `theorem` | [closure_iUnion₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closure-iunion-closure.md) | 488 | `result-track:5911ea4ff03f77263094281c5d6a8dcf396d0f6ebf188a29aa7b4350abe10b5e` |
| 78 | `def` | [GaloisConnection.lowerAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/galoisconnection-loweradjoint.md) | 500 | `declaration-track:929e03825d915cc38140d284415a44364f09d3195a131b21259f6b811382ea36` |
| 79 | `def` | [GaloisConnection.closureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/galoisconnection-closureoperator.md) | 508 | `declaration-track:6dce33380b505708a3933dfbaff032e786c3509b2473af40aaa6cf21870e9014` |
| 80 | `def` | [ClosureOperator.gi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closureoperator-gi.md) | 513 | `declaration-track:bf6a2d8cac41e59de0211943e10990d9c990dcbd6ecf53396cbf7d4a41b65b4d` |
| 81 | `theorem` | [closureOperator_gi_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureConjBy.lean/declarations/closureoperator-gi-self.md) | 524 | `result-track:21827d6c4dad2b772058aba5d23914606f08381c02db80edcb924c768c02927c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15d2c06e552a364937d5164bf97a2370e1f352f566a19968c6c2f211d61508e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantb1cbc178b596d23283c3541ad828f45b05368e5bf6c2a6425c2d438d434421a9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/Variantb1cbc178b596d23283c3541ad828f45b05368e5bf6c2a6425c2d438d434421a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
