# Verification target: Multiset Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e6abba6ea846b4dbfd1e2caa552bb65cd81c4b8",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Multiset/Variant0e4de979b807ab4e4931915420e9a6736f510d5b6c51616e4df0a0f38292f421.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e6abba6ea846b4dbfd1e2caa552bb65cd81c4b8`.

Source path: `GRWTSK/Algebra/Multiset/Variant0e4de979b807ab4e4931915420e9a6736f510d5b6c51616e4df0a0f38292f421.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Multiset/Variant0e4de979b807ab4e4931915420e9a6736f510d5b6c51616e4df0a0f38292f421.lean.json)

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
| 1 | `lemma` | [one_le_prod_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/one-le-prod-of-one-le.md) | 40 | `result-track:aa9fa7240ed96f98ef42f2c289845a5ae1783ade6c1cdf795c14e9768e4c06ca` |
| 2 | `lemma` | [single_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/single-le-prod.md) | 44 | `result-track:5bf6233313a399aeb05b2660d18ee85a0aedec38837916375f4ca1dfb60b73b6` |
| 3 | `lemma` | [prod_le_pow_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/prod-le-pow-card.md) | 48 | `result-track:eadf01045c1a6243887ce930ea0c92ad1a707921f8e59ed9519804421ba04d9b` |
| 4 | `lemma` | [all_one_of_le_one_le_of_prod_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/all-one-of-le-one-le-of-prod-eq-one.md) | 54 | `result-track:498a769d9af0e6e898182d900652ac5dbb95ace44e1c28b97afe502b7d0eafab` |
| 5 | `lemma` | [prod_le_prod_of_rel_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/prod-le-prod-of-rel-le.md) | 62 | `result-track:f56ea9a6820710217285b43c4436e63ad7e65af519b029e0b87f1ae94264efec` |
| 6 | `lemma` | [prod_map_le_prod_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/prod-map-le-prod-map.md) | 70 | `result-track:ace1e48cb42592f9be39b3c4ce073552d83e566ae704c371a73974d9f0ac30d7` |
| 7 | `lemma` | [prod_map_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/prod-map-le-prod.md) | 75 | `result-track:87e47d4a3a3442a3326d71a8389f9ad463015dc2fc81da7507674284182576b2` |
| 8 | `lemma` | [prod_le_prod_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/prod-le-prod-map.md) | 80 | `result-track:c6c74a2fed2dc052318edd46d000c3fcbb993a2c9b70253985a622c98b82d970` |
| 9 | `lemma` | [pow_card_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/pow-card-le-prod.md) | 85 | `result-track:cfe111838ee87b9673df037925978c1abad0b36fe1db051df1bdbf26ff4a7fba` |
| 10 | `lemma` | [le_prod_of_submultiplicative_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/le-prod-of-submultiplicative-on-pred.md) | 95 | `result-track:93d523643fb9fdbef55ac3fb7a6f55fe35f384894c29d1962c61d46846307e29` |
| 11 | `lemma` | [le_prod_of_submultiplicative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/le-prod-of-submultiplicative.md) | 103 | `result-track:16304fa6b54e3a2fef49abcbe5581afe4569c59613422f392a100f265a8922dc` |
| 12 | `lemma` | [le_prod_nonempty_of_submultiplicative_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/le-prod-nonempty-of-submultiplicative-on-pred.md) | 109 | `result-track:43640d643e9482d97dc8f3368f2db5407d2ca2da5dc52005390993e7e9e87c54` |
| 13 | `lemma` | [le_prod_nonempty_of_submultiplicative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/le-prod-nonempty-of-submultiplicative.md) | 118 | `result-track:326e01b0bb8bc73a942be445f834cf136aa796294714e34259be026762783358` |
| 14 | `lemma` | [prod_lt_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/prod-lt-prod.md) | 130 | `result-track:ca7f657681d71f30117396ccad13de0d23ace1bee7907bfd81d40c02d2bf3d3d` |
| 15 | `lemma` | [prod_lt_prod_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/prod-lt-prod-of-nonempty.md) | 139 | `result-track:fc7db145d5798b68fb05ea6caff18ca0a0681d1a9810d83c93e96c5bbe1159da` |
| 16 | `lemma` | [prod_eq_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/prod-eq-one-iff.md) | 151 | `result-track:478692e3251d227fbfecfd27bd6e9f4c52e35c42ce4287843bb679c1860ce7a4` |
| 17 | `lemma` | [le_prod_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/le-prod-of-mem.md) | 155 | `result-track:1eac487e711b6d87cf325bb69ba9092870da486eb56da4303c5c445a370f66ea` |
| 18 | `lemma` | [max_le_of_forall_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/max-le-of-forall-le.md) | 163 | `result-track:899d8eee109440dcf39809a165718296d707a73b45e39515539b9c7396344cdb` |
| 19 | `lemma` | [max_prod_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/max-prod-le.md) | 169 | `result-track:b06aac6b04798c3a5771852d449f6a5a997689f802fd3c3fe8efc60056074a4a` |
| 20 | `lemma` | [prod_min_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/prod-min-le.md) | 177 | `result-track:cfe44e924aec3c6f61416c26b4ebc2c53d29404c9fac77be2552e15b7eaff990` |
| 21 | `lemma` | [abs_sum_le_sum_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/abs-sum-le-sum-abs.md) | 184 | `result-track:a6eecf9e95fc9988266eb90b683bd9171dbc7e5260ccf2bb66309ffd2f24046a` |
| 22 | `lemma` | [apply_prod_le_sum_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/apply-prod-le-sum-map.md) | 192 | `result-track:ab3c7d0814764cc16e8d98cc521a63fdd1416903a13cde5fe25ba6d4dcc7c73d` |
| 23 | `lemma` | [sum_map_le_apply_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetNamespacedPublic.lean/declarations/sum-map-le-apply-prod.md) | 197 | `result-track:cb6459e45b5ab95530863535fa3f80099b24e376cc281af28b0f607563ed3a4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83e28648a9185225283b992678d9df25577efecb8e1c8ca5aa3c73e0bea83052 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Multiset/Variant0e4de979b807ab4e4931915420e9a6736f510d5b6c51616e4df0a0f38292f421.lean","GRWTSK/_verification/specifications/Algebra/Multiset/Variant0e4de979b807ab4e4931915420e9a6736f510d5b6c51616e4df0a0f38292f421.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
