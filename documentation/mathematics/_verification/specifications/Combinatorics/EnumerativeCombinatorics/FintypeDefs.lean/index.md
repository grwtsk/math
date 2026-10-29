# Verification target: Fintype Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6100d7b7d77f9bc1e31fbd335fde18488eb6d7eb",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantbdfb39caf87b9b1f88e00893f56eab25376dd92ddc4df979f526e8cff2b3686d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6100d7b7d77f9bc1e31fbd335fde18488eb6d7eb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantbdfb39caf87b9b1f88e00893f56eab25376dd92ddc4df979f526e8cff2b3686d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variantbdfb39caf87b9b1f88e00893f56eab25376dd92ddc4df979f526e8cff2b3686d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Filter` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/fintype.md) | 52 | `declaration-track:afe2aa9d6b24c2fef82319b26da6b13bbd511f5b228a51bf790afc0dd8f36016` |
| 2 | `theorem` | [nodup_map_iff_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/nodup-map-iff-injon.md) | 62 | `result-track:b7731c0f98719700966880b0692562d9ba98362ede5b3e6d83b8685ee564b237` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/instance-source-edition-3.md) | 72 | `declaration-track:eb0740e731b60d1d7c13de86deab18df9c053ec3cc0ce74f60d8e993b72669e4` |
| 4 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/instance-source-edition-2.md) | 76 | `declaration-track:bba2db0c6a40a8d8292a40803e9f700f55c879cf865d8df9fb4bfeef2060dec7` |
| 5 | `def` | [univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/univ.md) | 87 | `declaration-track:89032346bb4abd55228cf1da8278e5c7c2638334f11730c8e6b56bb63e4fc1b0` |
| 6 | `theorem` | [mem_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/mem-univ.md) | 91 | `result-track:d95b4fc04c6921555ae1d06cd00c497645126529a9731c6888f28400dbccd15b` |
| 7 | `theorem` | [mem_univ_val](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/mem-univ-val.md) | 94 | `result-track:3362e517e96cd62a72e53224298cb889f80f6314f349b94b8d9249cbc7d9d744` |
| 8 | `theorem` | [eq_univ_iff_forall](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/eq-univ-iff-forall.md) | 96 | `result-track:2e8e6fd5c4a224029d15d58320742beca09333c96f4caca49a71e95eeb8a05c2` |
| 9 | `theorem` | [eq_univ_of_forall](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/eq-univ-of-forall.md) | 98 | `result-track:b795c7628d532a4be15195b94dfa2a0d6a5b7af5764706e4793bc7424f71998c` |
| 10 | `theorem` | [coe_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/coe-univ.md) | 102 | `result-track:b342b7e06d3631cd9a04e09b541eba956b4f2e56c704bb70890fcbaf54b1e7b3` |
| 11 | `theorem` | [coe_eq_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/coe-eq-univ.md) | 105 | `result-track:3ce2b986506c6327786e6a42fda7c478b514fbe61695ac8df0e1c02549a2a41f` |
| 12 | `theorem` | [subset_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/subset-univ.md) | 108 | `result-track:03fc1a2b2b185705a80fc85a75284f8e22b82068bddd340f13fb5cbdf19ee639` |
| 13 | `def` | [elabFinsetBuilderSetOf](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/elabfinsetbuildersetof.md) | 136 | `declaration-track:830a8d6fddcbb41d3ce0459886b61f4013791e3f89450752494907ac7cbf2ece` |
| 14 | `def` | [delabFinsetFilter](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/delabfinsetfilter.md) | 165 | `declaration-track:91b79c1b9551da05ac8459d74dbfef7e276137aa1404e8700109afe7cff57cf3` |
| 15 | `instance` | [decidablePiFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidablepifintype.md) | 197 | `declaration-track:456a425402f3079c7a5d1a9d94e8df55459b205e0cde897806381a61a3894704` |
| 16 | `instance` | [decidableForallFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidableforallfintype.md) | 202 | `declaration-track:c224beeac6d9cbf48e6a734e9001f16aa1942928dc9b36fb3f7c6fb2d234d4f8` |
| 17 | `instance` | [decidableExistsFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidableexistsfintype.md) | 206 | `declaration-track:bc6395e32cd2b8a191990f08f8bc3ee746226d8f3c20d6b2c30266ce34dca5b9` |
| 18 | `instance` | [decidableMemRangeFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidablememrangefintype.md) | 210 | `declaration-track:810afebcb9250f969ba1546319c2ced50d0b666fc0a1c864e77643b25432c4a3` |
| 19 | `instance` | [decidableSubsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidablesubsingleton.md) | 213 | `declaration-track:3fd04dbeebad697179143b486ad6ea5dbdd43f36d0c2898f20106047e00fd099` |
| 20 | `instance` | [decidableEqEquivFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidableeqequivfintype.md) | 218 | `declaration-track:0a737cd401bf90a9aef73cf3deb17a7dec35671b66ea67c5501c4e5d629dabbd` |
| 21 | `instance` | [decidableEqEmbeddingFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidableeqembeddingfintype.md) | 221 | `declaration-track:cf097ab9158f35ff40d154b1c659375b868b32020812de9a17a7daee5600a176` |
| 22 | `theorem` | [nodup_map_univ_iff_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/nodup-map-univ-iff-injective.md) | 226 | `result-track:9f1420ebf5362d4b2561f5ad89a28e8a9c8eccee450de38cbba4f9d003a73559` |
| 23 | `instance` | [decidableInjectiveFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidableinjectivefintype.md) | 230 | `declaration-track:4f94ed04c3eb71b145712b988ce6393422b965e42f8661aad5e798a2a515255a` |
| 24 | `instance` | [decidableSurjectiveFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidablesurjectivefintype.md) | 235 | `declaration-track:76e1a4c5a9ed3848f8c57edd3b00a02fecebed5183f0c42d58100ad0811367e5` |
| 25 | `instance` | [decidableBijectiveFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidablebijectivefintype.md) | 238 | `declaration-track:551e1156b215ab0707e977b68fc4cf2d3f5f363a553a164ca2da8682605be904` |
| 26 | `instance` | [decidableRightInverseFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidablerightinversefintype.md) | 241 | `declaration-track:62822d5b6a43aa8c0c0df3c07cfdd8ea5bbd8b8ec25c3c10e5b1c720c3a946c4` |
| 27 | `instance` | [decidableLeftInverseFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/decidableleftinversefintype.md) | 245 | `declaration-track:57dc15e439dac9206dff37e59bac92d0c00945022c37c4774913f86d38c355db` |
| 28 | `instance` | [subsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/subsingleton.md) | 249 | `declaration-track:9b456e9685bc40222b28f6d7916c8e455f9689203612a643bd8570565f8dfa67` |
| 29 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/instance.md) | 252 | `declaration-track:31b7abe083a842eeeca0a4b68dd1ef74d5cb6c1d209ee2375dd4ab19999a7009` |
| 30 | `def` | [subtype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/subtype.md) | 256 | `declaration-track:7b53a19221728eace7ef14e1668266b92ebf552484e20abcdc9e7db4e530cef0` |
| 31 | `def` | [ofFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/offinset.md) | 262 | `declaration-track:2dc9912d1610597d23e99f90f32e40083f32dee2fbfa3e1acf9cc04e93f6289a` |
| 32 | `instance` | [Bool.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/bool-fintype.md) | 267 | `declaration-track:3494ac767e4a939498d673f4732b7e2ebbcb06240f887c5b21f1a494959ae7af` |
| 33 | `instance` | [Ordering.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/ordering-fintype.md) | 270 | `declaration-track:dd6a39783ed8ff32f544caf5d28d925cdf1d43fe831eb28ff98942a7a2eaef81` |
| 34 | `instance` | [OrderDual.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/orderdual-fintype.md) | 273 | `declaration-track:db8ecdd9b7ff933c577b4d2e477b3aed2ba30968bbfabc5d9a10b4f4b52dae4d` |
| 35 | `instance` | [OrderDual.finite](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/orderdual-finite.md) | 276 | `declaration-track:0f24bb0ec3bf5bc7378d8318bde6b181c480eb5dd8c708bd7d9f0889cbcc69e9` |
| 36 | `instance` | [Lex.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefs.lean/declarations/lex-fintype.md) | 279 | `declaration-track:17973dd3346637a8c7a9202f96be22edadc9d3602bdd49a4e4a106ae1f39efc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b989d040f3552e6ae349609b52e7fdcbf1c3429b3650bcf4c31acca3a1e8279a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantbdfb39caf87b9b1f88e00893f56eab25376dd92ddc4df979f526e8cff2b3686d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Defs/Variantbdfb39caf87b9b1f88e00893f56eab25376dd92ddc4df979f526e8cff2b3686d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
