# Verification target: Big Operators Pi Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4338be8e4e895eccedb3694f65df1f8222809b43",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6b9fca0e6f928cf6cc6279ebe0c1b38d03c5157c1bd9cc209ba418d90a86a854.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4338be8e4e895eccedb3694f65df1f8222809b43`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6b9fca0e6f928cf6cc6279ebe0c1b38d03c5157c1bd9cc209ba418d90a86a854.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant6b9fca0e6f928cf6cc6279ebe0c1b38d03c5157c1bd9cc209ba418d90a86a854.lean.json)

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
| 1 | `theorem` | [list_prod_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/list-prod-apply.md) | 41 | `result-track:848970df96e7b259dffcab881d1d25eddf564af0d464075e87df18bc7c12a3d7` |
| 2 | `theorem` | [multiset_prod_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/multiset-prod-apply.md) | 46 | `result-track:12f8c43792c575aefb4692212946fc6aa36be494385d5ac5bef64b014b8d3657` |
| 3 | `theorem` | [Finset.prod_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/finset-prod-apply.md) | 53 | `result-track:cac51e0427e685ba657ec26e59b3bc26c604b85aa2ffa92a6d6bdc1755ea8375` |
| 4 | `theorem` | [Finset.prod_fn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/finset-prod-fn.md) | 59 | `result-track:b69ed550cf497a9df56ecbdd8a7740e67f0c780f3365cc8bf4214c9a03584c4b` |
| 5 | `theorem` | [Fintype.prod_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/fintype-prod-apply.md) | 64 | `result-track:aafd4856896745c82cafc2dc48c937a08188962537295663fecd0e28bd2ebf9e` |
| 6 | `theorem` | [prod_mk_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/prod-mk-prod.md) | 69 | `result-track:16bce690ce50171114fc6a5aae0727268b7815b0498f0662e83ba4ee73084a04` |
| 7 | `theorem` | [pi_eq_sum_univ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/pi-eq-sum-univ.md) | 75 | `result-track:9490eb9e945fc42ac13e2e896872e929071f5654bd5b6a0a0a8d09185f8477c5` |
| 8 | `theorem` | [pi_eq_sum_univ'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/pi-eq-sum-univ-source-edition-2.md) | 81 | `result-track:ec85488644a9f7b4da4f92dfa2f02c33b2a87a3ec2199e924e6354d5470ddf57` |
| 9 | `lemma` | [prod_indicator_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/prod-indicator-apply.md) | 89 | `result-track:69922b189398ba401f30c073bbc60434742a4d05492be0c75ac2c3c46524d598` |
| 10 | `lemma` | [prod_indicator](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/prod-indicator.md) | 100 | `result-track:324a6c1a75f0ebca90a3928d7d1311d658086ad5bdf0d77506f5cae7fbdf2738` |
| 11 | `lemma` | [prod_indicator_const_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/prod-indicator-const-apply.md) | 104 | `result-track:37fae4fec4094f37ce0adb065b219d903fd4cf83bfe4d7d7ae3e0cea9528607e` |
| 12 | `lemma` | [prod_indicator_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/prod-indicator-const.md) | 108 | `result-track:0c704d20e1e5db5e27c6be6bc7566b8b4fdf3826643177209a6e3c58cf8d4dda` |
| 13 | `theorem` | [Finset.univ_prod_mulSingle](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/finset-univ-prod-mulsingle.md) | 119 | `result-track:87a2f3724642d54bf0b4ba85b79ad4a5a4561f0422b6f23b512874e7ec4b677b` |
| 14 | `theorem` | [MonoidHom.functions_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/monoidhom-functions-ext.md) | 125 | `result-track:6b4210f9fd1662f7eb09ea92e5da798abaaaebe7032fb1dc0134698e19e1f1b9` |
| 15 | `theorem` | [MonoidHom.functions_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/monoidhom-functions-ext-source-edition-2.md) | 137 | `result-track:beacdc8d0d62e53e8701e5a3d07cdf05b75a314ad038236b9480a126ab2c5765` |
| 16 | `theorem` | [RingHom.functions_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/ringhom-functions-ext.md) | 151 | `result-track:d4087221a09f42efbd3043450ffe85b11ecadd0d66362af3afc7e94676b1644a` |
| 17 | `theorem` | [fst_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/fst-prod.md) | 163 | `result-track:e3a4dd6650fe5f10c2cb3b8de8d845787fe0c775694b3f8717565b47dd938d8f` |
| 18 | `theorem` | [snd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/snd-prod.md) | 167 | `result-track:b5a81bf05ed65b2823ff0b4b74940acc39e73b606e82f11e1f0a6702599e1850` |
| 19 | `def` | [Pi.monoidHomMulEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/pi-monoidhommulequiv.md) | 179 | `declaration-track:da37dcd4b08ceba5ed1760cdfc6db925bc26f0cdc4c4159d5fc5c26cf16a3a0e` |
| 20 | `lemma` | [Pi.single_induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/pi-single-induction.md) | 212 | `result-track:af05979f2da1f89a7988965f135f73f29376b8a98ed5f7b48381dad2265231c4` |
| 21 | `lemma` | [Pi.mulSingle_induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/pi-mulsingle-induction.md) | 220 | `result-track:797eedc1236c39c821d050b3f010ba81aa46f7ac1a9f7f0f3788c2a68869a2cf` |
| 22 | `theorem` | [eqOn_finsetProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/eqon-finsetprod.md) | 230 | `result-track:06caaf4c031d9745936610fac174a2016f88f6b68b024f6f834f816aae74f2a0` |
| 23 | `theorem` | [eqOn_fun_finsetProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/eqon-fun-finsetprod.md) | 236 | `result-track:549c2b833a27f76272c846579225e4dfc813a622bf6803f944471387856630ab` |
| 24 | `theorem` | [prod_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/prod-apply.md) | 249 | `result-track:d368723908da043122b18b6bbd8f313e1e9281f6e6718188e8e03d9b33475154` |
| 25 | `theorem` | [FunLike.coe_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/declarations/funlike-coe-prod.md) | 256 | `result-track:b04b9640a5a79dd520db42aca298b72b5e4a2e34611b65111a3314c628961b11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d496902d9afac786b25ac8145e3ec80477ce1edb2d1d240224f132c6942dfd75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6b9fca0e6f928cf6cc6279ebe0c1b38d03c5157c1bd9cc209ba418d90a86a854.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Pi/Variant6b9fca0e6f928cf6cc6279ebe0c1b38d03c5157c1bd9cc209ba418d90a86a854.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
